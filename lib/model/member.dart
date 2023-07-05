import 'package:hive/hive.dart';

part 'member.g.dart';

@HiveType(typeId: 1)
class Member {
  @HiveField(1)
  String memberId;
  @HiveField(2)
  String memberUserName;
  @HiveField(3)
  String memberPhoneNumber;

  Member({
    required this.memberId,
    required this.memberUserName,
    required this.memberPhoneNumber,
  });
}
