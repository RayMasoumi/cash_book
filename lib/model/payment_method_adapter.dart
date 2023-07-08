import 'package:hive/hive.dart';

import '../constants/enums.dart';

class PaymentMethodAdapter extends TypeAdapter<PaymentMethod> {
  @override
  final int typeId = 5;

  @override
  PaymentMethod read(BinaryReader reader) {
    final index = reader.readInt();
    return PaymentMethod.values[index];
  }

  @override
  void write(BinaryWriter writer, PaymentMethod obj) {
    final index = obj.index;
    writer.writeInt(index);
  }
}
