import 'package:flutter/material.dart';
import 'package:wallpaper_app/controller/apiOperation.dart';
import 'package:wallpaper_app/view/widgets/SearchBar.dart';
import 'package:wallpaper_app/view/widgets/catBlock.dart';
import '../../model/photosModel.dart';
import '../widgets/CustomAppBar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
   late  List<PhotosModel> trendingWallList;

    GetTrendingWallpaper() async{

      trendingWallList=await ApiOperation.getTrendingWallpaper();
      setState(() {

      });

    }
  @override
  void initState() {

    super.initState();
  GetTrendingWallpaper();

  }

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
              margin: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,itemBuilder: ((context,index)=>catBlock())),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 700,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 400,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 13),


                  itemCount: 14,

                  itemBuilder: ((context,index)=>Container(
                    height: 800,
                    width: 50,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.network(
                           height: 800,
                           width: 50,
                           fit: BoxFit.cover,
                           trendingWallList[index].imgSrc,
                     ),))),
            )
            )
          ]
        ),
      ),

    );
  }
}
