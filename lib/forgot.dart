import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class forgot_password extends StatelessWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'FORGOT PASSWORD',
     home: Scaffold(
       appBar: AppBar(
         title: Text('FORGOT PASSWORD'),
         backgroundColor: Color(0xffbf9456),
       ),
       body: forgotwidget() ,
     ),
    );
  }
}
class forgotwidget extends StatefulWidget {
  const forgotwidget({Key? key}) : super(key: key);

  @override
  State<forgotwidget> createState() => _forgotwidgetState();
}

class _forgotwidgetState extends State<forgotwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Padding(padding: EdgeInsets.all(10),
    child: ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text('Please Enter the OTP',
          style: TextStyle(
            color: Color(0xffbf9456),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ),
        OtpTextField(
          numberOfFields: 4,
          borderColor: Color(0xffbf9456),
          showFieldAsBox: true,
          onCodeChanged: (String code){
            //validation code
          },
          onSubmit: (String OTPcode) {
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $OTPcode'),
                  );
                }
                );
          },

        )
      ],
    ),
    ),
    ),
    );
  }
}
