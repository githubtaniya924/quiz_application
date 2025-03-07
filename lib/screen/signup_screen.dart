// import 'package:flutter/material.dart';
// import 'auth_service.dart';
// import 'signin_screen.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signUp() async {
//     var user = await _authService.signUpWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Signup Successful!')));
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Signup Failed')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sign Up")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(labelText: "Email")),
//             TextField(
//                 controller: passwordController,
//                 decoration: InputDecoration(labelText: "Password"),
//                 obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
//             TextButton(
//               onPressed: () => Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => SignInScreen())),
//               child: Text("Already have an account? Sign In"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:app_dev_final_project/screen/auth_service.dart';
// import 'package:flutter/material.dart';
// import 'signin_screen.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signUp() async {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
//       return;
//     }

//     var user = await _authService.signUpWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Signup Successful!')));
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Signup Failed')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sign Up")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(labelText: "Email")),
//             TextField(
//                 controller: passwordController,
//                 decoration: InputDecoration(labelText: "Password"),
//                 obscureText: true),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
//             TextButton(
//               onPressed: () => Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => SignInScreen())),
//               child: Text("Already have an account? Sign In"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:app_dev_final_project/screen/auth_service.dart';
import 'package:app_dev_final_project/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  Future<void> signUp() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
      return;
    }

    var user = await _authService.signUpWithEmailPassword(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    if (user != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Signup Successful!')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Signup Failed')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1E3C72), Color(0xFF2A5298)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E3C72),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: ()=>Navigator.push(
                              context, MaterialPageRoute(builder: (_) => WelcomeScreen())),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1E3C72),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context, MaterialPageRoute(builder: (_) => SignInScreen())),
                          child: Text(
                            "Already have an account? Sign In",
                            style: TextStyle(color: Color(0xFF1E3C72)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';
// import 'home_screen.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedCountry = "Select Country";

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> signUp() async {
//     if (nameController.text.isEmpty ||
//         phoneController.text.isEmpty ||
//         selectedCountry == "Select Country" ||
//         emailController.text.isEmpty ||
//         passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       await _firestore.collection('users').doc(userCredential.user!.uid).set({
//         'name': nameController.text.trim(),
//         'phone': phoneController.text.trim(),
//         'country': selectedCountry,
//         'email': emailController.text.trim(),
//         'totalQuizzes': 0,
//         'bestScore': 0,
//         'accuracy': 0.0,
//       });

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign-up Failed: ${e.toString()}')),
//       );
//     }
//   }

//   void selectCountry() {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: false,
//       onSelect: (Country country) {
//         setState(() {
//           selectedCountry = country.name;
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25.0),
//             ),
//             color: Colors.white,
//             elevation: 10,
//             child: Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextField(
//                     controller: nameController,
//                     decoration: InputDecoration(labelText: "Full Name"),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     controller: phoneController,
//                     decoration: InputDecoration(labelText: "Phone Number"),
//                   ),
//                   const SizedBox(height: 10),
//                   InkWell(
//                     onTap: selectCountry,
//                     child: InputDecorator(
//                       decoration: InputDecoration(
//                         labelText: "Country",
//                         border: OutlineInputBorder(),
//                       ),
//                       child: Text(selectedCountry),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(labelText: "Email"),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     controller: passwordController,
//                     decoration: InputDecoration(labelText: "Password"),
//                     obscureText: true,
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: signUp,
//                     child: Text("Sign Up"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';
// import 'home_screen.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedCountry = "Select Country";

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> signUp() async {
//     if (nameController.text.isEmpty ||
//         phoneController.text.isEmpty ||
//         selectedCountry == "Select Country" ||
//         emailController.text.isEmpty ||
//         passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       await _firestore.collection('users').doc(userCredential.user!.uid).set({
//         'name': nameController.text.trim(),
//         'phone': phoneController.text.trim(),
//         'country': selectedCountry,
//         'email': emailController.text.trim(),
//         'totalQuizzes': 0,
//         'bestScore': 0,
//         'accuracy': 0.0,
//       });

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => const HomeScreen()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign-up Failed: ${e.toString()}')),
//       );
//     }
//   }

//   void selectCountry() {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: false,
//       onSelect: (Country country) {
//         setState(() {
//           selectedCountry = country.name;
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Color(0xFF283885)],
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               color: Colors.white,
//               elevation: 10,
//               child: Padding(
//                 padding: const EdgeInsets.all(25.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       "Sign Up",
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF192655),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     TextField(
//                       controller: nameController,
//                       decoration: const InputDecoration(labelText: "Full Name"),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: phoneController,
//                       decoration: const InputDecoration(labelText: "Phone Number"),
//                     ),
//                     const SizedBox(height: 10),
//                     InkWell(
//                       onTap: selectCountry,
//                       child: InputDecorator(
//                         decoration: const InputDecoration(
//                           labelText: "Country",
//                           border: OutlineInputBorder(),
//                         ),
//                         child: Text(selectedCountry),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: emailController,
//                       decoration: const InputDecoration(labelText: "Email"),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: passwordController,
//                       decoration: const InputDecoration(labelText: "Password"),
//                       obscureText: true,
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: signUp,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF192655),
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                       ),
//                       child: const Text("Sign Up", style: TextStyle(fontSize: 18)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/welcome_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';
// import 'home_screen.dart';
// //import 'sign_in_screen.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedCountry = "Select Country";

//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> signUp() async {
//   if (nameController.text.isEmpty ||
//       phoneController.text.isEmpty ||
//       selectedCountry == "Select Country" ||
//       emailController.text.isEmpty ||
//       passwordController.text.isEmpty) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Please fill in all fields')),
//     );
//     return;
//   }

//   try {
//     // 🔍 Step 1: Check Firebase Authentication if the email already exists
//     List<String> signInMethods = await _auth.fetchSignInMethodsForEmail(emailController.text.trim());

//     if (signInMethods.isNotEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('This email is already registered. Please sign in.')),
//       );
//       return;
//     }

//     // ✅ Step 2: Proceed with Sign-up if email is not found in Firebase Auth
//     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//       email: emailController.text.trim(),
//       password: passwordController.text.trim(),
//     );

//     await _firestore.collection('users').doc(userCredential.user!.uid).set({
//       'name': nameController.text.trim(),
//       'phone': phoneController.text.trim(),
//       'country': selectedCountry,
//       'email': emailController.text.trim(),
//       'totalQuizzes': 0,
//       'bestScore': 0,
//       'accuracy': 0.0,
//     });

//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (_) => const HomeScreen()),
//     );
//   } on FirebaseAuthException catch (e) {
//     String errorMessage = "Sign-up Failed!";
//     if (e.code == 'email-already-in-use') {
//       errorMessage = 'This email is already registered. Please sign in.';
//     } else if (e.code == 'weak-password') {
//       errorMessage = 'Password is too weak. Use at least 6 characters.';
//     } else if (e.code == 'invalid-email') {
//       errorMessage = 'Invalid email format. Please enter a valid email.';
//     }

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text(errorMessage)),
//     );
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: ${e.toString()}')),
//     );
//   }
// }


//   void selectCountry() {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: false,
//       onSelect: (Country country) {
//         setState(() {
//           selectedCountry = country.name;
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Color(0xFF283885)],
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(25.0),
//               ),
//               color: Colors.white,
//               elevation: 10,
//               child: Padding(
//                 padding: const EdgeInsets.all(25.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       "Sign Up",
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF192655),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     TextField(
//                       controller: nameController,
//                       decoration: const InputDecoration(
//                         labelText: "Full Name",
//                         prefixIcon: Icon(Icons.person),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: phoneController,
//                       decoration: const InputDecoration(
//                         labelText: "Phone Number",
//                         prefixIcon: Icon(Icons.phone),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     InkWell(
//                       onTap: selectCountry,
//                       child: InputDecorator(
//                         decoration: const InputDecoration(
//                           labelText: "Country",
//                           border: OutlineInputBorder(),
//                           prefixIcon: Icon(Icons.flag),
//                         ),
//                         child: Text(selectedCountry),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: emailController,
//                       decoration: const InputDecoration(
//                         labelText: "Email",
//                         prefixIcon: Icon(Icons.email),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextField(
//                       controller: passwordController,
//                       decoration: const InputDecoration(
//                         labelText: "Password",
//                         prefixIcon: Icon(Icons.lock),
//                       ),
//                       obscureText: true,
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//   onPressed: () {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => const WelcomeScreen()), // ✅ Navigate to WelcomeScreen
//     );
//   },
//   style: ElevatedButton.styleFrom(
//     backgroundColor: const Color(0xFF192655),
//     foregroundColor: Colors.white,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//   ),
//   child: const Text("Sign Up", style: TextStyle(fontSize: 18)),
// ),

//                     const SizedBox(height: 15),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => const SignInScreen()),
//                         );
//                       },
//                       child: const Text(
//                         "Already have an account? Sign In",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Color(0xFF192655),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

