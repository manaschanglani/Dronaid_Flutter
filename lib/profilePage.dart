import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(50.0),
          padding: const EdgeInsets.all(50.0),
          // width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/profile-photo-771742.jpeg',
                ),
                borderRadius: BorderRadius.circular(300.0),
              ),
              const SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Text(
                    'Manas Changlani',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
