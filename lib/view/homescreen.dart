import 'package:flutter/material.dart';
import 'package:majed/constant.dart';
import 'package:majed/view/detailsscreen.dart';
import 'package:majed/view/loginscreen.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
      FloatingActionButtonLocation.startFloat,
      backgroundColor: Color.fromRGBO(246, 248, 251, 1),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 2,
        centerTitle: false,
        titleSpacing: 0.0,
        leadingWidth: 70,
        backgroundColor: AppColor.secondary,
        leading: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            left: 15,
            top: 5,
            bottom: 5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {  },
            icon: Icon(
              Icons.notifications_none_sharp,
              color: AppColor.secondary,
              size: 30,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                textAlign: TextAlign.end,
                  style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                  'اهلا وسهلا بك نورتنا\n!يرجى تسجيل الدخول,هنا'
              ),
            ),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10,),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: 10,
                      controller: PageController(viewportFraction: 0.8),
                      onPageChanged: (int index)=>setState(()=>_index = index),
                      itemBuilder: (_,i){
                      return Transform.scale(
                        scale: i==_index? 1 : 0.9,
                        child: GestureDetector(
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
                            child: Image.asset(
                               fit: BoxFit.contain,
                                'assets/images/majed.jpg'),
                            // elevation: 6,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(20),
                            // ),
                          ),
                        ),
                      );
                      }

                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 1,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          // elevation: 20,
                          margin: EdgeInsets.all(15),
                          // color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "متاجر",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                    textAlign: TextAlign.end,
                                    'تسوق و اشترى كل احتياجاتك بضغطة زر'
                                ),
                                Image.asset(
                                  'assets/images/online-store.png',
                                  width: 200,
                                  height: 150,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen()),

                          );

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 1,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          margin: EdgeInsets.all(15),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "طلقة بلاس",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                    textAlign: TextAlign.end,
                                    'توصيل سريع لأى شئ من و الى اى مكان'),
                                Image.asset(
                                  'assets/images/fast-delivery.png',
                                  width: 200,
                                  height: 150,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
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
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        height: 80,
        elevation: 1.5,
        selectedIndex: 4,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Iconsax.profile_2user,
              ),
              label: 'الحساب'),
          NavigationDestination(
              icon: Icon(
                Iconsax.heart,
              ),
              label: 'المفضلة'),
          NavigationDestination(
              icon: Icon(
                Iconsax.shopping_cart,
              ),
              label: 'السلة'),
          NavigationDestination(
              icon: Icon(
                Iconsax.note,
              ),
              label: 'طلباتى'),
          NavigationDestination(
              icon: Icon(
                Iconsax.home,
              ),
              label: 'الرئيسة'),
        ],
      ),
    );
  }
}
