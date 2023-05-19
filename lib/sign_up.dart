import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SIGNUP'),
          backgroundColor: Color(0xffbf9456),
        ),
        body: const SignUp1(),
      ),
    );
  }
}

class SignUp1 extends StatelessWidget {
  const SignUp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/img_3.png'),
                height: size.height * 0.35,
              ),
              Text('Get On Board!', style: Theme
                  .of(context)
                  .textTheme
                  .headlineLarge,),
              Text('Create your profile to start your journey',
                style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300)
                ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('FullName'),
                          prefixIcon: Icon(Icons.person_outline_rounded),
                          border: OutlineInputBorder(),
                          iconColor: Color(0xffbf9456),
                          labelStyle: TextStyle(color: Color(0xffbf9456)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2,color: Color(0xffbf9456))
                          ),

                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('E-Mail'),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(),
                          iconColor: Color(0xffbf9456),
                          labelStyle: TextStyle(color: Color(0xffbf9456)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2,color: Color(0xffbf9456))
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Phone No'),
                          prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(),
                          iconColor: Color(0xffbf9456),
                          labelStyle: TextStyle(color: Color(0xffbf9456)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2,color: Color(0xffbf9456))
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.fingerprint_outlined),
                          border: OutlineInputBorder(),
                          iconColor: Color(0xffbf9456),
                          labelStyle: TextStyle(color: Color(0xffbf9456)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2,color: Color(0xffbf9456))
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                          child: ElevatedButton(onPressed: (){
                            AlertDialog(
                              title: Text('Succefully Registered'),
                              content: Text('Yay!You have successfully registered'),
                            );
                          },
                              child: const Text('SignUp'),
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepOrange)),
                          ))
                    ],
                  ),
                ),
              )
              

            ],
          ),
        ),
      ),
    );

  }
}