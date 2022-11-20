import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddelevery/core/core.dart';

import 'package:fooddelevery/gotonextScreen/nextscreen.dart';
import 'package:fooddelevery/main.dart';
import 'package:fooddelevery/page/mainpage.dart';
import 'package:fooddelevery/views/auth/validation.dart';
import 'package:fooddelevery/views/logg/loggin.dart';
import 'package:fooddelevery/views/messegenotify/custommessege.dart';
import 'package:fooddelevery/views/view_self.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisibled = false;

  final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  final _fromkey = GlobalKey<FormState>();

  String username = "";
  String email = "";
  String password = "";
  final nameControlar = TextEditingController();
  final emailControlar = TextEditingController();
  final passwordcontrolar = TextEditingController();
  final confirmPassword = TextEditingController();

  // ignore: annotate_overrides
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    super.initState();
  }

  visiblepassword() {
    setState(() {
      isPasswordVisibled = true;
      Future.delayed(const Duration(seconds: 3)).then((value) {
        setState(() {
          isPasswordVisibled = false;
        });
      });
    });
  }

  emailWithPassswordSave() async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: emailControlar.text,
        password: passwordcontrolar.text,
      );
      // ignore: use_build_context_synchronously
      CustomSnacbar(isWrning: false)
          .snackbarMassege(context, 'Save SucessFully');
      // ignore: use_build_context_synchronously
      pushTo(context, const MainPage());

      setState(() {
        nameControlar.text = "";
        emailControlar.text = "";
        passwordcontrolar.text = "";
        confirmPassword.text = "";
      });
      // ignore: use_build_context_synchronously

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {
        CustomSnacbar(isWrning: true).snackbarMassege(
            context, 'The account already exists for that email');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                key: _fromkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    const Center(
                      child: Text(
                        "Food Delevery",
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Registerd  Your Account",
                        style: TextStyle(
                            fontSize: 44.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 44.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required Name ";
                        }

                        return null;
                      },
                      keyboardType: TextInputType.name,
                      onSaved: (value) {
                        username = value!;
                      },
                      decoration: const InputDecoration(
                          hintText: "Enter Your Name Here",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.amber,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailControlar,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required Email ";
                        } else if (!emailRegExp.hasMatch(value)) {
                          return "Right Email Addres";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) {
                        email = value!;
                      },
                      decoration: const InputDecoration(
                          hintText: "Enter Your Email Here",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.amber,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordcontrolar,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Required Password";
                        } else if (value.length < 6) {
                          return "week Password";
                        } else {
                          return null;
                        }
                      },
                      obscureText: !isPasswordVisibled,
                      onSaved: (value) {
                        password = value!;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password here",
                        hintStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.amber,
                        ),
                        suffixIcon: IconButton(
                          icon: isPasswordVisibled
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.amber,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.amber,
                                ),
                          onPressed: () {
                            visiblepassword();
                          },
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: confirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Confirm Password";
                        } else if (value != passwordcontrolar.text) {
                          return "Password MisMatch";
                        }

                        return null;
                      },
                      obscureText: !isPasswordVisibled,
                      onSaved: (value) {
                        password = value!;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Confirm Password here",
                        hintStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.amber,
                        ),
                        suffixIcon: IconButton(
                          icon: isPasswordVisibled
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.amber,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.amber,
                                ),
                          onPressed: () {
                            visiblepassword();
                          },
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: w20(context)),
                      child: TextButton(
                        onPressed: () {
                          pushTo(context, const AddressSetUp());
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 50)),
                    Row(
                      children: [
                        const Text(
                          "Already Have Account?",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        InkWell(
                          onTap: (() {
                            pushTo(context, const LogginScreen());
                          }),
                          child: const Text(
                            "Please Loggin",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RawMaterialButton(
                          splashColor: Colors.deepOrangeAccent,
                          highlightColor: Colors.amber,
                          fillColor: Colors.cyanAccent,
                          hoverColor: Colors.red,
                          focusColor: Colors.green,
                          onPressed: () {
                            if (validationAndSave(_fromkey)) {
                              emailWithPassswordSave();
                            }
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
