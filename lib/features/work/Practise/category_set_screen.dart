import 'package:flutter/material.dart';
import './data1/data.dart';
import './model/model.dart';
import 'quiz_screen.dart';


class CategorySetScreen extends StatelessWidget {
  final Category category;

  const CategorySetScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.blue,
              ],
            )
        ),
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child:Icon(
                        Icons.arrow_back_ios,
                        color:Colors.white,
                        size:30,
                      )
                    ),
                    Text(
                      "${category.name} Quiz",
                      style:TextStyle(
                        fontSize:25,
                        fontWeight: FontWeight.w500,
                        color:Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: category.quizSets.length,
                itemBuilder:(context,index){

                final quizSet=category.quizSets[index];
                return Padding(padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>QuizScreen(
                        quizSet:quizSet
                      )));
                    },
                    child:Container(
                      width: MediaQuery.of(context).size.width / 1,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.all(10),
                          child: Image.asset(
                            category.image,
                            height: 100,
                              width: 100,
                          ),),
                          SizedBox(width:28),
                          Text(
                            quizSet.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ), //
                    ),
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
