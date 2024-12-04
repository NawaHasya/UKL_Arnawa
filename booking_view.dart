import 'package:flutter/material.dart';
import 'package:slicing_cinepolis/models/movie_models.dart';
import 'package:slicing_cinepolis/navbar.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
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
              // searchField(),

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
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: Icon(Icons.location_on_sharp, color: Colors.grey),
              title: Text(
                "Malang",
                style: TextStyle(
                  fontSize: 16,
                ),
              ), // Text
              childrenPadding: const EdgeInsets.all(16),
              backgroundColor: Colors.white,
              collapsedBackgroundColor: Colors.grey.shade300,
              textColor: Colors.blue,
              collapsedTextColor: Colors.black,
              iconColor: Colors.blue,
              collapsedIconColor: Colors.grey,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        SizedBox(width: 8),
                        Text(
                          "Tandai bioskop favoritmu!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Mengerti"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
              categories.length,
              (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(left: sw * 0.05),
                  width: sw * 0.98,
                  height: sw * 0.2,
                  child: Row(
                    children: [
                      Container(
                          width: sw * 0.5,
                          height: sw * 0.2,
                          padding: EdgeInsets.only(right: sw * 0.05),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                categories[index].banner,
                                width: sw * 0.1,
                                fit: BoxFit.contain,
                              ))),
                      Center(
                        child: Column(children: [
                          Text(
                            categories[index].nama,
                            style: TextStyle(
                                fontSize: sw * 0.03,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                categories[index].genre,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    '${categories[index].rating}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Navbar(1),
    );
  }
}