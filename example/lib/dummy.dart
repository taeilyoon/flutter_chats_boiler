class DummyModel {
  DateTime data;
  String content;
  UserModel user;

  DummyModel({
    required this.data,
    required this.content,
    required this.user,
  });
}

class UserModel {
  String name;
  String profile;
  UserModel({required this.name, required this.profile});
}

const profile1 = "";
const profile2 = "";
const profile3 = "";

var dummyUsers = [
  UserModel(name: "My self", profile: profile1),
  UserModel(name: "User1", profile: profile1),
  UserModel(name: "User2", profile: profile1)
];
var dummySource = [
  [const Duration(days: 7), 1],
  [const Duration(days: 6, hours: 23, minutes: 59, seconds: 23), 1],
  [const Duration(days: 6, hours: 23, minutes: 59), 1],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 50), 1],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 24), 2],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 23), 2],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 20), 2],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 10), 1],
  [const Duration(days: 6, hours: 23, minutes: 57, seconds: 1), 0],
  [const Duration(days: 6, hours: 23, minutes: 56, seconds: 10), 1],
  [const Duration(days: 6, hours: 23, minutes: 56, seconds: 9), 0],
  [const Duration(days: 6, hours: 23, minutes: 56, seconds: 9), 2],
  [const Duration(days: 6, hours: 23, minutes: 56, seconds: 7), 0],
  [const Duration(days: 4, hours: 23, minutes: 30, seconds: 7), 0],
  [const Duration(days: 4, hours: 23, minutes: 25, seconds: 7), 1],
];
dummyChats() => dummySource.map((e) => DummyModel(
    data: DateTime.now().subtract(e[0] as Duration),
    content: (e[0] as Duration).toString(),
    user: dummyUsers[e[1] as int]));
