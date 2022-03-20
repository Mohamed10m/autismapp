class UserModel {
  late String name;
  late String lastName;
  late String gender;
  late String age;
  UserModel(
      {required this.name,
      required this.lastName,
      required this.gender,
      required this.age});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastName = json['lastName'];
    gender = json['gender'];
    age = json['age'];
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'lastName': lastName, 'gender': gender, 'age': age};
  }
}
