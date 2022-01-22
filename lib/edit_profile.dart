import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  input(String label, String hint, Icon icon){
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),),
          suffixIcon: icon,
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white, width: 5),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                  )
                ],
                shape: BoxShape.circle,
                )
              ),
            const Text("Contact Details",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10,),
            input("First Name", "+Olamide", Icon(Icons.perm_identity)),
            const SizedBox(height: 10,),
            input("Last Name", "Ibiyemi", Icon(Icons.perm_identity)),
            const SizedBox(height: 10,),
            input("Address", "No 10, Road V,Idi Ape", Icon(Icons.home)),
            const SizedBox(height: 15,),
            input("Phone Number", "+234 90 99 00000", Icon(Icons.home)),
            const Text("Medical Information",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10,),
            input("Age", "22", Icon(Icons.border_inner_rounded)),
            const SizedBox(height: 10,),
            input("Height", "100cm", Icon(Icons.height)),
            const SizedBox(height: 10,),
            input("Weight", "100cm", Icon(Icons.height)),
          ],
        ),
      ),
    );
  }
}
