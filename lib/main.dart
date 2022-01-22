import 'package:designuntitled/edit_profile.dart';
import 'package:designuntitled/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const Design());
}
class Design extends StatelessWidget {
  const Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/',
      routes: {
        '/': (context) => const Profile(),
        '/editProfile': (context) => const EditProfile()
      }
    );
  }
}

