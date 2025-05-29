import 'package:flutter/material.dart';

class settingraw extends StatelessWidget {
  const settingraw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(  //    *******ROW(2)*******
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Text("My Orders",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
          SizedBox( height: 7),
          Text("Already have 10 orders ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,color: Color.fromARGB(255, 87, 85, 85)),),],),
          Padding(
            padding: EdgeInsets.only(left: 175),
            child: IconButton(onPressed: AboutDialog.new, icon: Icon(Icons.arrow_forward_ios)),
          )],);
  }
}


