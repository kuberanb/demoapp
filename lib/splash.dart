
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'dart:html';
// import 'dart:js';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //gotoLogin();
checkUserLoggedIn();

    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/whatsapplogo.png",
          height: 100,
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
  }

Future<void> checkUserLoggedIn() async{

 final _sharedPrefs = await SharedPreferences.getInstance();

final _userLoggedIn =_sharedPrefs.getBool(SAVE_KEY_NAME);

if(_userLoggedIn == null || _userLoggedIn == false){

gotoLogin();

}else{

  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1) => Screenhome(),));

}

}


}
