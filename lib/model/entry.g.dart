// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EntryAdapter extends TypeAdapter<Entry> {
  @override
  final int typeId = 3;

  @override
  Entry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Entry(
      entryId: fields[1] as String,
      bookId: fields[2] as String,
      entryAmount: fields[3] as int,
      entryDescription: fields[4] as String,
      entryDate: fields[5] as String,
      entryTime: fields[6] as String,
      entryLastModified: fields[7] as String,
      entryType: fields[8] as EntryType,
      paymentMethod: fields[9] as PaymentMethod?,
      category: fields[10] as Category?,
    );
  }

  @override
  void write(BinaryWriter writer, Entry obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.entryId)
      ..writeByte(2)
      ..write(obj.bookId)
      ..writeByte(3)
      ..write(obj.entryAmount)
      ..writeByte(4)
      ..write(obj.entryDescription)
      ..writeByte(5)
      ..write(obj.entryDate)
      ..writeByte(6)
      ..write(obj.entryTime)
      ..writeByte(7)
      ..write(obj.entryLastModified)
      ..writeByte(8)
      ..write(obj.entryType)
      ..writeByte(9)
      ..write(obj.paymentMethod)
      ..writeByte(10)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
