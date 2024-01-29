import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:majed/constant.dart';
import 'package:majed/view/homescreen.dart';

import '../widgets/custom_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formSignupKey = GlobalKey<FormState>();
  bool agreePersonalData = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                // get started form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // get started text
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: AppColor.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // password
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              style:TextStyle(

                                fontSize:15,
                                color: AppColor.primary,
                                fontWeight: FontWeight.bold,
                              ),
                              '*رقم الجوال'
                          ),
                          IntlPhoneField(
                            initialCountryCode: 'YE',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                            dropdownIconPosition: IconPosition.trailing,
                            decoration: InputDecoration(
                              label: const Text('ادخل رقم الجوال'),
                              hintStyle: const TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    // signup button
                    Container(
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

                    SizedBox(height: 260,),
                    Text(
                      style:TextStyle(
                        fontSize: 18,
                      ),
                      'بالنقر على تسجيل الدخول فأنت توافق على'
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: const Text(
                        'شروط الخدمة و سياسة الخصوصية',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
