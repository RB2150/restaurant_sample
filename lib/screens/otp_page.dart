import 'package:flutter/material.dart';

import '../palatte.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
              Spacer(
                flex: 1,
              ),
              Text(
                "Login",
                style: lgtxt,
              ),
              SizedBox(
                height: 25,
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
                          builder: (context) => OTPPage(),
                        ));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  child: const Text("SUBMIT",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                alignment: Alignment.centerRight,
                child: Text(
                  'Delivery Boy Login? ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
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
