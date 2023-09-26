class Item {
  String imgPath;
  double price;
  String location;
  String name;
  Item({
    required this.imgPath,
    required this.price, 
    required this.location,
    required this.name,
  });
}
final List<Item> items = [
    Item(name: "Product 1", price: 12.99, imgPath: "assets/img/1.webp", location: "Oulfa"),
    Item(name: "Product 2",price: 17.99, imgPath: "assets/img/2.webp", location: "Zerktouni"),
    Item(name: "Product 3", price: 19.99, imgPath: "assets/img/3.webp", location: "Zoubir"),
    Item(name: "Product 4", price: 22.99, imgPath: "assets/img/4.webp", location: "Haj Fateh"),
    Item(name: "Product 5", price: 62.99, imgPath: "assets/img/5.webp", location: "Anfa"),
    Item(name: "Product 6", price: 36.99, imgPath: "assets/img/6.webp", location: "Derb sultan"),
    Item(name: "Product 7", price: 14.99, imgPath: "assets/img/7.webp", location: "Hay mohamadi"),
    Item(name: "Product 8", price: 35.99, imgPath: "assets/img/8.webp", location: "Bernoussi"),

  ];