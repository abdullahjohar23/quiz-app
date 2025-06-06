import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_category_design.dart';

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    late double _deviceHeight, _deviceWidth;

    @override
    Widget build(BuildContext context) {
        _deviceWidth = MediaQuery.of(context).size.width;
        _deviceHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            backgroundColor: Color(0xffedf3f6),

            body: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Stack(
                                children: [
                                    //* Bg Design, Profile Image and Name
                                    Container(
                                        // Background Design Color
                                        height: MediaQuery.of(context).size.height/4,
                                        padding: EdgeInsets.only(left: 20, top: 50),
                                        decoration: BoxDecoration(
                                            color: Color(0xff2a2b31),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                                        ),
                                        
                                        // Profile Image and Name
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                ClipRRect(
                                                    borderRadius: BorderRadius.circular(30),
                                                    child: Image.asset('asset/others/profile.jpg', height: 50, width: 50, fit: BoxFit.cover),
                                                ),
                                                
                                                SizedBox(width: 15),
                                                
                                                Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Text('Abdullah Johar', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                                                ),
                                            ],
                                        ),
                                    ), 

                                    //* Cover Image
                                    Container(
                                        margin: EdgeInsets.only(left: 20, right: 20, top: 120),
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height/5,
                                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),

                                        // Cover Image
                                        child: Row(
                                            children: [
                                                // Cover Image
                                                ClipRRect(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                                                    child: Image.asset('asset/others/cover.png'),
                                                ),
                
                                                SizedBox(width: 10),
                                                
                                                // Text inside cover
                                                Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                        Text('Play & Win', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                                                        Text('Play Quiz By\nGuessing The Image', style: TextStyle(color: Color(0xffa4a4a4), fontSize: 15, fontWeight: FontWeight.w500)),
                                                    ],
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                
                            SizedBox(height: _deviceHeight*0.03),

                            //* 'The Quiz Categories' Label
                            Padding(
                                padding: EdgeInsets.only(left: _deviceWidth*0.22),
                                child: Text('The Quiz Categories', style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold)),
                            ),
                
                            SizedBox(height: _deviceHeight*0.03),
                            
                            //! Category 1 and 2
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        //* Category 1
                                        QuizCategoryDesign(imagePath: 'asset/images/sports.png', quizeName: 'Sports'),
                                        //* Category 2
                                        QuizCategoryDesign(imagePath: 'asset/images/lion.png', quizeName: 'Animals'),
                                    ],
                                ),
                            ),
                
                            SizedBox(height: _deviceHeight*0.04),
                
                            //! Category 3 and 4
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
                                
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        //* Category 1
                                        QuizCategoryDesign(imagePath: 'asset/images/place.png', quizeName: 'Places'),
                                        //* Category 2
                                        QuizCategoryDesign(imagePath: 'asset/images/palestineflag.png', quizeName: 'Flags'),
                                    ],
                                ),
                            ),
                
                            SizedBox(height: _deviceHeight*0.04),
                            
                            //! Category 5 and 6
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
                                
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        //* Category 1
                                        QuizCategoryDesign(imagePath: 'asset/images/pomogranate.png', quizeName: 'Fruits'),
                                        //* Category 2
                                        QuizCategoryDesign(imagePath: 'asset/images/foods.png', quizeName: 'Foods'),
                                    ],
                                ),
                            ),

                            SizedBox(height: _deviceHeight*0.04),
                        ],
                    ),
                ),
            ),
        );
    }
}
