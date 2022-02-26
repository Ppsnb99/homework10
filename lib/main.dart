import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework10/covid_model.dart';





void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<CovidModel> covidReportList = [
    CovidModel(date: 'CastusLover99',  mentter: 'Ppppp99',  caption: 'หมวกสังฆราช 🌵 เป็นแคคตัสสายพันธุ์ที่ไม่มีหนามแต่อย่างใด โดยต้นจะมีลักษณะเป็นต้นอวบน้ำและมีรอยนูนคล้าย ๆ กับผลของมะเฟือง ซึ่งทำให้ลำต้นดูสวยงาม น่ารัก เหมาะสำหรับใครที่อยากจะเลี้ยงแคคตัสแต่ไม่ชอบหนาม นอกจากนี้ลักษณะเด่นอีกอย่างของหมวกสังฆราช ก็คือการมีดอกอยู่ด้านบนสุดของลำต้นนั่นเอง',comment: ' อยากได้จังเลยค่ะ น่ารักๆๆๆ❤❤❤',avatar: 'logo.png',feed:  'first.png'),
    CovidModel(date: 'CastusLover99',  mentter: 'LucusWa',  caption: 'แคคตัสยิมโน 🌵 เป็นแคคตัสพันธุ์หายากที่มีความโดดเด่นอย่างมากในเรื่องของสีสัน เพราะแคคตัสส่วนใหญ่นั้นจะมีลำต้นเป็นสีเขียวล้วนทั้งหมด แต่สำหรับแคคตัสยิมโนเป็นแคคตัสที่มีสีสันผสมผสานหลากหลาย ไม่ว่าจะเป็น สีแดง สีชมพู สีส้ม สีเหลือง หรือสีเขียวอ่อน ซึ่งเหมาะอย่างมากในการนำเป็นจัดกระถางแคคตัสเพราะจะช่วยเพิ่มสีสันได้มากยิ่งขึ้น',comment: ' ราคาเท่าไรค่าาาาา😻😻',avatar:'logo.png',feed:'second.png'),
    CovidModel(date: 'CastusLover99',  mentter: 'Earnneeka',caption: 'ฮาโวเทียหยดน้ำ 🌵 อีกหนึ่งแคคตัสพันธุ์หายากที่ไม่มีหนาม โดยความโดดเด่นคือลักษณะลำต้นที่อวบ และมีสีขาวใสคล้ายหยดน้ำ และด้วยความสวยงามที่เต็มไปด้วยความอ่อนโยนแบบนี้ บอกได้เลยว่าน่าจะเป็นที่ถูกอกถูกใจใครหลาย ๆ คนอย่างแน่นอน',comment: 'ชอบๆๆๆๆๆ',avatar: 'logo.png',feed: 'third.png'),
    CovidModel(date: 'CastusLover99',  mentter: 'LEGOKIM87',caption: 'แมมมิลลาเรีย เพคตินิเฟอรา 🌵 เป็นแคคตัสที่มีดอกสวยงามเป็นอย่างมาก เพราะแคคตัสส่วนใหญ่นั้นจะมีดอกเพียงดอกเดียวตั้งอยู่ด้านบนสุดของลำต้น แต่ดอกของแมมมิลลาเรีย เพคตินิเฟอรานั้น จะไม่ได้ออกเพียงดอกเดียว แต่จะออกหลาย ๆ ดอกเป็นวงกลมอยู่ด้านบนสุดของลำต้น ซึ่งสร้างความน่ารักให้กับแคคตัสสายพันธุ์นี้เป็นอย่างมาก สำหรับใครที่ชอบสีสันของดอกไม้อยู่แล้ว ต้องไม่พลาดที่จะหาแคคตัสสายพันธุ์นี้มาประดับไว้ภายในห้องให้ได้',comment: 'กระบองเพชรน่ารักจัง😻😻😻',avatar: 'logo.png',feed:'fourth.png'),
    CovidModel(date: 'CastusLover99',  mentter: 'MAX_mamee',caption: 'แอสโตรไฟตัม เอสทีเรีย แคคตัสไร้หนามลายหยัก 🌵 สำหรับแคคตัสสายพันธุ์นี้เป็นอีกหนึ่งสายพันธุ์แคคตัสที่ไม่มีหนาม โดยมีความโดดเด่นที่แตกต่างจากสายพันธุ์อื่น ๆ ตรงที่ลำต้นจะมีขนอ่อน ๆ สีขาวเกิดเป็นลวดลายต่าง ๆ ที่สวยงาม',comment: 'ขอฟรีได้มั้ยครับ^^',avatar: 'logo.png',feed:'fifth.png'),
    CovidModel(date: 'CastusLover99',  mentter: 'Plernka43',caption: 'นูปต้า แคคตัสดอกลิลลี่ 🌵 เป็นแคคตัสพันธุ์หายากที่หลาย ๆ คนหลงใหล ซึ่งความโดดเด่นของแคคตัสสายพันธุ์นี้คือ มีดอกสีขาวสวยงามชูขึ้นมาจากลำต้น ซึ่งจะต่างจากแคคตัสสายพันธุ์อื่น ๆ ที่มีดอกติดอยู่กับลำต้นอย่างสิ้นเชิง',comment: 'เลี้ยงง่ายมั้ยคะ?',avatar: 'logo.png',feed:'sixth.png'),
  ];
//Credit : https://salehere.co.th/articles/most-rare-cactus


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('I_Love_Castus')),
      body: ListView.builder(
          itemCount: covidReportList.length,
          itemBuilder: (context, index) =>
              MyCard(covid: covidReportList[index])),
    );
  }
}

class MyCard extends StatelessWidget {
  final CovidModel covid;

  const MyCard({
    Key? key,
    required this.covid,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/${covid.avatar}'),),
                SizedBox(width: 20.0,),
                Text(covid.date),
                Expanded(child: IconButton(onPressed:(){}, icon: Icon(Icons.more_vert),alignment: Alignment.topRight,)),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Expanded(child: Image.asset('assets/images/${covid.feed}'))],
            ),
            Container(height: 20.0,),

            Row(
              children: [
                Expanded(
                    child: Text(covid.caption))
              ],
            ),
            Container(height: 20.0,),
            Column(
              children: [
                Row(
                  children: [


                    Text(covid.mentter,style: TextStyle(
                      color: Colors.amber,
                    ),),
                    Text(covid.comment),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                    Expanded(
                      child: Container(height: 30.0,
                        child: TextField(decoration: InputDecoration(hintText: 'Add comment'),
                        ),),
                    )
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}