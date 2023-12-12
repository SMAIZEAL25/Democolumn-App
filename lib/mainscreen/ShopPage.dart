import 'package:democolumn_app/component/Shoe_tile.dart';
import 'package:democolumn_app/models/cart.dart';
import 'package:democolumn_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart method
  void addShoeToCart(Shoe shoe) {
    Provider.of<cart>(context, listen: false).addItemToCart(shoe);
    // alert the user, shoe successfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added !'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    //wrapped in a consumer widget from the provider state management
    return Consumer<cart>(
        builder: (contex, value, child) => Column(
              children: [
                //search bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                //message
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'Everyone flies.some fly longer than others',
                    style: TextStyle(color: Color.fromARGB(255, 66, 65, 65)),
                  ),
                ),
                // Hot pick
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ///////////////////////////////////////////////////////////////
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Picks 😉❤ ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                Expanded(
                  child: ListView.builder(
                    //list of shoes
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // get a shoe from the shop list
                      Shoe shoe = value.getShoeList()[index];

                      //return the shoe
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
