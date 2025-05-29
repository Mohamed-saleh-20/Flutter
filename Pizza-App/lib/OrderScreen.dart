import 'package:first_app/FoodPage.dart';
import 'package:first_app/core/CusomButton.dart';
import 'package:first_app/welcomeScreen.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  final List<Map<String, String>> items = const [
    {'image': 'https://tse4.mm.bing.net/th?id=OIP.Yh22Gn16hfs6QfNuoTObzwHaHa&pid=Api&P=0&h=220', 'title': 'Pizza'},
    {'image': 'https://tse1.mm.bing.net/th?id=OIP.0acVPwA-37-VDM3d435ybwHaF7&pid=Api&P=0&h=220', 'title': 'Burger'},
    {'image': 'https://tse2.mm.bing.net/th?id=OIP.-A6xxddga9lqMNtF664mcAHaFh&pid=Api&P=0&h=220', 'title': 'Pasta'},
    {'image': 'https://tse3.mm.bing.net/th?id=OIP.FGbcNCIXZgiSAfTbgU54VwHaHa&pid=Api&P=0&h=220', 'title': 'Fries'},
    {'image': 'https://tse4.mm.bing.net/th?id=OIP.p2t4teUt_1P_ovsDy0C7fAHaHa&pid=Api&P=0&h=220', 'title': 'Meat'},
    {'image': 'https://tse1.mm.bing.net/th?id=OIP.OnVOSrQyqLPqNJMfd20R_wHaE8&pid=Api&P=0&h=220', 'title': 'Noodles'},
    {'image': 'https://tse1.mm.bing.net/th?id=OIP.dK5YxIFmdPa48UqnsrYqPgHaF9&pid=Api&P=0&h=220', 'title': 'Chicken'},
    {'image': 'https://tse3.mm.bing.net/th?id=OIP.FQDhH7HkyUxddYvneIZ4_AHaFy&pid=Api&P=0&h=220', 'title': 'Sushi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
           Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeScreen()));
        }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.orange,)),
        title: const Text('Order from Menu', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(15), 
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8), 
                
                child: Image.network(
                  item['image']!,
                  width: 60, 
                  height: 60, 
                  fit: BoxFit.cover, 
                ),
              ),
              title: Text(
                item['title']!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: CustomButton(
                text: "Order Now",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetailsScreen(
                        title: item['title']!,
                        image: item['image']!,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
