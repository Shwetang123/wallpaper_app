import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class catBlock extends StatelessWidget {
  const catBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                height: 50,
                width: 100,
                fit: BoxFit.cover, 
                "https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12)
            ),
          ),
          Positioned(
            left: 38,
              top: 10,
              child: Text("Car", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
        ],
      )
    );
  }
}
