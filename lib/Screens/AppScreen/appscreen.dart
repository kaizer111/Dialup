import 'package:dialup/Screens/Auth/Signup.dart';
import 'package:dialup/constants/color.dart';
import 'package:dialup/utils/device_size.dart';
import 'package:flutter/material.dart';

class Appscreen extends StatelessWidget {
  const Appscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              height: displayHeight(context)*0.45,
              width: double.infinity,
              child: Image.asset('assets/images/dialuplogo.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              'Connect Instantly,',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              'Solve Effortlessly.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10,top: 20),
            child: MaterialButton(
              color: AppColor.light,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
              },
              child: Container(
                width: double.infinity,
                height: displayHeight(context)*0.06,
                child: Center(
                  child: Text('SignUp',
                      style: TextStyle(
                          color: Colors.white, fontSize: 26,fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 20),
            child: MaterialButton(
              color: AppColor.light,
              onPressed: () {},
              child: Container(
                height: displayHeight(context)*0.06,
                width: double.infinity,
                child: Center(
                  child: Text('SignIn',
                      style: TextStyle(
                          color: Colors.white,fontSize: 26 ,fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Divider(indent: 20,endIndent: 20,
            color: Colors.white,
            height: displayHeight(context)*0.02,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: displayHeight(context)*0.10,
              width: double.infinity,
              child: Image.asset('assets/images/img.icons8.png'),
            ),
          ),
        ],
      ),
    );
  }
}
