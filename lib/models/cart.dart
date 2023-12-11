import 'package:democolumn_app/models/shoe.dart';

// ignore: camel_case_types
class cart {
  List<Shoe> shoeShop = [
    Shoe(
        description: 'Mens Shoe',
        price: '236',
        imagepath: 'image/NikeShoes/Shoe1.png',
        name: ' Nike Dunk Low Retro'),
    Shoe(
        description: 'Mens Shoe',
        price: '127.97',
        imagepath: 'image/NikeShoes/Shoe2.png',
        name: 'Nike Blazer Phantom'),
    Shoe(
        description: 'Mens Shoe',
        price: '150.10',
        imagepath: 'image/NikeShoes/Shoe3.png',
        name: 'Nike Vaporfly 3'),
    Shoe(
        description: 'Mens Shoe',
        price: '140.2',
        imagepath: 'image/NikeShoes/Shoe4.png',
        name: 'Nike Air uptempo 96'),
    Shoe(
        description: 'Mens Shoe',
        price: '175.20',
        imagepath: 'image/NikeShoes/Shoe5.png',
        name: 'Nike Sabrina 1 West Coast Roots'),
    Shoe(
        description: 'Mens Shoe',
        price: '110.20',
        imagepath: 'image/NikeShoes/Shoe6.png',
        name: 'Nike Zoom Vomero 5'),
    Shoe(
        description: 'Mens Shoe',
        price: '119.97',
        imagepath: 'image/NikeShoes/Shoe7.png',
        name: 'Nike Dunk High Retro SE'),
    Shoe(
        description: 'Mens Shoe',
        price: '260',
        imagepath: 'image/NikeShoes/Shoe8.png',
        name: 'Nike Air More Uptempo'),
    Shoe(
        description: 'Mens Shoe',
        price: '221',
        imagepath: 'image/NikeShoes/Shoe8.png',
        name: 'Nike Air Trainer 1'),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of show for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }
  // remoe item from cart
   void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
