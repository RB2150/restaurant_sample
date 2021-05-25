import 'package:flutter/material.dart';
import 'package:sample/screens/home_page.dart';

import '../palatte.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/lg_bg.png'))),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                child: Center(
                  child: Text(
                    'YummBites',
                    style: rHeading,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Verify Mobile number!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Please entry the otp sent to your device on the number **********",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                padding: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16)),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintStyle: hintText,
                      border: InputBorder.none,
                      hintText: "Enter Mobile Number"),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                alignment: Alignment.centerRight,
                child: Text(
                  'Resend OTP ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  child: const Text("VERIFY",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
