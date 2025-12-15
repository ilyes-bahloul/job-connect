class User {
  final String id;
  final String email;
  final String name;
  final String role; // 'employee' or 'company'
  final String? profilePhoto;
  final String? phone;
  final Map<String, dynamic>? additionalInfo;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    this.profilePhoto,
    this.phone,
    this.additionalInfo,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      role: json['role'] ?? 'employee',
      profilePhoto: json['profilePhoto'],
      phone: json['phone'],
      additionalInfo: json['additionalInfo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'role': role,
      'profilePhoto': profilePhoto,
      'phone': phone,
      'additionalInfo': additionalInfo,
    };
  }
}

