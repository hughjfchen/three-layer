#!/usr/bin/env bash
if ! type dirname > /dev/null 2>&1; then
    echo "Not even a linux or macOS, Windoze? We don't support it. Abort."
    exit 1
fi

. "$(dirname "$0")"/../../../common/common.sh

init_with_root_or_sudo "$0"

begin_banner "three-layer" "deploy prepare"

if [ -e ${SCRIPT_ABS_PATH}/../../../../../ci ]; then
  SOURCE_ABS_PATH=${SCRIPT_ABS_PATH}/../../../../..
else
  SOURCE_ABS_PATH=${SCRIPT_ABS_PATH}/../../../..
fi
if [ ! -L ${SOURCE_ABS_PATH}/result ]; then
    warn "no three-layer build result found, suppose that the image would be pull from registry"
else
    LOCAL_IMAGE_LOAD_RESULT=$(sudo sg docker -c "docker load -i ${SOURCE_ABS_PATH}/result")
    LOCAL_IMAGE_TAG=$(echo ${LOCAL_IMAGE_LOAD_RESULT} | awk -F"image: " '{print $NF}')
    info "local image tag: ${LOCAL_IMAGE_TAG}"
    info "tagging the image as three-layer/${LOCAL_IMAGE_TAG}"
    sudo sg docker -c "docker tag ${LOCAL_IMAGE_TAG} three-layer/${LOCAL_IMAGE_TAG}"
    info "pushing the tag three-layer/${LOCAL_IMAGE_TAG} to docker.io hub"
    sudo sg docker -c "docker login -u \"${three-layer_DOCKER_HUB_USERNAME}\" -p \"${three-layer_DOCKER_HUB_PASSWORD}\""
    sudo sg docker -c "docker push three-layer/${LOCAL_IMAGE_TAG}"
fi

set +e
myGroup2=$(awk -F":" '{print $1}' /etc/group | grep -w three-layer)
set -e
if [ "X${myGroup2}" = "X" ]; then
    info "no three-layer group defined yet, create it..."
    sudo groupadd -f --gid 90001 three-layer
fi

set +e
myUser2=$(awk -F":" '{print $1}' /etc/passwd | grep -w three-layer)
set -e
if [ "X${myUser2}" = "X" ]; then
    info "no three-layer user defined yet, create it..."
    sudo useradd -G docker -m -p Passw0rd --uid 90001 --gid 90001 three-layer
fi

if [ ! -d /var/three-layer ]; then
    info "no /var/three-layer directory found, create it..."
    sudo mkdir -p /var/three-layer/data
    sudo mkdir -p /var/three-layer/config
    sudo chown -R three-layer:three-layer /var/three-layer
fi

sudo cp ${SCRIPT_ABS_PATH}/docker-compose.yml /var/three-layer/docker-compose-three-layer.yml.orig
sudo chown three-layer:three-layer /var/three-layer/docker-compose-three-layer.yml.orig

sudo sed "s:three-layer_config_path:/var/three-layer/config:g" < /var/three-layer/docker-compose-three-layer.yml.orig | sudo su -p -c "dd of=/var/three-layer/docker-compose-three-layer.yml.01" three-layer 
sudo sed "s:three-layer_data_path:/var/three-layer/data:g" < /var/three-layer/docker-compose-three-layer.yml.01 | sudo su -p -c "dd of=/var/three-layer/docker-compose-three-layer.yml.02" three-layer
sudo sed "s/DOCKER_HUB_IMAGE_TAG/three-layer\/${LOCAL_IMAGE_TAG}/g" < /var/three-layer/docker-compose-three-layer.yml.02 | sudo su -p -c "dd of=/var/three-layer/docker-compose-three-layer.yml" three-layer

done_banner "three-layer" "deploy prepare"
