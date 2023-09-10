class Product {
  String name, price, image;
  bool userLiked;
  double discount;

  Product(
      {this.name = '',
      this.price = '',
      this.discount = 0,
      this.image = '',
      this.userLiked = false});
}
