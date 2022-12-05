import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  final String arabicName;
  final String englishName;
  final String positionNameArabic;
  final String positionNameEnglish;
  final String email;
  final String phoneNumber;
  const BusinessCard(
      {super.key,
        required this.arabicName,
        required this.englishName,
        required this.positionNameArabic,
        required this.positionNameEnglish,

        required this.email,
        required this.phoneNumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon:const Icon(Icons.arrow_back,
        color: Color(0xFF3E6C86),
        size: 30,),),),
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
                                children: [
                                   Text(arabicName,
                                    maxLines: 2,
                                    style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: '29LT Bukra',color: Color(0xFF3E6C86)),),
                                   Text(positionNameArabic,
                                    maxLines: 2,
                                    style:const TextStyle(fontSize: 14,fontWeight: FontWeight.normal ,fontFamily: '29LT Bukra',color: Color(0xFF3E6C86)),),
                                 const SizedBox(height: 20,),


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
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:   [
                                        const Text("+964",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: 'FontFont',
                                              color: Color(0xFF3E6C86)),),
                                       const SizedBox(width: 5,),
                                        Text(phoneNumber,
                                          style:const TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: 'FontFont',
                                              color: Color(0xFF3E6C86)),),
                                       const SizedBox(width: 10,),
                                        const Text("جوال",
                                          style: TextStyle(fontSize: 12,
                                              fontWeight: FontWeight.normal ,
                                              fontFamily: 'FontFont',
                                              color: Color(0xFF3E6C86)),),
                                       const SizedBox(width: 5,),

                                      const  Image(image: AssetImage('images/Phone_icon.png'),height: 15,width: 15,),
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
                                      children:   [
                                       const Image(image: AssetImage('images/Email_icon.png'),height: 15,width: 15,),
                                       const SizedBox(width: 5,),
                                        SizedBox(
                                          width: 100,

                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child:  Text(email,
                                              softWrap: true,
                                              maxLines: 2,
                                              style:const TextStyle(fontSize: 12,
                                                  fontWeight: FontWeight.normal ,
                                                  fontFamily: 'FontFont',
                                                  color: Color(0xFF3E6C86)),),)

                                          ),

                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Image(image: AssetImage('images/Internet_icon.png'),height: 15,width: 15,),
                                        SizedBox(width: 5,),
                                        Text("qi.iq",
                                          style: TextStyle(fontSize: 12,
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
                                children: [
                                  Text(englishName,
                                    style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'FontFont',color: Color(0xFF3E6C86)),),
                                  Text(positionNameEnglish,
                                    style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal ,fontFamily: 'FontFont',color: Color(0xFF3E6C86)),),
                                 const SizedBox(height: 20,),


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
                                        children:   [

                                         const SizedBox(width: 5,),
                                          SizedBox(
                                            width: 125,

                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(email,
                                                maxLines: 2,
                                                style:const TextStyle(fontSize: 12,
                                                    fontWeight: FontWeight.normal ,
                                                    fontFamily: 'FontFont',
                                                    color: Color(0xFF3E6C86)),),
                                            ),
                                          ),
                                         const Image(image: AssetImage('images/Email_icon.png'),height: 15,width: 15,),

                                        ],
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:  const [

                                          SizedBox(width: 5,),
                                          Text("qi.iq",
                                            style: TextStyle(fontSize: 12,
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
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:   [
                                         const Image(image: AssetImage('images/Phone_icon.png'),height: 15,width: 15,),
                                         const SizedBox(width: 10,),
                                         const Text("mob",
                                            style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                         const SizedBox(width: 5,),
                                        const  Text("+964",
                                            style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.normal ,
                                                fontFamily: 'FontFont',
                                                color: Color(0xFF3E6C86)),),
                                         const SizedBox(width: 5,),
                                          Text(phoneNumber,
                                            style:const TextStyle(fontSize: 12,
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
