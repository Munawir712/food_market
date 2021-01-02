part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://1.bp.blogspot.com/-y0BwJQwsny0/Xurv5nXQwSI/AAAAAAABw5A/lIeSIRDD2k8GkccExrSrGPM78-A3AtmOQCK4BGAsYHg/s796/Nasi%2BGoreng%2BJawa1.jpg",
      name: "Nasi Goreng Bang Kari",
      description:
          "Nasi goreng bang kari adalah salah nasi yang ramai peminatnya didaerah Darussalam  ",
      ingredients: "Nasi, Kecap, Cabe, Bawang, Seledri, Timun, Tomat",
      price: 10000,
      rate: 2.5),
  Food(
      id: 2,
      picturePath:
          "https://cdn.yummy.co.id/content-images/images/20200326/XmyZpnYBPkWXTIEnp1G82BPIxYNdSUJo-31353835313938383937d41d8cd98f00b204e9800998ecf8427e_800x800.jpg",
      name: "Nasi Uduk",
      description: "Nasi uduk yang ramai disukai oleh banyak orang didaerah darussalam  ",
      ingredients: "Nasi, Bawang, Pandan, Timun, Ayam",
      price: 5000,
      rate: 3.5),
];
