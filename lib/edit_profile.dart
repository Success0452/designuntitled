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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.width/5,
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
                  ),
                   Container(
                     alignment: Alignment.topLeft,
                     child: const Text("Contact Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.normal),
                  ),
                   ),
                  const SizedBox(height: 10,),
                  input("First Name", "+Olamide", Icon(Icons.perm_identity)),
                  const SizedBox(height: 10,),
                  input("Last Name", "Ibiyemi", Icon(Icons.perm_identity)),
                  const SizedBox(height: 10,),
                  input("Address", "No 10, Road V,Idi Ape", Icon(Icons.home)),
                  const SizedBox(height: 10,),
                  input("Phone Number", "+234 90 99 00000", Icon(Icons.home)),
                   const SizedBox(height: 10,),
                   input("Gender", "+234 90 99 00000", Icon(Icons.home)),
                   const SizedBox(height: 10,),
                   Container(
                     alignment: Alignment.topLeft,
                     child: const Text("Medical Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.normal),
                  ),
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
      ),
    );
  }
}
