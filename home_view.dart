import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slicing_cinepolis/models/movie_models.dart';
import 'package:slicing_cinepolis/models/promotion_model.dart';
import 'package:slicing_cinepolis/navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 0.0001),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.person_rounded,
                  color: Color.fromARGB(255, 14, 0, 122),
                ),
              ),
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 14, 0, 122),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          
          Container(
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 0.4,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 4)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];

                  return Container(
                    width: sw * 1,
                    padding: EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Membuat sudut melengkung
                      child: Image.asset(
                        Category.banner,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
 
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Now Showing",
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: sw * 0.35, top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: 
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                       
                      
                    
                  ),
                ),
              ],
            ),
          ),
          Container(
          
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 1,
                    autoPlay: true,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 8)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];

                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: sw * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), 
                            child: Image.asset(
                              Category.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Up Coming",
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: sw * 0.35, top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: 
                        Text(
                          "See All",
                          style: TextStyle(color: const Color.fromARGB(255, 102, 102, 102),
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                       
                      
                    
                  ),
                ),
              ],
            ),
          ),
          Container(
          
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 1,
                    autoPlay: true,
                    viewportFraction: 0.65,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 8)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];

                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: sw * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Membuat sudut melengkung
                            child: Image.asset(
                              Category.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.03),
            child: Text(
              "Promotion",
              style:
                  TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Warna border
                  width: 2, // Lebar border
                ),
              ),
            ),
            padding: EdgeInsets.only(top: sw * 0.02, bottom: sw * 0.02),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 0.5,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.9,
                    autoPlayInterval: Duration(seconds: 10)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final spotlight = spot[index];

                  return Column(
                    children: [
                      Container(
                        width: sw * 1,
                        padding:
                            EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10), // Membuat sudut melengkung
                          child: Image.asset(
                            spotlight.banner,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(0),
    );
  }
}