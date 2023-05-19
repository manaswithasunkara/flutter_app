import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:login_page/main.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5), ()=>{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> MyApp1()))
    });
    
  }
@override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black,Color(0xffbf9456)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/img_1.png'),
            SizedBox(height:20,),
            Text('Forge Alumnus',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 40
            ),)
          ],
        ),
      ),
    );
  }
}

