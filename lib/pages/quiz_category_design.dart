import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question.dart';

class QuizCategoryDesign extends StatelessWidget {
    final String imagePath;
    final String quizeName;

    const QuizCategoryDesign({
        required this.imagePath,
        required this.quizeName,
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

        return GestureDetector(
            onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, animation, __) => Question(),

                        transitionsBuilder: (_, animation, __, child) {
                            return SlideTransition(
                                position: Tween<Offset>(
                                    begin: Offset(1, 0),
                                    end: Offset.zero,
                                ).animate(animation),
                                child: child,
                            );
                        },
                    ),
                );
            },

            child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),

                child: Container(
                    width: deviceWidth*0.37,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                    ),

                    child: Column(
                        children: [
                            Image.asset(imagePath, height: deviceWidth*0.3, width: deviceWidth*0.3,),
                            SizedBox(height: deviceWidth*0.03),
                            Text(
                                quizeName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: deviceWidth*0.05,
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}
