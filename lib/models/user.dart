part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: "Diluc",
    email: "diluc@genshin.com",
    address: "Draf Wainery",
    city: "Monstand",
    houseNumber: '5555',
    phoneNumber: "08123456789",
    picturePath:
        "https://twinfinite.net/wp-content/uploads/2020/09/Genshin-Impact-Characters-Diluc-scaled.jpg");
