import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    Widget _buildNewPasswordTextField() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Icon(
              Icons.lock_outline_rounded,
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
              obscureText: true,
              decoration: InputDecoration(
                hintText: "New Password",
                hintStyle: const TextStyle(
                  fontSize: 17.5,
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
      );
    }

    Widget _buildConfirmNewPasswordTextField() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Icon(
              Icons.lock_outline_rounded,
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
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: const TextStyle(
                  fontSize: 17.5,
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
      );
    }

    // submit button
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
          margin: const EdgeInsets.only(
            top: 30.0,
            left: 25.0,
            right: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => {},
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Image.asset(
                  "assets/images/reset-password.png",
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Reset\nPassword",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    _buildNewPasswordTextField(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    _buildConfirmNewPasswordTextField(),
                    const SizedBox(
                      height: 50.0,
                    ),
                    _buildSubmitBtn(),
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
