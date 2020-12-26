class Users {
  String name;
  String email;
  String password;
  String image;
  String role;
  int id;
  Users({this.name, this.image, this.role, this.id, this.email, this.password});
}

List<Users> sections = [
  Users(
      name: 'نايف',
      image: 'assets/images/shop.svg',
      role: 'seller',
      id: 1,
      email: 'nayef@gmail.com',
      password: 'aaaa1111'),
  Users(
      name: 'احمد',
      image: 'assets/images/test.svg',
      role: 'seller',
      id: 2,
      email: 'ahmed@gmail.com',
      password: 'aaaa1111'),
  Users(
      name: 'محمد',
      image: 'assets/images/user.svg',
      role: 'customer',
      id: 3,
      email: 'mohammed@gmail.com',
      password: 'aaaa1111'),
];
