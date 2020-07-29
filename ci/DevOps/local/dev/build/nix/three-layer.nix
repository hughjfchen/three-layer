{ mkDerivation, aeson, base-noprelude, bcrypt, bytestring
, case-insensitive, co-log, containers, ekg, ekg-core, elm-street
, hedgehog, hspec, hspec-core, http-api-data, http-types, jwt, lens
, mtl, postgresql-simple, postgresql-simple-named, proto-lens
, proto-lens-protoc, proto-lens-runtime, random, relude
, resource-pool, servant, servant-proto-lens, servant-server
, stdenv, text, time, tomland, unordered-containers, warp
}:
mkDerivation {
  pname = "three-layer";
  version = "0.0.0.0";
  src = /Users/chenjinfen/Desktop/projects/three-layer/./ci/DevOps/local/dev/build/../../../../..;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base-noprelude bcrypt bytestring case-insensitive co-log
    containers ekg ekg-core elm-street http-api-data http-types jwt
    lens mtl postgresql-simple postgresql-simple-named proto-lens
    proto-lens-protoc proto-lens-runtime random relude resource-pool
    servant servant-proto-lens servant-server text time tomland
    unordered-containers warp
  ];
  executableHaskellDepends = [ base-noprelude elm-street relude ];
  testHaskellDepends = [
    base-noprelude bcrypt ekg-core hedgehog hspec hspec-core mtl relude
    resource-pool unordered-containers
  ];
  homepage = "https://github.com/Holmusk/three-layer#readme";
  description = "Three layer cake Haskell implementation";
  license = stdenv.lib.licenses.bsd3;
}
