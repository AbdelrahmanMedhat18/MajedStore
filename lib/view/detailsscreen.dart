import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constant.dart';
import 'homescreen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 251, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.secondary,
        title: Center(
          child: Text(
            style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            'طلقة بلس'
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              icon:  Icon(
                color: Colors.white,
            Icons.arrow_forward_sharp
              ),
          ),
        ],
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        backgroundColor: AppColor.secondary,
        onPressed: (){
        },
        tooltip: 'Call',
        child: const Icon(
          size: 28,
          Icons.phone_in_talk_sharp,
          color: Colors.white,

        ),
      ),
      bottomNavigationBar: new Stack(
        clipBehavior: Clip.none, alignment: new FractionalOffset(.5, 1.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.error,
              ),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                },
                child: const Text(
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    'تسجيل الدخول'
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        // offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp
                      ),
                      SizedBox(width: 265,),
                      Flexible(
                        child: Text(
                            textAlign: TextAlign.end,
                            'من\n-------'
                        ),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        // offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Icon(
                          Icons.arrow_back_ios_new_sharp
                      ),
                      SizedBox(width: 265,),
                      Flexible(
                        child: Text(

                            textAlign: TextAlign.end,
                            'الى\n-------'
                        ),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        // offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                      SizedBox(width: 135,),
                      Column(
                        children: [
                          Text(
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                              'نوع المنقولات'
                          ),

                          Text('يرجى تحديد نوع المنقولات'),
                        ],
                      ),

                      Icon(
                        Iconsax.box,
                      ),


                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        // offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                      SizedBox(width: 175,),
                      Column(
                        children: [

                          Text(
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              'وسيلة التوصيل'
                          ),
                          Text('دراجة'),
                        ],
                      ),


                      Icon(
                        Iconsax.truck,
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      // offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                            "ملاحظات"
                        ),
                        SizedBox(width: 5,),

                        Icon(Iconsax.stickynote),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        SizedBox(
                          height: 250, // set desired height here
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'هل هناك شئ تريد ان تخبرنا به؟',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      // offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            "صورة مرفقة"
                        ),
                        SizedBox(width: 5,),

                        Icon(Iconsax.image),
                      ],
                    ),
                    SizedBox(height: 10,),

                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              // offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: double.infinity,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    // offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () {  },
                                    child: Icon(
                                      size: 60,
                                        color: Colors.grey,
                                        Icons.image_outlined),
                                  ),
                                  Text(
                                    style:TextStyle(
                                      color: Colors.grey,
                                    ),
                                      "اضافة صورة"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
