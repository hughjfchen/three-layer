{- This file was auto-generated from common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Common (Date(), Datetime(), Timestamp()) where
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

    * 'Proto.Common_Fields.year' @:: Lens' Date Data.Int.Int32@
    * 'Proto.Common_Fields.month' @:: Lens' Date Data.Int.Int32@
    * 'Proto.Common_Fields.day' @:: Lens' Date Data.Int.Int32@
 -}
data Date = Date{_Date'year :: !Data.Int.Int32,
                 _Date'month :: !Data.Int.Int32, _Date'day :: !Data.Int.Int32,
                 _Date'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Date where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Date "year" (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Date'year
               (\ x__ y__ -> x__{_Date'year = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Date "month"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Date'month
               (\ x__ y__ -> x__{_Date'month = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Date "day" (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Date'day
               (\ x__ y__ -> x__{_Date'day = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Date where
        messageName _ = Data.Text.pack "Date"
        fieldsByTag
          = let year__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "year"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"year"))
                      :: Data.ProtoLens.FieldDescriptor Date
                month__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "month"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"month"))
                      :: Data.ProtoLens.FieldDescriptor Date
                day__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "day"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"day"))
                      :: Data.ProtoLens.FieldDescriptor Date
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, year__field_descriptor),
                 (Data.ProtoLens.Tag 2, month__field_descriptor),
                 (Data.ProtoLens.Tag 3, day__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Date'_unknownFields
              (\ x__ y__ -> x__{_Date'_unknownFields = y__})
        defMessage
          = Date{_Date'year = Data.ProtoLens.fieldDefault,
                 _Date'month = Data.ProtoLens.fieldDefault,
                 _Date'day = Data.ProtoLens.fieldDefault,
                 _Date'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Date ->
                       Prelude.Bool ->
                         Prelude.Bool ->
                           Prelude.Bool -> Data.ProtoLens.Encoding.Bytes.Parser Date
                loop x required'day required'month required'year
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing
                                  = (if required'day then (:) "day" else Prelude.id)
                                      ((if required'month then (:) "month" else Prelude.id)
                                         ((if required'year then (:) "year" else Prelude.id) []))
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
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "year"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"year") y
                                             x)
                                          required'day
                                          required'month
                                          Prelude.False
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "month"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"month") y
                                              x)
                                           required'day
                                           Prelude.False
                                           required'year
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "day"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"day") y
                                              x)
                                           Prelude.False
                                           required'month
                                           required'year
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             required'day
                                             required'month
                                             required'year
              in
              (do loop Data.ProtoLens.defMessage Prelude.True Prelude.True
                    Prelude.True)
                Data.ProtoLens.Encoding.Bytes.<?> "Date"
        buildMessage
          = (\ _x ->
               ((Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                  ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                     Prelude.fromIntegral)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"year") _x))
                 Data.Monoid.<>
                 ((Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                    ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                       Prelude.fromIntegral)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"month") _x))
                   Data.Monoid.<>
                   ((Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        (Lens.Family2.view (Data.ProtoLens.Field.field @"day") _x))
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Date where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Date'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Date'year x__)
                    (Control.DeepSeq.deepseq (_Date'month x__)
                       (Control.DeepSeq.deepseq (_Date'day x__) (())))))
{- | Fields :

    * 'Proto.Common_Fields.date' @:: Lens' Datetime Date@
    * 'Proto.Common_Fields.timestamp' @:: Lens' Datetime Timestamp@
 -}
data Datetime = Datetime{_Datetime'date :: !Date,
                         _Datetime'timestamp :: !Timestamp,
                         _Datetime'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Datetime where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Datetime "date" (Date) where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Datetime'date
               (\ x__ y__ -> x__{_Datetime'date = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Datetime "timestamp"
           (Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Datetime'timestamp
               (\ x__ y__ -> x__{_Datetime'timestamp = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Datetime where
        messageName _ = Data.Text.pack "Datetime"
        fieldsByTag
          = let date__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "date"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Date)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"date"))
                      :: Data.ProtoLens.FieldDescriptor Datetime
                timestamp__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "timestamp"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Timestamp)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"timestamp"))
                      :: Data.ProtoLens.FieldDescriptor Datetime
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, date__field_descriptor),
                 (Data.ProtoLens.Tag 2, timestamp__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Datetime'_unknownFields
              (\ x__ y__ -> x__{_Datetime'_unknownFields = y__})
        defMessage
          = Datetime{_Datetime'date = Data.ProtoLens.defMessage,
                     _Datetime'timestamp = Data.ProtoLens.defMessage,
                     _Datetime'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Datetime ->
                       Prelude.Bool ->
                         Prelude.Bool -> Data.ProtoLens.Encoding.Bytes.Parser Datetime
                loop x required'date required'timestamp
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing
                                  = (if required'date then (:) "date" else Prelude.id)
                                      ((if required'timestamp then (:) "timestamp" else Prelude.id)
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
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "date"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"date") y
                                              x)
                                           Prelude.False
                                           required'timestamp
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "timestamp"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"timestamp")
                                              y
                                              x)
                                           required'date
                                           Prelude.False
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             required'date
                                             required'timestamp
              in
              (do loop Data.ProtoLens.defMessage Prelude.True Prelude.True)
                Data.ProtoLens.Encoding.Bytes.<?> "Datetime"
        buildMessage
          = (\ _x ->
               ((Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                  (((\ bs ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                         Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                     Prelude.. Data.ProtoLens.encodeMessage)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"date") _x))
                 Data.Monoid.<>
                 ((Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                    (((\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                       Prelude.. Data.ProtoLens.encodeMessage)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"timestamp") _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Datetime where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Datetime'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Datetime'date x__)
                    (Control.DeepSeq.deepseq (_Datetime'timestamp x__) (()))))
{- | Fields :

    * 'Proto.Common_Fields.seconds' @:: Lens' Timestamp Data.Int.Int64@
    * 'Proto.Common_Fields.nanos' @:: Lens' Timestamp Data.Int.Int32@
 -}
data Timestamp = Timestamp{_Timestamp'seconds :: !Data.Int.Int64,
                           _Timestamp'nanos :: !Data.Int.Int32,
                           _Timestamp'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Timestamp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Timestamp "seconds"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Timestamp'seconds
               (\ x__ y__ -> x__{_Timestamp'seconds = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Timestamp "nanos"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Timestamp'nanos
               (\ x__ y__ -> x__{_Timestamp'nanos = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Timestamp where
        messageName _ = Data.Text.pack "Timestamp"
        fieldsByTag
          = let seconds__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "seconds"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"seconds"))
                      :: Data.ProtoLens.FieldDescriptor Timestamp
                nanos__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "nanos"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Required
                         (Data.ProtoLens.Field.field @"nanos"))
                      :: Data.ProtoLens.FieldDescriptor Timestamp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, seconds__field_descriptor),
                 (Data.ProtoLens.Tag 2, nanos__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Timestamp'_unknownFields
              (\ x__ y__ -> x__{_Timestamp'_unknownFields = y__})
        defMessage
          = Timestamp{_Timestamp'seconds = Data.ProtoLens.fieldDefault,
                      _Timestamp'nanos = 0, _Timestamp'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Timestamp ->
                       Prelude.Bool ->
                         Prelude.Bool -> Data.ProtoLens.Encoding.Bytes.Parser Timestamp
                loop x required'nanos required'seconds
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing
                                  = (if required'nanos then (:) "nanos" else Prelude.id)
                                      ((if required'seconds then (:) "seconds" else Prelude.id) [])
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
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "seconds"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"seconds")
                                             y
                                             x)
                                          required'nanos
                                          Prelude.False
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "nanos"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"nanos") y
                                              x)
                                           Prelude.False
                                           required'seconds
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             required'nanos
                                             required'seconds
              in
              (do loop Data.ProtoLens.defMessage Prelude.True Prelude.True)
                Data.ProtoLens.Encoding.Bytes.<?> "Timestamp"
        buildMessage
          = (\ _x ->
               ((Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                  ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                     Prelude.fromIntegral)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"seconds") _x))
                 Data.Monoid.<>
                 ((Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                    ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                       Prelude.fromIntegral)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"nanos") _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Timestamp where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Timestamp'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Timestamp'seconds x__)
                    (Control.DeepSeq.deepseq (_Timestamp'nanos x__) (()))))