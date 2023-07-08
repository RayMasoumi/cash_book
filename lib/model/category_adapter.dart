import 'package:hive/hive.dart';

import '../constants/enums.dart';

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 4;

  @override
  Category read(BinaryReader reader) {
    final index = reader.readInt();
    return Category.values[index];
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    final index = obj.index;
    writer.writeInt(index);
  }
}
