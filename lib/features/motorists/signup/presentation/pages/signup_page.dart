import 'package:drivepay/features/motorists/signup/presentation/pages/carform_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drivepay/core/utilities/form_validator.dart';

class MTSignUpPage extends StatefulWidget {
  const MTSignUpPage({super.key});

  @override
  State<MTSignUpPage> createState() => _MTSignUpPageState();
}

class _MTSignUpPageState extends State<MTSignUpPage> {
  late final GlobalKey<FormState> formkey;
  late final TextEditingController _fullnameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    formkey = GlobalKey<FormState>();
    _fullnameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  "Register as motorist",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    fontSize: 24,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "eg.John Joe",
                    labelText: "Full Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  key: const Key("fullname"),
                  controller: _fullnameController,
                  validator: Validator.fullName,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "eg.noosrat@email.com",
                    labelText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  key: const Key("email"),
                  controller: _emailController,
                  validator: Validator.fullName,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "eg.bibFoot123@",
                    labelText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  key: const Key("password"),
                  controller: _passwordController,
                  validator: Validator.isPasswordValid,
                  obscureText: true,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                key: const Key("confirm-password"),
                controller: _confirmPasswordController,
                validator: (value) {
                  if (value != _passwordController.text) {
                    return "Password does not match";
                  }
                  return null;
                },
                obscureText: true,
              ),
              const Spacer(),
              TextButton(
                style: const ButtonStyle(
                  textStyle: MaterialStatePropertyAll(TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  )),
                ),
                onPressed: () {
                  //TODO:IMPLEMENT REGISTRATION ON PRESSED

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CarFormPage(),
                    ),
                  );
                },
                child: const Text("Register"),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
