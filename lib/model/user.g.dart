// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      userId: fields[1] as String,
      userName: fields[2] as String,
      userPhoneNumber: fields[3] as String,
      userEmail: fields[4] as String,
      lastSyncDate: fields[9] as String,
      userCreationDate: fields[10] as String,
      userBooks: (fields[5] as List).cast<Book>(),
      isDisabled: fields[11] as bool,
    )
      ..userCompany = fields[6] as String?
      ..userCompanyAddress = fields[7] as String?
      ..userCompanyCategory = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.userPhoneNumber)
      ..writeByte(4)
      ..write(obj.userEmail)
      ..writeByte(5)
      ..write(obj.userBooks)
      ..writeByte(6)
      ..write(obj.userCompany)
      ..writeByte(7)
      ..write(obj.userCompanyAddress)
      ..writeByte(8)
      ..write(obj.userCompanyCategory)
      ..writeByte(9)
      ..write(obj.lastSyncDate)
      ..writeByte(10)
      ..write(obj.userCreationDate)
      ..writeByte(11)
      ..write(obj.isDisabled);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
