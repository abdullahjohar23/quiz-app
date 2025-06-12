import 'package:flutter/material.dart';
import 'package:quiz_app/pages/add_quiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminLogin extends StatefulWidget {
    const AdminLogin({super.key});

    @override
    State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
    TextEditingController usernamecontroller = new TextEditingController();
    TextEditingController userpasscontroller = new TextEditingController();

    late double deviceHeight, deviceWidth;

    @override
    Widget build(BuildContext context) {
        deviceWidth = MediaQuery.of(context).size.width;
        deviceHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            backgroundColor: Color(0xffededeb),

            body: Container(
                child: Stack(
                    children: [
                        Container(
                            margin: EdgeInsets.only(top: deviceHeight/2),
                            padding: EdgeInsets.only(left: 20, right: 20, top: 45),
                            height: deviceHeight,
                            width: deviceWidth,

                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Color.fromARGB(255, 53, 51, 51), Colors.black],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.vertical(top: Radius.elliptical(deviceWidth, 110))
                            ),
                        ),

                        Container(
                            margin: EdgeInsets.only(left: 30, right: 30, top: 60),
                            child: Form(
                                child: Column(
                                    children: [
                                        Text(
                                            "Let's start with Admin!",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),

                                        SizedBox(height: 20),

                                        Material(
                                            elevation: 3,
                                            borderRadius: BorderRadius.circular(20),
                                            child: Container(
                                                height: deviceHeight/2.2,

                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                ),

                                                child: Column(
                                                    children: [
                                                        SizedBox(height: 50),
                                                        
                                                        //* Username
                                                        Container(
                                                            padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color.fromARGB(255, 160, 160, 147),
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),

                                                            child: Center(
                                                                child: TextFormField(
                                                                    controller: usernamecontroller,
                                                                    validator: (value) {
                                                                        if (value == null || value.isEmpty) {
                                                                            return 'Please Enter Username';
                                                                        }
                                                                    },

                                                                    decoration: InputDecoration(
                                                                        border: InputBorder.none,
                                                                        hintText: 'Username',
                                                                        hintStyle: TextStyle(color: Color.fromARGB(255, 160, 160, 147))
                                                                    ),
                                                                ),
                                                            ),
                                                        ),

                                                        SizedBox(height: 20),

                                                        //* Password
                                                        Container(
                                                            padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color.fromARGB(255, 160, 160, 147),
                                                                ),
                                                                borderRadius: BorderRadius.circular(10)
                                                            ),

                                                            child: Center(
                                                                child: TextFormField(
                                                                    controller: userpasscontroller,
                                                                    obscureText: true, // Hey, this is a password field — don’t show the actual characters being typed. Instead, it shows symbols (like dots or stars)
                                                                    obscuringCharacter: '●', // This controls what symbol is used to hide the actual password. You can use a star *, a dot ●, or any other character. It replaces the real letters with your chosen symbol
                                                                    enableSuggestions: false, // This turns off suggestions like autofill or “you typed this before”. Since it's a password, we don't want the app to suggest anything the user typed earlier
                                                                    autocorrect: false, // This disables autocorrect. Otherwise, Flutter might try to “fix” what the user is typing — which makes no sense for passwords.
                                                                    keyboardType: TextInputType.visiblePassword, // This chooses the keyboard type for the field. visiblePassword gives users a keyboard layout meant for typing passwords (e.g., no autocorrect, sometimes includes show/hide eye icon on some platforms)
                                                                    validator: (value) {
                                                                        if (value == null || value.isEmpty) {
                                                                            return 'Please Enter Password';
                                                                        }
                                                                    },

                                                                    decoration: InputDecoration(
                                                                        border: InputBorder.none,
                                                                        hintText: 'Password',
                                                                        hintStyle: TextStyle(color: Color.fromARGB(255, 160, 160, 147))
                                                                    ),
                                                                ),
                                                            ),
                                                        ),

                                                        SizedBox(height: 40),

                                                        //* Login Button
                                                        GestureDetector(
                                                            onTap: () {
                                                                LoginAdmin();
                                                            },
                                                            
                                                            child: Container(
                                                                padding: EdgeInsets.symmetric(vertical: 12),
                                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                                width: deviceWidth,
                                                                decoration: BoxDecoration(
                                                                    color: Colors.black,
                                                                    borderRadius: BorderRadius.circular(10)
                                                                ),
                                                            
                                                                child: Center(
                                                                    child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                                                ),
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
                    ],
                ),
            ),
        );
    }

    // our function to login via data from firebase
    LoginAdmin() {
        FirebaseFirestore.instance.collection('Admin').get().then((snapshot) {
            bool found = false;

            for (var result in snapshot.docs) {
                String firestoreId = result.data()['id'];
                String firestorePassword = result.data()['password'];

                if (firestoreId == usernamecontroller.text.trim() && firestorePassword == userpasscontroller.text.trim()) {
                    found = true;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => AddQuiz()),
                    );
                    break;
                }
            }

            if (!found) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'Invalid username or password',
                            style: TextStyle(fontSize: 18),
                        ),
                    ),
                );
            }
        });
    }
}
