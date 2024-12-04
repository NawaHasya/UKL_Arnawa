import 'package:flutter/material.dart';
import 'package:slicing_cinepolis/views/login_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 0, 6, 85),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 6, 85),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('cinepolis.png'),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: Text('.'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 300), backgroundColor: Color.fromARGB(255, 0, 0, 84)
              ),
            ),
          ],
        ),
      ),
    );
  }
}