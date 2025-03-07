// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile"),
//         backgroundColor: Color(0xFF192655),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile Picture & Name
//             const SizedBox(height: 20),
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with user image
//             ),
//             const SizedBox(height: 10),
//             Text(
//               "John Doe", // Replace with actual user name
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 5),
//             Text("johndoe@email.com", style: TextStyle(color: Colors.grey)),
//             const SizedBox(height: 20),

//             // Personal Details
//             Card(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.phone),
//                     title: Text("Phone"),
//                     subtitle: Text("+91 9876543210"), // Replace with actual phone
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.location_on),
//                     title: Text("Location"),
//                     subtitle: Text("Mumbai, India"), // Replace with actual location
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Quiz Stats
//             Card(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.quiz, color: Colors.blue),
//                     title: Text("Total Quizzes Attempted"),
//                     trailing: Text("12"), // Replace with actual data
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.star, color: Colors.amber),
//                     title: Text("Best Score"),
//                     trailing: Text("9/10"), // Replace with actual data
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.trending_up, color: Colors.green),
//                     title: Text("Average Accuracy"),
//                     trailing: Text("85%"), // Replace with actual data
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Settings
//             Card(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   SwitchListTile(
//                     title: Text("Dark Mode"),
//                     value: false, // Set user preference
//                     onChanged: (bool value) {},
//                   ),
//                   SwitchListTile(
//                     title: Text("Notifications"),
//                     value: true, // Set user preference
//                     onChanged: (bool value) {},
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Logout Button
//             ElevatedButton.icon(
//               onPressed: () {
//                 // Implement logout logic
//               },
//               icon: Icon(Icons.logout),
//               label: Text("Logout"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 foregroundColor: Colors.white,
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? user;
//   Map<String, dynamic>? userData;

//   @override
//   void initState() {
//     super.initState();
//     getUserData();
//   }

//   Future<void> getUserData() async {
//     user = _auth.currentUser;
//     if (user != null) {
//       DocumentSnapshot snapshot = await _firestore.collection('users').doc(user!.uid).get();
//       if (snapshot.exists) {
//         setState(() {
//           userData = snapshot.data() as Map<String, dynamic>;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile"),
//         backgroundColor: Color(0xFF192655),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: userData == null
//           ? Center(child: CircularProgressIndicator()) // Loading indicator
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 20),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/profile_pic.png'),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     userData!['name'] ?? "User Name",
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(userData!['email'], style: TextStyle(color: Colors.grey)),
//                   const SizedBox(height: 20),

//                   Card(
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.phone),
//                           title: Text("Phone"),
//                           subtitle: Text(userData!['phone'] ?? "Not provided"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.location_on),
//                           title: Text("Location"),
//                           subtitle: Text(userData!['location'] ?? "Not provided"),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   Card(
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.quiz, color: Colors.blue),
//                           title: Text("Total Quizzes Attempted"),
//                           trailing: Text(userData!['totalQuizzes'].toString()),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.star, color: Colors.amber),
//                           title: Text("Best Score"),
//                           trailing: Text(userData!['bestScore'].toString()),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.trending_up, color: Colors.green),
//                           title: Text("Average Accuracy"),
//                           trailing: Text("${userData!['accuracy']}%"),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   ElevatedButton.icon(
//                     onPressed: () async {
//                       await _auth.signOut();
//                       Navigator.pop(context);
//                     },
//                     icon: Icon(Icons.logout),
//                     label: Text("Logout"),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//     );
//   }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? user;
//   Map<String, dynamic>? userData;

//   @override
//   void initState() {
//     super.initState();
//     getUserData();
//   }

//   Future<void> getUserData() async {
//     user = _auth.currentUser;
//     if (user != null) {
//       DocumentSnapshot snapshot = await _firestore.collection('users').doc(user!.uid).get();
//       if (snapshot.exists) {
//         setState(() {
//           userData = snapshot.data() as Map<String, dynamic>;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile"),
//         backgroundColor: Color(0xFF192655),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: userData == null
//           ? Center(child: CircularProgressIndicator())
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 20),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/profile_pic.png'),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     userData!['name'] ?? "User Name",
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(userData!['email'], style: TextStyle(color: Colors.grey)),
//                   const SizedBox(height: 5),
//                   Text(userData!['phone'] ?? "Not provided"),
//                   const SizedBox(height: 5),
//                   Text(userData!['country'] ?? "Not provided"),
//                   const SizedBox(height: 20),

//                   Card(
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.quiz, color: Colors.blue),
//                           title: Text("Total Quizzes Attempted"),
//                           trailing: Text(userData!['totalQuizzes'].toString()),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.star, color: Colors.amber),
//                           title: Text("Best Score"),
//                           trailing: Text(userData!['bestScore'].toString()),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.trending_up, color: Colors.green),
//                           title: Text("Average Accuracy"),
//                           trailing: Text("${userData!['accuracy']}%"),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () async {
//                       await _auth.signOut();
//                       Navigator.pop(context);
//                     },
//                     child: Text("Logout"),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? user;
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<void> getUserData() async {
    user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot snapshot = await _firestore.collection('users').doc(user!.uid).get();
      if (snapshot.exists) {
        setState(() {
          userData = snapshot.data() as Map<String, dynamic>;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Color(0xFF192655),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: userData == null
          ? Center(child: CircularProgressIndicator()) // Loading indicator
          : SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_pic.png'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userData!['name'] ?? "User Name",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(userData!['email'], style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 20),

                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("Phone"),
                          subtitle: Text(userData!['phone'] ?? "Not provided"),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text("Country"),
                          subtitle: Text(userData!['country'] ?? "Not provided"),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.quiz, color: Colors.blue),
                          title: Text("Total Quizzes Attempted"),
                          trailing: Text(userData!['totalQuizzes']?.toString() ?? "0"),
                        ),
                        ListTile(
                          leading: Icon(Icons.star, color: Colors.amber),
                          title: Text("Best Score"),
                          trailing: Text(userData!['bestScore']?.toString() ?? "0"),
                        ),
                        ListTile(
                          leading: Icon(Icons.trending_up, color: Colors.green),
                          title: Text("Average Accuracy"),
                          trailing: Text("${userData!['accuracy'] ?? 0}%"),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton.icon(
                    onPressed: () async {
                      await _auth.signOut();
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Logout"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
    );
  }
}
