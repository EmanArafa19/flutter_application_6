import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF414A96),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 68, 96, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile.jpg',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Eman Arafa',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 20),
                  ContactInfo(
                    icon: Icons.phone,
                    text: '+201558282289',
                  ),
                  ContactInfo(
                    icon: Icons.email,
                    text: 'emanarafa192003@gmail.com',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.blue,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
            size: 16,
          ),
        ),
      ),
    );
  }
}
