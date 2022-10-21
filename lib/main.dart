import 'package:drivepay/features/motorists/signup/presentation/pages/signup_page.dart';
import 'package:drivepay/core/utilities/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const DrivePay());
}

class DrivePay extends StatefulWidget {
  const DrivePay({super.key});

  @override
  State<DrivePay> createState() => _DrivePayState();
}

class _DrivePayState extends State<DrivePay> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drive Pay',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const OnBoardingScreen(),
    );
  }
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drive Pay", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                "Select User",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent[300]),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    fixedSize: const MaterialStatePropertyAll(Size(280, 80)),
                    textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MTSignUpPage(),
                      ));
                },
                child: const Text("Motorist"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent[300]),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    fixedSize: const MaterialStatePropertyAll(Size(280, 80)),
                    textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
                onPressed: () {},
                child: const Text("IT Manager"),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent[300]),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                  fixedSize: const MaterialStatePropertyAll(Size(280, 80)),
                  textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
              onPressed: () {},
              child: const Text("Toll Manager"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
