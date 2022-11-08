import 'package:flutter/material.dart';




class LogoScreen extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  const LogoScreen({Key? key, required this.name ,required this.height,required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double nameConstraint=(((width/height)*300)-500);
    return Scaffold(
        appBar: AppBar(leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back, color: Color(0xFF3E6C86),size: 30,),),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Container(

                      height: 300,
                      width: (width/height)*300,

                      color:const Color(0xFF3E6C86),
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children:   [
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: SizedBox(
                                width:nameConstraint.isNegative ? 1 : nameConstraint,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(name,style:const TextStyle(
                                    fontFamily: '29LT Bukra',
                                   fontSize: 90,
                                   overflow:TextOverflow.ellipsis,
                                   fontWeight:FontWeight.bold,

                                   color: Color(0xFFFFDD00)

                           ),
                                  maxLines: 1,  ),
                                ),
                              ),
                            ),
                           const  SizedBox(width:50 ,),
                           const  Padding(padding:EdgeInsets.only(right: 150,top:50,bottom: 50),
                             child:Image(image:AssetImage('images/logo.png'),height: 150,width: 150,),
                      ),

                    ],
                  ),
    )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60,),
          GestureDetector(
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:const Color(0xFF3E6C86),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.download,
                    color: Colors.white,),
                    SizedBox(width: 10,),
                    Center(child:  Text('تنزيل',
                      style: TextStyle(fontFamily: '29LT Bukra',color: Colors.white,fontSize: 16),)),
                  ],
                ),
              ))
        ],
      ));
  }
}
