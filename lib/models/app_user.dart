class AppUser {
  AppUser({
    required this.email,
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'AppUser{email: $email, id: $id, name: $name, imageUrl: $imageUrl}';
  }

  final String email;
  final String id;
  final String name;
  final String? imageUrl;
}
