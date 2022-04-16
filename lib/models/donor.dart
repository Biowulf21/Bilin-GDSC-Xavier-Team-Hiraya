class Donor {
  final String id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String username;

  Donor(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.username});

  static Donor fromJson(json) => Donor(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      username: json['username']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullname': fullName,
        'email': email,
        'phoneNumber': phoneNumber,
        'username': username
      };
}
