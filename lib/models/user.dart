enum UserType { Admin, Donor, Partner }

class User {
  final String id;
  final String fullName;
  final String email;
  UserType userType;

  User(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.userType});
}
