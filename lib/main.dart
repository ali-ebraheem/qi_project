import 'package:flutter/material.dart';
import 'package:qi_project/business_card.dart';

import 'dashboard.dart';
import 'logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var formKey = GlobalKey<FormState>();
  String replaceArabicNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }

    return input;
  }
  TextEditingController nameController =TextEditingController();
  TextEditingController heightController =TextEditingController();
  TextEditingController widthController =TextEditingController();
  @override
  Widget build(BuildContext context) {

    return

      Scaffold(

      body:Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const SizedBox(height: 100, width: 100,
               child: Image(image:AssetImage('images/logo.png'))),
            const SizedBox(height: 40,),
            Center(
              child: SizedBox(

               width: 400,
                child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'ادخل اسم المنفذ';
                    }
                      return null;},
                    decoration: InputDecoration(

                        labelText: 'ادخل اسم المنفذ',
                        labelStyle:const TextStyle(fontFamily: '29LT Bukra',color: Colors.black26,fontSize: 14),

                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 3, color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Color(0xFF3E6C86)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const  BorderSide(width: 3, color: Color(0xFF3E6C86)),
                          borderRadius: BorderRadius.circular(20),
                        )),
              ),),
            ),
           const SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    width: 175,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: heightController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل الطول';
                        }
                        return null ;},
                      decoration: InputDecoration(
                          labelText: 'ادخل الارتفاع بالمتر',
                          labelStyle:const TextStyle(fontFamily: '29LT Bukra',color: Colors.black26,fontSize: 14),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xFF3E6C86)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const  BorderSide(width: 3, color: Color(0xFF3E6C86)),
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),),
                  const  SizedBox(width: 50,),
                  SizedBox(
                    width: 175,
                    child: TextFormField(

                      keyboardType: TextInputType.number,
                      controller: widthController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل العرض';
                        }else if((double.parse(replaceArabicNumber(widthController.text)))/(double.parse(replaceArabicNumber(heightController.text)))<2){
                          return 'يجب ان يكون العرض على الاقل ضعف الارتفاع';
                        }

                        return null ;},
                      decoration: InputDecoration(
                          errorMaxLines: 2,
                          labelText: 'ادخل العرض بالمتر',
                          labelStyle:const TextStyle(fontFamily: '29LT Bukra',color: Colors.black26,fontSize: 14),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 1, color: Color(0xFF3E6C86)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const  BorderSide(width: 3, color: Color(0xFF3E6C86)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            GestureDetector(
                onTap: (){
        if (formKey.currentState!.validate()) {
          Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    LogoScreen(name: nameController.text,
                      width: double.parse(replaceArabicNumber(widthController.text)),
                      height: double.parse(replaceArabicNumber(heightController.text)),)),);
    }

                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  color:const Color(0xFF3E6C86),
              ),
                  child:const Center(child:  Text('تم',
                    style: TextStyle(fontFamily: '29LT Bukra',color: Colors.white,fontSize: 14),
                  ),
                  ),
            ),
            ),
        ],
        ),
      ),
    );
  }
}
