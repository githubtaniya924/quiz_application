// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'signup_screen.dart';
// // import 'home_screen.dart';

// // void main() async {
  
// //   WidgetsFlutterBinding.ensureInitialized();

// //   if (kIsWeb) {
// //     await Firebase.initializeApp(
// //         options: const FirebaseOptions(
// //           //your configs go here
// //           apiKey: "AIzaSyChZwvnEVYjVE8x20Lh_A3BBEsgMHeJpmk",
// //   authDomain: "login-page-25ef6.firebaseapp.com",
// //   projectId: "login-page-25ef6",
// //   storageBucket: "login-page-25ef6.firebasestorage.app",
// //   messagingSenderId: "667183639980",
// //   appId: "1:667183639980:web:bac4c5948d9c36a4941e09",
// //   measurementId: "G-WJGFKTV534"
// //         ),
// //         );
// //   } else {
// //     await Firebase.initializeApp();
// //   }

// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: StreamBuilder<User?>(
// //         stream: FirebaseAuth.instance.authStateChanges(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.active) {
// //             return snapshot.hasData ? HomeScreen() : SignUpScreen();
// //           }
// //           return const Center(child: CircularProgressIndicator());
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// //import 'signin_screen.dart';
// import 'screen/signup_screen.dart';
// import 'screen/home_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// //import 'splash_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   if (kIsWeb) {
//     await Firebase.initializeApp(
//       options: const FirebaseOptions(
//         apiKey: "AIzaSyChZwvnEVYjVE8x20Lh_A3BBEsgMHeJpmk",
//         authDomain: "login-page-25ef6.firebaseapp.com",
//         projectId: "login-page-25ef6",
//         storageBucket: "login-page-25ef6.firebasestorage.app",
//         messagingSenderId: "667183639980",
//         appId: "1:667183639980:web:bac4c5948d9c36a4941e09",
//         measurementId: "G-WJGFKTV534",
//       ),
//     );
//   } else {
//     await Firebase.initializeApp();
//   }

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AuthCheck()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: FaIcon(
//           FontAwesomeIcons.brain,
//           size: 100,
//           color:Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class AuthCheck extends StatelessWidget {
//   const AuthCheck({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           return snapshot.hasData ? HomeScreen() : SignUpScreen();
//         }
//         return Scaffold(
//           body: Center(child: CircularProgressIndicator()),
//         );
//       },
//     );
//   }
// }
// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/welcome_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'screen/signup_screen.dart';
// //import 'screen/home_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await Firebase.initializeApp(
//   options: kIsWeb
//       ? const FirebaseOptions(
//           apiKey: "AIzaSyDfSBZDKVGF7nTLzfpHUnzOo0BCueGk6qc",
//           authDomain: "final-quiz-app-dev.firebaseapp.com",
//           projectId: "final-quiz-app-dev",
//           storageBucket: "final-quiz-app-dev.appspot.com",
//           messagingSenderId: "676303671809",
//           appId: "1:676303671809:web:ac24391ed832a82eece600",
//           measurementId: "G-FBJ3S79T2X",
//         )
//       : null, // Use default Firebase config for mobile
// );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AuthCheck()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: FaIcon(
//           FontAwesomeIcons.brain,
//           size: 100,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class AuthCheck extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           return snapshot.hasData ? WelcomeScreen() : SignInScreen();
//         }
//         return Scaffold(
//           body: Center(child: CircularProgressIndicator()),
//         );
//       },
//     );
//   }
// }


// import 'package:app_dev_final_project/screen/signin_screen.dart';
// import 'package:app_dev_final_project/screen/welcome_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// //import 'screen/signup_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await Firebase.initializeApp(
//     options: kIsWeb
//         ? const FirebaseOptions(
//             apiKey: "AIzaSyDfSBZDKVGF7nTLzfpHUnzOo0BCueGk6qc",
//             authDomain: "final-quiz-app-dev.firebaseapp.com",
//             projectId: "final-quiz-app-dev",
//             storageBucket: "final-quiz-app-dev.appspot.com",
//             messagingSenderId: "676303671809",
//             appId: "1:676303671809:web:ac24391ed832a82eece600",
//             measurementId: "G-FBJ3S79T2X",
//           )
//         : null, // Use default Firebase config for mobile
//   );

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => AuthCheck()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF192655),
//       body: Center(
//         child: FaIcon(
//           FontAwesomeIcons.brain,
//           size: 100,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class AuthCheck extends StatelessWidget {
//   const AuthCheck({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           return snapshot.hasData ? WelcomeScreen() : SignInScreen();
//         }
//         return Scaffold(
//           body: Center(child: CircularProgressIndicator()),
//         );
//       },
//     );
//   }
// }


import 'package:app_dev_final_project/screen/signin_screen.dart';
import 'package:app_dev_final_project/screen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:app_dev_final_project/tts_provider.dart'; // Ensure correct import


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: kIsWeb
        ? const FirebaseOptions(
            apiKey: "AIzaSyDfSBZDKVGF7nTLzfpHUnzOo0BCueGk6qc",
            authDomain: "final-quiz-app-dev.firebaseapp.com",
            projectId: "final-quiz-app-dev",
            storageBucket: "final-quiz-app-dev.appspot.com",
            messagingSenderId: "676303671809",
            appId: "1:676303671809:web:ac24391ed832a82eece600",
            measurementId: "G-FBJ3S79T2X",
          )
        : null, // Use default Firebase config for mobile
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TtsProvider()), // Added Provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthCheck()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF192655),
      body: Center(
        child: FaIcon(
          FontAwesomeIcons.lightbulb,
          size: 100,
          color: const Color.fromARGB(255, 230, 177, 32),
        ),
      ),
    );
  }
}

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return snapshot.hasData ? WelcomeScreen() : SignInScreen();
        }
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

