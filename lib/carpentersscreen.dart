import 'package:flutter/material.dart';
import 'dart:ui';
import 'colors.dart';
void main() {
  runApp(MyApp());
}
const appbarbg=Color(0xFFFFC84F);
const checkboxbg=Color(0xFF1A2940);
class Carpenters extends StatefulWidget {
  @override
  _carpenterState createState() => _carpenterState();
}
class  _carpenterState extends State<Carpenters>{
  bool isplaying = false;
  @override
  int count = 0;

  void incrementQuantity() {
    setState(() {
      count++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }
  bool isWhatsAppEnabled = false;

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 219,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/carpenters 1.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Carpenters',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
                              child: Image(
                                image: AssetImage("assets/tick.png"),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'ON DEMANDSEV COVER',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              'Verified repair quotes & warranty',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12.0,
                                color: Color(0xFF000000
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 8.0),
                  child: Text(
                    'Service',
                    style: TextStyle(fontFamily: 'Inter',fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 3.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DRILL & HANG (WALL\nDECOR',
                                style: TextStyle(fontSize: 13.5, fontFamily: 'Jost', color: checkboxbg),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Image(
                                    image: AssetImage("assets/Vector.png"),
                                    width: 19.4,
                                    height: 19.4,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '₵ 200',
                                    style: TextStyle(fontSize: 17.0, fontFamily: 'Jost', color: checkboxbg),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 100.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 161.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.0,
                            right: 28.0,
                            child: QuantityButton(initialQuantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child:Image.asset(
                    'assets/line56.png',
                    width: 227,
                  ),
                ),
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Get 2X deeper dust removal with\n famjet technology',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Thorough cleaning of both indoor & \noutdoor AC units ',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 3.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MAJOR DOOR REPAIR',
                                style: TextStyle(fontSize: 13.5, fontFamily: 'Jost', color: checkboxbg),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Image(
                                    image: AssetImage("assets/Vector.png"),
                                    width: 19.4,
                                    height: 19.4,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '₵ 200',
                                    style: TextStyle(fontSize: 17.0, fontFamily: 'Jost', color: checkboxbg),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 100.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 161.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.0,
                            right: 28.0,
                            child: QuantityButton(initialQuantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'assets/line56.png',
                    width: 227,
                  ),
                ),
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Get 2X deeper dust removal with\n famjet technology',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Thorough cleaning of both indoor & \noutdoor AC units ',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 20.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CUPBOARD HINGE SERVICE\n(UP TO TWO)',
                                style: TextStyle(fontSize: 13.5, fontFamily: 'Jost', color: checkboxbg),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Image(
                                    image: AssetImage("assets/Vector.png"),
                                    width: 19.4,
                                    height: 19.4,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '₵ 200',
                                    style: TextStyle(fontSize: 17.0, fontFamily: 'Jost', color: checkboxbg),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 100.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 161.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.0,
                            right: 28.0,
                            child: QuantityButton(initialQuantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'assets/line56.png',
                    width: 227,
                  ),
                ),
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Get 2X deeper dust removal with\n famjet technology',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Thorough cleaning of both indoor & \noutdoor AC units ',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 20.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CHANNEL REPAIR (ONE SET)',
                                style: TextStyle(fontSize: 13.5, fontFamily: 'Jost',color: checkboxbg),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Image(
                                    image: AssetImage("assets/Vector.png"),
                                    width: 19.4,
                                    height: 19.4,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '₵ 200',
                                    style: TextStyle(fontSize: 17.0, fontFamily: 'Jost', color: checkboxbg),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 100.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 161.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.0,
                            right: 28.0,
                            child: QuantityButton(initialQuantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child:Image.asset(
                    'assets/line56.png',
                    width: 227,
                  ),
                ),
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Get 2X deeper dust removal with\n famjet technology',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Thorough cleaning of both indoor & \noutdoor AC units ',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 3.0, top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CURTAIN ROD INSTALLATION\n(TWO BRACKTS)',
                                style: TextStyle(fontSize: 13.5, fontFamily: 'Jost', color: checkboxbg),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Image(
                                    image: AssetImage("assets/Vector.png"),
                                    width: 19.4,
                                    height: 19.4,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '₵ 200',
                                    style: TextStyle(fontSize: 17.0, fontFamily: 'Jost', color: checkboxbg),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 100.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 161.png'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95.0,
                            right: 28.0,
                            child: QuantityButton(initialQuantity: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'assets/line56.png',
                    width: 227,
                  ),
                ),
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Get 2X deeper dust removal with\n famjet technology',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.play_arrow,color: checkboxbg,),
                        SizedBox(width: 5.0),
                        Text(
                          'Thorough cleaning of both indoor & \noutdoor AC units ',
                          style: TextStyle(fontSize: 14.0, fontFamily: 'Jost', color: checkboxbg),
                        ),
                      ],
                    ),
                  ),),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }

}
class QuantityButton extends StatefulWidget {
  final int initialQuantity;

  QuantityButton({required this.initialQuantity});

  @override
  _QuantityButtonState createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int _count = 0;

  void _incrementQuantity() {
    setState(() {
      _count++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: checkboxbg,
        ),
      ),
      child: Row(
        children: [
          if (_count== 0)
            TextButton(
              onPressed: () {
                _incrementQuantity();
              },
              child: Text(
                'ADD',
                style: TextStyle(fontSize: 14.0, color: Color(0xFF000000)),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(0, 25)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 18.0),
                ),
              ),
            )
          else
            Row(
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: IconButton(
                    onPressed: () => _decrementQuantity(),
                    icon: Icon(Icons.remove),
                    iconSize: 8.75,
                    padding: EdgeInsets.zero,
                  ),
                ),
                SizedBox(child: Text(_count.toString())),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: IconButton(
                    onPressed: () => _incrementQuantity(),
                    icon: Icon(Icons.add),
                    iconSize: 8.75,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
class MyApp  extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Carpenters(),
    );
  }
}