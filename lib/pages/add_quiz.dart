import 'package:flutter/material.dart';

class AddQuiz extends StatefulWidget {
    const AddQuiz({super.key});

    @override
    State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
    late double _deviceHeight, _deviceWidth;

    String? value;
    final List<String> quizitem=['Animal', 'Sport', 'Place', 'Flag', 'Fruit', 'Food'];

    TextEditingController option1controller = new TextEditingController();
    TextEditingController option2controller = new TextEditingController();
    TextEditingController option3controller = new TextEditingController();
    TextEditingController option4controller = new TextEditingController();
    TextEditingController correctcontroller = new TextEditingController();

    @override
    Widget build(BuildContext context) {
        _deviceWidth = MediaQuery.of(context).size.width;
        _deviceHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            backgroundColor: Colors.white,

            appBar: AppBar(
                title: Text('Add Quiz', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
                centerTitle: true,
            ),
            
            body: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Upload the Quiz Picture', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)),
                            SizedBox(height: 20),
                            
                            // Select Image
                            Center(
                                child: Material(
                                    elevation: 4,
                                    borderRadius: BorderRadius.circular(20),
                
                                    child: Container(
                                        width: 150,
                                        height: 150,
                                        
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 1.5),
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                
                                        child: Icon(Icons.camera_alt_rounded, color: Colors.black),
                                    ),
                                ),
                            ),
                
                            //* Option 1
                            SizedBox(height: 20),
                            Text('Option 1', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),
                            
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                
                                child: TextField(
                                    controller: option1controller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Option 1',
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500
                                        )
                                    ),
                                ),
                            ),
                
                            //* Option 2
                            SizedBox(height: 20),
                            Text('Option 2', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),
                            
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                
                                child: TextField(
                                    controller: option2controller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Option 2',
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500
                                        )
                                    ),
                                ),
                            ),
                
                            //* Option 3
                            SizedBox(height: 20),
                            Text('Option 3', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),
                            
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                
                                child: TextField(
                                    controller: option3controller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Option 3',
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500
                                        )
                                    ),
                                ),
                            ),
                
                            //* Option 4
                            SizedBox(height: 20),
                            Text('Option 4', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),
                            
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                
                                child: TextField(
                                    controller: option4controller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Option 4',
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500
                                        )
                                    ),
                                ),
                            ),
                
                            //* Correct Option
                            SizedBox(height: 20),
                            Text('Correct Option', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),
                            
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                
                                child: TextField(
                                    controller: correctcontroller,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Correct Option',
                                        hintStyle: TextStyle(
                                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500
                                        )
                                    ),
                                ),
                            ),

                            SizedBox(height: 20),

                            //* Select Category
                            Text('Select Category', style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500)),
                            SizedBox(height: _deviceHeight*0.02),

                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: _deviceWidth,
                                decoration: BoxDecoration(
                                    color: Color(0xffececf8),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                        items: quizitem.map((item) {
                                            return DropdownMenuItem(
                                                value: item,
                                                child: Text(item, style: TextStyle(fontSize: 18, color: Colors.black))
                                            );
                                        }).toList(),
                                            onChanged: ((value) {
                                                setState(() {
                                                    this.value = value;
                                                });
                                            }),
                                        dropdownColor: Colors.white,
                                        hint: Text('Select Category'),
                                        icon: Icon(Icons.arrow_drop_down, size: 36, color: Colors.black),
                                        value: value,
                                    ),
                                ),
                            ),

                            SizedBox(height: _deviceHeight*0.05),

                            //* Add Button
                            Center(
                                child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 5),
                                        width: 150,

                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(10)
                                        ),

                                        child: Center(
                                            child: Text(
                                                'Add',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),

                            SizedBox(height: _deviceHeight*0.07),
                        ],
                    ),
                ),
            ),
        );
    }
}
