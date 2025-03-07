// import 'package:app_dev_final_project/screen/auth_service.dart';
// import 'package:flutter/material.dart';
// //import '../services/auth_service.dart';
// import 'home_screen.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signIn() async {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Please fill in all fields')));
//       return;
//     }

//     var user = await _authService.signInWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (_) => HomeScreen()));
//     } else {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Sign-in Failed')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sign In")),
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
//             ElevatedButton(onPressed: signIn, child: Text("Sign In")),
//           ],
//         ),
//       ),
//     );
//   }
// } 

// import 'package:app_dev_final_project/screen/auth_service.dart';
// import 'package:flutter/material.dart';
// import 'home_screen.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signIn() async {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     var user = await _authService.signInWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign-in Failed')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF192655),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//             color: Colors.white,
//             elevation: 10,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "Sign In",
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF192655),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextField(
//                     controller: passwordController,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                     obscureText: true,
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: signIn,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF192655),
//                       foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     ),
//                     child: Text("Sign In"),
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


// import 'package:app_dev_final_project/screen/auth_service.dart';
// import 'package:flutter/material.dart';
// import 'home_screen.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signIn() async {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     var user = await _authService.signInWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign-in Failed')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Colors.white],
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
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Icon(
//                             Icons.arrow_back_ios,
//                             color: Color(0xFF192655),
//                             size: 24,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Text(
//                           "Sign In",
//                           style: TextStyle(
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF192655),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         labelText: "Email",
//                         prefixIcon: Icon(Icons.email, color: Color(0xFF192655)),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15.0),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     TextField(
//                       controller: passwordController,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         prefixIcon: Icon(Icons.lock, color: Color(0xFF192655)),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15.0),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 20),
//                     Align(
//                       alignment: Alignment.center,
//                       child: ElevatedButton(
//                         onPressed: signIn,
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xFF192655),
//                           foregroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                           padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//                         ),
//                         child: Text("Sign In", style: TextStyle(fontSize: 16)),
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




// import 'package:app_dev_final_project/screen/auth_service.dart';
// import 'package:flutter/material.dart';
// import 'home_screen.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   Future<void> signIn() async {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     var user = await _authService.signInWithEmailPassword(
//       emailController.text.trim(),
//       passwordController.text.trim(),
//     );

//     if (user != null) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign-in Failed')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF192655), Colors.white],
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
//                     TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         labelText: "Email",
//                         prefixIcon: Icon(Icons.email, color: Color(0xFF192655)),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     TextField(
//                       controller: passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         prefixIcon: Icon(Icons.lock, color: Color(0xFF192655)),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: signIn,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF192655),
//                         foregroundColor: Colors.white,
//                       ),
//                       child: Text("Sign In"),
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




import 'package:app_dev_final_project/screen/auth_service.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'signup_screen.dart'; // Import the signup screen

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  Future<void> signIn() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    var user = await _authService.signInWithEmailPassword(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    if (user != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign-in Failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF192655), Colors.white],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF192655),
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF192655),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email, color: Color(0xFF192655)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Color(0xFF192655)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: signIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF192655),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                        ),
                        child: Text("Sign In", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Text(
                          "Sign up to Create Account",
                          style: TextStyle(
                            color: Color(0xFF192655),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
