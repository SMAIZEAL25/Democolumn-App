// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:democolumn_app/models/cart.dart';
import 'package:flutter/material.dart';

import 'package:democolumn_app/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart method
  void removeItemFromCart() {
    Provider.of<cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
        // const SizedBox(
        //   height: 350,
        // ),
        // Check out buttom

        // Padding(
        //   padding: const EdgeInsets.all(5),
        //   child: Material(
        //     borderRadius: BorderRadius.circular(8),
        //     child: MaterialButton(
        //       minWidth: double.infinity,
        //       elevation: 0,
        //       color: Colors.black,
        //       onPressed: () {},
        //       child: const Text(
        //         '\$ Check out',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // ),
     

