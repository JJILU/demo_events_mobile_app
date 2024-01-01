import 'package:flutter/material.dart';
import 'package:demo_events_mobile/landing_page.dart';
import 'package:demo_events_mobile/login_page.dart';
import 'package:demo_events_mobile/wellcome_page.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // placeholder login api end-point
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WellcomePage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/register.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Create an account, It's free",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(
                    label: "Password",
                    obscureText: true,
                  ),
                  inputFile(
                    label: "Confirm Password",
                    obscureText: true,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    // placeholder login api end-point
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LandingPage(),
                      ),
                    );
                  },
                  color: const Color(0xffFFC436),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Aready have an account? "),
                  InkWell(
                    onTap: () {
                      // placeholder login api end-point
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => const LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
