
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testbadges/provider.dart';

class BadgesPage extends StatelessWidget {
  const BadgesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count_cart = Provider.of<Cart>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Badge(
          badgeContent: Text(count_cart.value.toString()),
          child: Icon(Icons.shopping_cart),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            var provider = context.read<Cart>();
            provider.Increment();
          },
          splashColor: Colors.blueAccent,
          child: Text("Add to Cart"),
        ),
      ),
    );
  }
}
