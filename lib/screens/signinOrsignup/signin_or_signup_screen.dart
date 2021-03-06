import 'package:chat_app_ui/btm_baar/btm_baar.dart';
import 'package:chat_app_ui/components/primary_button.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 146,
            ),
            Spacer(),
            PrimaryButton(
              text: "Sign In",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BtmBaar()
                  
                    ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            PrimaryButton(
              text: "Sign Up",
              color: Theme.of(context).colorScheme.secondary,
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BtmBaar()
                    // ChatScreen(),
                    ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
