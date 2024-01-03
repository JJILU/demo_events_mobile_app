import 'package:demo_events_mobile/user_authentication/otp_verification.dart';
// import 'package:demo_events_mobile/user_services/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:demo_events_mobile/user_authentication/login_page.dart';

class ForgortPasswordPage extends StatefulWidget {
  const ForgortPasswordPage({super.key});

  @override
  State<ForgortPasswordPage> createState() => _ForgortPasswordPageState();
}

class _ForgortPasswordPageState extends State<ForgortPasswordPage> {
  @override
  Widget build(BuildContext context) {

    // method 1: custom widget for text field
    Widget passwordTextField({label, obscureText = false}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      );
    }

// method 1 : submit button
    Widget submitButton() {
      return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15), // horizontal: 40
                    
                    child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // border: const Border(
                        //   bottom: BorderSide(
                        //     color: Colors.black,
                        //   ),
                        //   top: BorderSide(
                        //     color: Colors.black,
                        //   ),
                        //   left: BorderSide(
                        //     color: Colors.black,
                        //   ),
                        //   right: BorderSide(
                        //     color: Colors.black,
                        //   ),
                        // ),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          // placeholder otp verification api end-point
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpVerifyPage(),
                            ),
                          );
                        },
                        color: const Color(0xffFFC436),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0), //50
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700, //w600
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  );
    }

    // method 2: email input text field
    Widget _buildPasswordTextField() {
      return Container(
        margin: const EdgeInsets.only(right: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.alternate_email_sharp,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: "Email ID / Mobile Number",
                  hintStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey[700]!,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // method 2: submit button text field
    Widget _buildSubmitBtn() {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          onPressed: () => {},
          elevation: 0.0,
          highlightElevation: 0.0,
          color: const Color(0xffFFC436),
          padding: const EdgeInsets.symmetric(
            vertical: 18.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Text(
            "Submit",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Image.asset("assets/images/forgot-password.png"),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Forgot \nPassword?",
                          style: TextStyle(
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Don't worry it happens. Please enter the address associated with your account.",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        // method 1
                        // passwordTextField(label: "Email ID / Mobile Number"),
                        // method 2
                        _buildPasswordTextField(),
                        const SizedBox(
                          height: 50.0,
                        ),
                        // method 1
                        submitButton()
                        // method 2
                        // _buildSubmitBtn(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
