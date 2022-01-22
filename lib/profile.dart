import 'package:designuntitled/edit_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

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
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back,
            size: 50,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
               child: PopupMenuButton(
                 onSelected: (result){
                   if(result == 0){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()),);
                   }
                 },
                 itemBuilder: (context) => [
                   PopupMenuItem(
                     child: Text("Edit Profile"),
                     value: 0,
                   )
                 ],
                 child: const Icon(Icons.more_vert,
                     size: 50,
                     color: Colors.black,
               ),
            ),

            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const Text("Seun Adeyanju",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                ),
                color: Colors.white,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Contact Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 10,),
                  input("Phone Number", "+23494943848", Icon(Icons.call)),
                  const SizedBox(height: 10,),
                  input("Email Address", "seunadeyanju@gmail.com", Icon(Icons.email)),
                  const SizedBox(height: 10,),
                  input("Identification", "123AD", Icon(Icons.perm_identity)),
                  const SizedBox(height: 15,),
                  const Text("Medical Information",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 10,),
                  input("Age", "22 years Old", Icon(Icons.border_inner_rounded)),
                  const SizedBox(height: 10,),
                  input("Height", "2.2", Icon(Icons.height)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
