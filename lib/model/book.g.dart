// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookAdapter extends TypeAdapter<Book> {
  @override
  final int typeId = 2;

  @override
  Book read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Book(
      bookId: fields[1] as String,
      bookName: fields[2] as String,
      privateBook: fields[5] as bool,
      bookLastModified: fields[9] as String,
      bookOwnerUserId: fields[4] as String,
      bookMembers: (fields[3] as List).cast<User>(),
      activeBook: fields[6] as bool,
      bookRecords: (fields[10] as List).cast<Entry>(),
    )
      ..bookBalance = fields[7] as double
      ..bookCreationDate = fields[8] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Book obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.bookId)
      ..writeByte(2)
      ..write(obj.bookName)
      ..writeByte(3)
      ..write(obj.bookMembers)
      ..writeByte(4)
      ..write(obj.bookOwnerUserId)
      ..writeByte(5)
      ..write(obj.privateBook)
      ..writeByte(6)
      ..write(obj.activeBook)
      ..writeByte(7)
      ..write(obj.bookBalance)
      ..writeByte(8)
      ..write(obj.bookCreationDate)
      ..writeByte(9)
      ..write(obj.bookLastModified)
      ..writeByte(10)
      ..write(obj.bookRecords);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
