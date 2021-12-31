import 'package:milk_delivery_flutter/components/no_account_text.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'signin_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: (28),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sign in with your Username and Password",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            SignForm()
          ],
        ),
      ),
    );
  }
}
