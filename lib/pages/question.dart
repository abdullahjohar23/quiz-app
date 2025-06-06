import 'package:flutter/material.dart';

class Question extends StatefulWidget {
    const Question({super.key});

    @override
    State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                    Navigator.pop(context);
                }
            },

            child: Scaffold(
                backgroundColor: Color(0xff004840),

                body: Container(
                    child: Column(
                        children: [
                            Row(
                                children: [
                                    Container(
                                        padding: EdgeInsets.all(6),
                                        margin: EdgeInsets.only(left: 170, top: 50),
                                        child: Text('Fruits', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                                    )
                                ],
                            ),

                            SizedBox(height: 20),

                            //* Quiz Image
                            Expanded(
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                                    child: Column(
                                        children: [
                                            Padding(
                                                padding: const EdgeInsets.only(top: 20),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(20),
                                                    child: Image.asset('asset/sportsquizimages/messi.png', height: 300, width: MediaQuery.of(context).size.width)
                                                ),
                                            ),

                                            SizedBox(height: 20),

                                            //* Option 1
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                padding:EdgeInsets.all(10),
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(border: Border.all(color: Color(0xff818181), width: 2), borderRadius: BorderRadius.circular(20)),
                                                child: Text('Christiano Ronaldo', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                            ),

                                            SizedBox(height: 20),

                                            //* Option 2
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                padding:EdgeInsets.all(10),
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(border: Border.all(color: Color(0xff818181), width: 2), borderRadius: BorderRadius.circular(20)),
                                                child: Text('Lionel Messi', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                            ),

                                            SizedBox(height: 20),

                                            //* Option 3
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                padding:EdgeInsets.all(10),
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(border: Border.all(color: Color(0xff818181), width: 2), borderRadius: BorderRadius.circular(20)),
                                                child: Text('Erling Haaland', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                            ),

                                            SizedBox(height: 20),

                                            //* Option 4
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                padding:EdgeInsets.all(10),
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(border: Border.all(color: Color(0xff818181), width: 2), borderRadius: BorderRadius.circular(20)),
                                                child: Text('Paulo Dybala', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}
