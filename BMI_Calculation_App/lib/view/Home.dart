import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/view/result.dart';

class BmiCalculater extends StatefulWidget {
  @override
  State<BmiCalculater> createState() => _BmiCalculaterState();
}

class _BmiCalculaterState extends State<BmiCalculater> {
  int age = 21;
  int wieght = 50;
  int height = 160;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          ' BMI Calculater',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //MALE & Female
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (isMale)
                                  ? AppColors.secondary
                                  : AppColors.containerscolor,
                            ),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.male,
                                    color: Colors.white,
                                  ),
                                  iconSize: 80,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            )),
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: (isMale)
                                    ? AppColors.containerscolor
                                    : AppColors.secondary),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.female,
                                    color: Colors.white,
                                  ),
                                  iconSize: 80,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            )),
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
            //hieght
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.containerscolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //text
                              Text(
                                "Hieght",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //row
                              Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    height.toString(),
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("CM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white))
                                ],
                              ))
                              //line
                              ,
                              Slider(
                                  value: height.toDouble(),
                                  min: 80,
                                  activeColor: AppColors.secondary,
                                  inactiveColor:
                                      const Color.fromARGB(255, 83, 87, 100),
                                  max: 220,
                                  onChanged: (value) {
                                    setState(() {
                                      height = value.toInt();
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.containerscolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "wieght",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(wieght.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (wieght > 30)
                                    (setState(() {
                                      wieght--;
                                    }));
                                },
                                icon: Icon(
                                  Icons.remove_circle,
                                  size: 50,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {
                                  if (wieght >= 30)
                                    (setState(() {
                                      wieght++;
                                    }));
                                },
                                icon: Icon(Icons.add_circle,
                                    size: 50, color: Colors.white)),
                          ],
                        )
                      ],
                    )),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.containerscolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(age.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (age > 1) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                icon: Icon(
                                  Icons.remove_circle,
                                  size: 50,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {
                                  if (age >= 1) {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                },
                                icon: Icon(
                                  Icons.add_circle,
                                  size: 50,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    )),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //button
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: AppColors.secondary),
                    onPressed: () {
                     // Calculate BMI
                     double res = wieght / (height * height / 10000);
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ResultView(result: res,);
                      }));
                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
