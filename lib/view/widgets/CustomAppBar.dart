import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(

              children: [
                TextSpan(
                    text: "Wallpaper",
                    style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)
                ),
                TextSpan(
                    text: " Guru",
                    style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.w600)
                ),
              ]

          )
      ),
    );
  }
}
