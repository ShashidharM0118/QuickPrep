import 'package:flutter/material.dart';

import '../../globals.dart';
import '../backButton.dart';

class technical_skills_page extends StatefulWidget {
  const technical_skills_page({Key? key}) : super(key: key);

  @override
  State<technical_skills_page> createState() => _technical_skills_pageState();
}

class _technical_skills_pageState extends State<technical_skills_page> {
  List allTextFildList = [];
  List<TextEditingController> allControllers = [];
  int counter = 1;
  @override
  void initState() {
    super.initState();

    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());

    allTextFildList.add(getTextFild(i: 0, row: Row()));
    allTextFildList.add(getTextFild(i: 1, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    Color MyColor = const Color(0xff0475FF);
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: backButton(context),
        backgroundColor: MyColor,
        title: const Text("Technical Skills"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: _width,
              alignment: const Alignment(0, 0.5),
              color: MyColor,
            ),
          ),
          Expanded(
            flex: 18,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xffEDEDED),
              child: Container(
                color: Colors.white,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: _height * 0.02),
                      Text(
                        "Enter Your Skills",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: _height * 0.02),
                      ...allTextFildList
                          .map((e) => getTextFild(
                              i: allTextFildList.indexOf(e), row: e))
                          .toList(),
                      SizedBox(height: _height * 0.06),
                      Container(
                        height: _height * 0.055,
                        width: _width,
                        child: OutlinedButton(
                          child: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              allControllers.add(TextEditingController());
                              allTextFildList.add(getTextFild(
                                  i: allTextFildList.length, row: Row()));
                            });
                          },
                        ),
                      ),
                      SizedBox(height: _height * 0.03),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                          allControllers.forEach((element) {
                            Global.technicalSkills.add(element.text.toString());
                          });
                          print(Global.technicalSkills);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColor,
                        ),
                        child: const Text("Save"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row getTextFild({required i, required Row row}) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            controller: allControllers[i],
            decoration: InputDecoration(
              hintText: "C Programming, Web Technical",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            setState(() {
              allControllers.removeAt(i);
              allTextFildList.remove(row);
            });
          },
        ),
      ],
    );
  }
}
