import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rucksack/mywidget/myiconbutton/myiconbutton.dart';
import 'package:rucksack/color/colors.dart';
import 'package:rucksack/screens/afteropen/afteropen.dart';


class HomeItemTile extends StatelessWidget {
  var maintitle;
  var subtitle;
  var pic;
  var profpic;
  var price;
  var longdesc;
  var utili;
  var tags;
  var condition;
  var userid; //for  contact
  var imgs;
  IconData ic;
  HomeItemTile(this.maintitle,this.subtitle,this.pic, this.profpic,this.price, this.ic, this.longdesc, this.utili, this.tags, this.condition, this.userid, this.imgs){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xff),
      ),
      width: double.infinity,
      child:  Card(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AfterOpen(this.longdesc, this.tags, this.condition, this.utili, this.userid, this.imgs),));
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 70,
                child: ListTile(
                  tileColor: Color(0xff),
                  //leading: Icon(ic, size: 45, color: Colors.black54,),
                  title: Text(maintitle+'\n', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'PressStart', fontSize: 10, color: Colors.white38),),
                  subtitle: Text(subtitle, style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w900, fontSize: 11, color: Colors.white54),),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage(profpic),
                    radius: 28,
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(pic, fit: BoxFit.fill, height: 220, width: double.infinity,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 135),
                    height: 85,
                    width: double.infinity,
                    color: Colors.black54,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        simpleIconButton(FontAwesomeIcons.heart, Colors.white, Colors.transparent, (){print('hellohome');}, 17),
                        Text('\n   buy @', style: TextStyle(fontFamily: 'PressStart', fontSize: 10),),
                        Text('\n'+price, style: TextStyle(fontFamily: 'PressStart', fontSize: 16, color: Color(0xffB1E693)),),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:rucksack/mywidget/myiconbutton/myiconbutton.dart';
// import 'package:rucksack/color/colors.dart';
// import 'package:rucksack/screens/afteropen/afteropen.dart';
// import 'package:rucksack/screens/homescreen.dart';
//
//
//
// class HomeItemTile extends StatelessWidget {
//   var maintitle;
//   var subtitle;
//   var pic;
//   var profpic;
//   var price;
//   var iarr;
//   IconData ic;
//   HomeItemTile(this.maintitle,this.subtitle,this.pic, this.profpic,this.price, this.ic, this.iarr){
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 3),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(7),
//         color: Color(0xff),
//       ),
//       width: double.infinity,
//       child:  Card(
//         child: InkWell(
//           onTap: () {
//             //print(iarr);
//             //Navigator.push(context, MaterialPageRoute(builder: (context) => AfterOpen(selectedItem: iarr),));
//             print('this ish hp');
//             Navigator.pushNamed((context), AfterOpen.id);
//             print('this doent happne');
//           },
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Container(
//                 height: 70,
//                 child: ListTile(
//                   tileColor: Color(0xff),
//                   //leading: Icon(ic, size: 45, color: Colors.black54,),
//                   title: Text(maintitle+'\n', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'PressStart', fontSize: 10, color: Colors.white38),),
//                   subtitle: Text(subtitle, style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w900, fontSize: 11, color: Colors.white54),),
//                   trailing: CircleAvatar(
//                     backgroundImage: NetworkImage(profpic),
//                     radius: 28,
//                   ),
//                 ),
//               ),
//               Stack(
//                 children: <Widget>[
//                   Container(
//                     child: Image.network(pic, fit: BoxFit.fill, height: 220, width: double.infinity,),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(top: 135),
//                     height: 85,
//                     width: double.infinity,
//                     color: Colors.black54,
//                     child: Row(
//                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         simpleIconButton(FontAwesomeIcons.heart, Colors.white, Colors.transparent, (){print('hellohome');}, 17),
//                         Text('\n   buy @', style: TextStyle(fontFamily: 'PressStart', fontSize: 10),),
//                         Text('\n'+price, style: TextStyle(fontFamily: 'PressStart', fontSize: 16, color: Color(0xffB1E693)),),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//
//       ),
//     );
//   }
// }