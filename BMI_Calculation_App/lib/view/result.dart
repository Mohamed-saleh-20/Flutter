import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/view/Home.dart';

class ResultView extends StatefulWidget {
  ResultView({super.key, required this.result});
  final double result;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  Color? color;

  String getClass() {
    if (widget.result <= 18.5) {
      color = Colors.red;
      return 'Underweight';
    } else if (widget.result <= 24.9) {
      color = const Color.fromARGB(255, 117, 244, 54);
      return 'Normal';
    } else if (widget.result <= 39.9) {
      color = const Color.fromARGB(255, 54, 149, 244);
      return 'Overweight';
    } else {
      color = Colors.red;
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Your Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 40),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.containerscolor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getClass(),
                        style: TextStyle(color: color, fontSize: 16),
                      ),
                      SizedBox(height: 40),
                      Text(
                        widget.result.toStringAsFixed(2),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Good Job",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: AppColors.secondary),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(MaterialPageRoute(builder: (context) {
                        return BmiCalculater();
                      }));
                    },
                    child: Text(
                      "Recalculate",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
