import 'package:flutter/material.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({super.key});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  @override
  Widget build(BuildContext context) {
    Widget _buildOtpTextField() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          right: 20.0,
        ),
        width: 55.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const TextField(
          keyboardType: TextInputType.number,
          maxLength: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Color.fromRGBO(0, 10, 28, 1),
            fontWeight: FontWeight.w700,
            height: 1.40,
          ),
          decoration: InputDecoration(
            counter: Offstage(),
            border: InputBorder.none,
          ),
        ),
      );
    }

    // custom widget submit button
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
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Image.asset("assets/images/otp.png"),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enter OTP",
                          style: TextStyle(
                            fontSize: 36.0,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "A 4 digit code has been sent\n+260773939097",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            height: 1.40,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildOtpTextField(),
                          _buildOtpTextField(),
                          _buildOtpTextField(),
                          _buildOtpTextField(),
                        ],
                      ),
                    ),
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
