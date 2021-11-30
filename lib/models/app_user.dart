class AppUser {
  AppUser({
    required this.id,
    required this.email,
    required this.name,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'AppUser{email: $id, id: $email, name: $name, imageUrl: $imageUrl}';
  }

  final String id;
  final String email;
  final String name;
  final String? imageUrl;
}
