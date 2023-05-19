
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'forgot.dart';
import 'splash_screen.dart';
import 'sign_up.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOGIN PAGE'),
          backgroundColor: Color(0xffbf9456),
        ),
        body: const MyStatefulWidget(),
      ),

    );
  }
}



class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController= TextEditingController();
  TextEditingController passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
    child: ListView(
      children: <Widget> [

        Container(
          padding: EdgeInsets.all(20),
            height: 200,
            width: 200,
            child: Image.asset('images/img_1.png')
            
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(20),
          child: Text('SIGN IN',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffbf9456),
          ),),

        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color(0xffbf9456))
              ),
              labelText: 'UserName'
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10,10,10,10),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'
            ),
          ),
        ),
        
        TextButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>forgot_password())
              );
            },
            child:const Text('forgot password',
            style: TextStyle(color: Color(0xffbf9456) ),),
        ),

        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: const Text('Login'),
            style: ButtonStyle( backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xffbf9456))),
            onPressed: (){
              print(nameController.text);
              print(passwordController.text);
       },
          ),
        ),

        TextButton(
          child: Container(
            child: Text('Don\'t have an account? SignUp'),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUp())
            );
          }
        ),

        

      ],
    ),
    );
  }
}


