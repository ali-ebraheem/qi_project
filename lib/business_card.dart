import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon:const Icon(Icons.arrow_back, color: Color(0xFF3E6C86),size: 30,),),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // arabic business card 
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Container(
                    height: 250,
                    width: 400,
                    color:Colors.white,
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:     [
                      const  Image(image: AssetImage('images/logo_qi.png')),
                       const SizedBox(height:20 ,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:const [
                                   Text('علي ابراهيم كامل',
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: '29LT Bukra',color: Color(0xFF3E6C86)),),
                                   Text('ادارة ومعالجة قواعد البيانات',
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal ,fontFamily: '29LT Bukra',color: Color(0xFF3E6C86)),),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Text("+964",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: '29LT Bukra',
                                              color: Color(0xFF3E6C86)),),
                                        SizedBox(width: 5,),
                                        Text("7727670531",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: '29LT Bukra',
                                              color: Color(0xFF3E6C86)),),
                                        SizedBox(width: 10,),
                                        Text("جوال",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: '29LT Bukra',
                                              color: Color(0xFF3E6C86)),),
                                        SizedBox(width: 5,),

                                        Image(image: AssetImage('images/Phone_icon.png'),height: 15,width: 15,),
                                      ],
                                    ),
                                    const SizedBox(height: 40,),
                                    const  Text("العالمية للبطاقة الذكية (قطاع مختلط)",
                                      style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.normal ,
                                          fontFamily: '29LT Bukra',
                                          color: Color(0xFF3E6C86)),),
                                  ],
                                ),
                              ],
                            ),
                                 const SizedBox(width:15 ,),
                                 Container(height: 70,width: 0.5 ,color:const Color(0xFF3E6C86),),
                                const SizedBox(width:15 ,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Image(image: AssetImage('images/Email_icon.png'),height: 15,width: 15,),
                                        SizedBox(width: 5,),
                                          Text("ali.kamil@qi.iq",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: 'FontFont',
                                              color: Color(0xFF3E6C86)),),

                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Image(image: AssetImage('images/Internet_icon.png'),height: 15,width: 15,),
                                        SizedBox(width: 5,),
                                        Text("qi.iq",
                                          style: TextStyle(fontSize: 14,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: 'FontFont',
                                              color: Color(0xFF3E6C86)),),

                                      ],
                                    ),
                                   const  SizedBox(width: 5,),
                                    const  Text("ص.ب. ٢٢٤٤ الجادرية",
                                      style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.normal ,
                                          fontFamily: '29LT Bukra',
                                          color: Color(0xFF3E6C86)),),
                                    const SizedBox(width: 5,),
                                    const  Text("بغداد-العراق",
                                      style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.normal ,
                                          fontFamily: '29LT Bukra',
                                          color: Color(0xFF3E6C86)),),
                                  ],
                                ),
                               const SizedBox(width: 50,),
                              ],
                            ),

                          ],
                        ),


                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60,),
          // english business card
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Container(
                    height: 250,
                    width: 400,
                    color:Colors.white,
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:     [
                        const  Image(image: AssetImage('images/logo_qi_en.png')),
                        const SizedBox(height:20 ,),
                        Column(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 170),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  Text('Ali Ibraheem Kamil',
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'FontFont',color: Color(0xFF3E6C86)),),
                                  Text('Organizational development Supervisor',
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal ,fontFamily: 'FontFont',color: Color(0xFF3E6C86)),),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [


                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children:  const [

                                          SizedBox(width: 5,),
                                          Text("ali.kamil@qi.iq",
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                          Image(image: AssetImage('images/Email_icon.png'),height: 15,width: 15,),

                                        ],
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:  const [

                                          SizedBox(width: 5,),
                                          Text("qi.iq",
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                          Image(image: AssetImage('images/Internet_icon.png'),height: 15,width: 15,),
                                        ],
                                      ),
                                      const  SizedBox(width: 5,),
                                      const  Text("P.O.Box 2244, Jadrya",
                                        style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.normal ,
                                            fontFamily: 'FontFont',
                                            color: Color(0xFF3E6C86)),),
                                      const SizedBox(width: 5,),
                                      const  Text("Baghdad - Iraq",
                                        style: TextStyle(fontSize: 12,
                                            fontWeight: FontWeight.normal ,
                                            fontFamily: 'FontFont',
                                            color: Color(0xFF3E6C86)),),
                                    ],
                                  ),
                                  const SizedBox(width:15 ,),
                                  Container(height: 70,width: 0.5 ,color:const Color(0xFF3E6C86),),
                                  const SizedBox(width:15 ,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:  const [
                                          Image(image: AssetImage('images/Phone_icon.png'),height: 15,width: 15,),
                                          SizedBox(width: 10,),
                                          Text("mob",
                                            style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                          SizedBox(width: 5,),
                                          Text("+964",
                                            style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                          SizedBox(width: 5,),
                                          Text("7727670531",
                                            style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),




                                        ],
                                      ),
                                      const SizedBox(height: 40,),
                                        Row(
                                          children: const [
                                          Text("International Smart Card ",
                                            style: TextStyle(fontSize: 10,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                            Text("(Semi Government)",
                                              style: TextStyle(fontSize: 8,
                                                  fontWeight: FontWeight.normal ,
                                                  fontFamily: 'FontFont',
                                                  color: Color(0xFF3E6C86)),),
                                          ],
                                        ),
                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),


                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
