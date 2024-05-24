import 'package:flutter/material.dart';
import '../widgets/CustomAppBar.dart';

class CategoryScreen  extends StatelessWidget {
  const CategoryScreen ({super.key});

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
              Stack(
                children: [
                  Image.network(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      "https://images.pexels.com/photos/1029604/pexels-photo-1029604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black26,
                  ),
                  Positioned(
                    left: 155,
                    top: 40,
                    child: Column(
                      children: [
                        Text("Category",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white),),
                        Text("Mountain",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                      ],
                    ),
                  )

                ],
              ),

              SizedBox(height: 20,),

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
