import 'package:first_app/OrderScreen.dart';
import 'package:first_app/core/CusomButton.dart';
import 'package:first_app/welcomeScreen.dart';
import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String title;
  final String image;

  const FoodDetailsScreen(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.orange,
            )),
        title: Column(
          children: [
            const Text('Order from Menu',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(image, height: 200, width: 200),
            const SizedBox(height: 20),
            Text(
              "Enjoy your delicious $title!",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            CustomButton(text: "Go Back", onPressed: (){
               Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderScreen()));
            })
          ],
        ),
      ),
    );
  }
}
