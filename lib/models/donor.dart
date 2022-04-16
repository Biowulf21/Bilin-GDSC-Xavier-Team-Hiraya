class Donor {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String username;

  Donor(
      {required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.username});

  static Donor fromJson(json) => Donor(
      fullName: json['fullName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      username: json['username']);
}
