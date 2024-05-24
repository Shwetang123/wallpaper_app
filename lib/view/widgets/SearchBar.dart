import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(66,192,192,192),
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Wallpapers",
                  errorBorder:InputBorder.none,
                  focusedBorder:InputBorder.none,
                  focusedErrorBorder :InputBorder.none,
                  disabledBorder:InputBorder.none,
                  enabledBorder:InputBorder.none,
                  border:InputBorder.none,
              ),
            ),
          ),
          InkWell(
              onTap: (){
                print("Searching.......");
              },
              child: Icon(Icons.search))
        ],
      ),
    );
  }
}

