import 'package:democolumn_app/component/Shoe_tile.dart';
import 'package:democolumn_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              // create a shoe
              Shoe shoe = Shoe(
                  description: 'Cool Shoe',
                  price: '20',
                  imagepath: 'image/NikeShoes/Shoe3.jpg',
                  name: 'Air jordan');
              return ShoeTile(
                shoe: shoe,
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
    );
  }
}
