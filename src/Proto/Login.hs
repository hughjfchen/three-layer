{- This file was auto-generated from login.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Login (LoginRequest(), LoginResponse()) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism
       as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes
       as Data.ProtoLens.Encoding.Bytes
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing
       as Data.ProtoLens.Encoding.Growing
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe
       as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire
       as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field
       as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding
       as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic
       as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed
       as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read

{- | Fields :

    * 'Proto.Login_Fields.email' @:: Lens' LoginRequest Data.Text.Text@
    * 'Proto.Login_Fields.password' @:: Lens' LoginRequest Data.Text.Text@
 -}
data LoginRequest = LoginRequest{_LoginRequest'email ::
                                 !Data.Text.Text,
                                 _LoginRequest'password :: !Data.Text.Text,
                                 _LoginRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoginRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoginRequest "email"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LoginRequest'email
               (\ x__ y__ -> x__{_LoginRequest'email = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField LoginRequest "password"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LoginRequest'password
               (\ x__ y__ -> x__{_LoginRequest'password = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message LoginRequest where
        messageName _ = Data.Text.pack "LoginRequest"
        fieldsByTag
          = let email__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "email"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"email"))
                      :: Data.ProtoLens.FieldDescriptor LoginRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"password"))
                      :: Data.ProtoLens.FieldDescriptor LoginRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, email__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LoginRequest'_unknownFields
              (\ x__ y__ -> x__{_LoginRequest'_unknownFields = y__})
        defMessage
          = LoginRequest{_LoginRequest'email = Data.ProtoLens.fieldDefault,
                         _LoginRequest'password = Data.ProtoLens.fieldDefault,
                         _LoginRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     LoginRequest ->
                       Prelude.Bool ->
                         Prelude.Bool -> Data.ProtoLens.Encoding.Bytes.Parser LoginRequest
                loop x required'email required'password
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing
                                  = (if required'email then (:) "email" else Prelude.id)
                                      ((if required'password then (:) "password" else Prelude.id)
                                         [])
                              in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "email"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"email") y
                                              x)
                                           Prelude.False
                                           required'password
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "password"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"password")
                                              y
                                              x)
                                           required'email
                                           Prelude.False
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             required'email
                                             required'password
              in
              (do loop Data.ProtoLens.defMessage Prelude.True Prelude.True)
                Data.ProtoLens.Encoding.Bytes.<?> "LoginRequest"
        buildMessage
          = (\ _x ->
               ((Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                  (((\ bs ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                         Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                     Prelude.. Data.Text.Encoding.encodeUtf8)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"email") _x))
                 Data.Monoid.<>
                 ((Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                    (((\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                       Prelude.. Data.Text.Encoding.encodeUtf8)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"password") _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData LoginRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_LoginRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_LoginRequest'email x__)
                    (Control.DeepSeq.deepseq (_LoginRequest'password x__) (()))))
{- | Fields :

    * 'Proto.Login_Fields.token' @:: Lens' LoginResponse Data.Text.Text@
 -}
data LoginResponse = LoginResponse{_LoginResponse'token ::
                                   !Data.Text.Text,
                                   _LoginResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoginResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoginResponse "token"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LoginResponse'token
               (\ x__ y__ -> x__{_LoginResponse'token = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message LoginResponse where
        messageName _ = Data.Text.pack "LoginResponse"
        fieldsByTag
          = let token__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "token"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"token"))
                      :: Data.ProtoLens.FieldDescriptor LoginResponse
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, token__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LoginResponse'_unknownFields
              (\ x__ y__ -> x__{_LoginResponse'_unknownFields = y__})
        defMessage
          = LoginResponse{_LoginResponse'token = Data.ProtoLens.fieldDefault,
                          _LoginResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     LoginResponse ->
                       Prelude.Bool -> Data.ProtoLens.Encoding.Bytes.Parser LoginResponse
                loop x required'token
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing
                                  = (if required'token then (:) "token" else Prelude.id) []
                              in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "token"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"token") y
                                              x)
                                           Prelude.False
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             required'token
              in
              (do loop Data.ProtoLens.defMessage Prelude.True)
                Data.ProtoLens.Encoding.Bytes.<?> "LoginResponse"
        buildMessage
          = (\ _x ->
               ((Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                  (((\ bs ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                         Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                     Prelude.. Data.Text.Encoding.encodeUtf8)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"token") _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData LoginResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_LoginResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_LoginResponse'token x__) (())))