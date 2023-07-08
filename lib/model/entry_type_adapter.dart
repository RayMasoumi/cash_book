import 'package:hive/hive.dart';

import '../constants/enums.dart';

class EntryTypeAdapter extends TypeAdapter<EntryType> {
  @override
  final int typeId = 3;

  @override
  EntryType read(BinaryReader reader) {
    final index = reader.readInt();
    return EntryType.values[index];
  }

  @override
  void write(BinaryWriter writer, EntryType obj) {
    final index = obj.index;
    writer.writeInt(index);
  }
}
