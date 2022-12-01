import 'package:flutter/material.dart';
import 'package:qi_project/business_card.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var formKey = GlobalKey<FormState>();
  String replaceArabicNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }

    return input;
  }
  TextEditingController arabicNameController =TextEditingController();
  TextEditingController englishNameController =TextEditingController();
  TextEditingController positionNameArabicController =TextEditingController();
  TextEditingController positionNameEnglishController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return

      Scaffold(

        body:Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                const SizedBox(height: 250, width: 550,
                    child: Image(image:AssetImage('images/business_card.png'))),
                const SizedBox(height: 40,),
                //arabic name field
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: arabicNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل الاسم بالعربي';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل الاسم بالعربي',
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
                //english name field
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: englishNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل الاسم بالانجليزي';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل الاسم بالانجليزي',
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
                // position name in arabic
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: positionNameArabicController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل العنوان الوضيفي بالعربي';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل العنوان الوضيفي بالعربي',
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
                //position name in english
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: positionNameEnglishController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل العنوان الوضيفي بالانجليزي';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل العنوان الوضيفي بالانجليزي',
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
                //Email
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل الايميل';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل الايميل',
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
                // phone number
                Center(
                  child: SizedBox(

                    width: 400,
                    child: TextFormField(
                      controller: phoneNumberController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ادخل رقم الهاتف';
                        }
                        return null;},
                      decoration: InputDecoration(

                          labelText: 'ادخل رقم الهاتف  +964',
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
                const SizedBox(
                  height: 40,
                ),

                GestureDetector(
                  onTap: (){
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessCard(
                        arabicName: arabicNameController.text,
                        englishName: englishNameController.text,
                        phoneNumber: replaceArabicNumber(phoneNumberController.text),
                        email: emailController.text,
                        positionNameArabic: positionNameArabicController.text,
                        positionNameEnglish: positionNameEnglishController.text,
                      )));

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
               const SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      );
  }
}
