import 'package:flutter/material.dart';
import 'package:wallpaper_app/view/widgets/SearchBar.dart';
import '../widgets/CustomAppBar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: CustomAppbar(),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: search_bar()),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 400,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 13),

                    itemCount: 16,

                    itemBuilder: ((context,index)=>Container(
                      height: 800,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            height: 800,
                            width: 50,
                            fit: BoxFit.cover,
                            "https://images.pexels.com/photos/23961099/pexels-photo-23961099/free-photo-of-couple-holding-hands-and-walking-in-traditional-clothing.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),))),
              )
            ]
        ),
      ),

    );
  }
}
