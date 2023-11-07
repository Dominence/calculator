import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'widgets/calc_button.dart';

class logic extends StatefulWidget {
  logic({Key? key}) : super(key: key);

  @override
  State<logic> createState() => _logicState();
}

class _logicState extends State<logic> {
  String UserQuestion = " ";
  String UserAnswer = "0";

  void buttonFunctionNumber({required int number}) {
    setState(() {
      UserQuestion += number.toString();
    });
  }

  void operatorFunction({required String operator}) {
    String lastTextEntered =
        UserQuestion.substring(UserQuestion.length - 1, UserQuestion.length);
    if (!(UserQuestion == " " ||
        (lastTextEntered == "%" ||
            lastTextEntered == "." ||
            lastTextEntered == "X" ||
            lastTextEntered == "-" ||
            lastTextEntered == "+"))) {
      setState(() {
        UserQuestion += operator;
        String rr = UserQuestion.replaceAll("X", "*");
        print(rr);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Flexible(
          child: Container(
            height: 390,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xffAAAAAA)),
            margin: EdgeInsets.only(bottom: 4),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Flexible(
                    child: FittedBox(
                      child: Text(UserQuestion,
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Flexible(
                    child: FittedBox(
                      child: Text(UserAnswer,
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: CalcButton(
                        text: "c",
                        onTap: () {
                          setState(() {
                            UserQuestion = " ";
                          });
                        },
                        height: 70,
                        width: 70,
                        textcolor: Colors.white,
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "/",
                        onTap: () {
                          operatorFunction(operator: "/");
                        },
                        width: 70,
                        height: 70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "%",
                        onTap: () {
                          operatorFunction(operator: "%");
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "DEL",
                        onTap: () {setState(() {
                          UserQuestion=UserQuestion.substring(0,UserQuestion.length -1);
                        });

                          String bb = "bb123r4t5";
                          print(bb.length);
                          print(bb.substring(bb.length - 1, bb.length));
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: CalcButton(
                        text: "1",
                        onTap: () {
                          buttonFunctionNumber(number: 1);
                          print("1");
                        },
                        height: 70,
                        width: 70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "2",
                        onTap: () {
                          print(2);
                          buttonFunctionNumber(number: 2);
                        },
                        width: 70,
                        height: 70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "3",
                        onTap: () {
                          print("3");
                          buttonFunctionNumber(number: 3);
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "+",
                        onTap: () {
                          operatorFunction(operator: "+");
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: CalcButton(
                        text: "4",
                        onTap: () {
                          print("4");
                          buttonFunctionNumber(number: 4);
                        },
                        height: 70,
                        width: 70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "5",
                        onTap: () {
                          buttonFunctionNumber(number: 5);
                          print("5");
                        },
                        width: 70,
                        height: 70,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "6",
                        onTap: () {
                          print("6");
                          buttonFunctionNumber(number: 6);
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                      Flexible(
                          child: CalcButton(
                        text: "-",
                        onTap: () {
                          operatorFunction(operator: "-");
                        },
                        width: 70,
                        height: 70,
                        shadowcolor: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topRight: Radius.circular(24.0)),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: CalcButton(
                                    text: "7",
                                    onTap: () {
                                      print("7");
                                      buttonFunctionNumber(number: 7);
                                    },
                                    height: 70,
                                    width: 70,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(22.0),
                                        topRight: Radius.circular(24.0)),
                                  )),
                                  Flexible(
                                      child: CalcButton(
                                    text: "8",
                                    onTap: () {
                                      buttonFunctionNumber(number: 8);
                                    },
                                    width: 70,
                                    height: 70,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(22.0),
                                        topRight: Radius.circular(24.0)),
                                  )),
                                  Flexible(
                                      child: CalcButton(
                                    text: "9",
                                    onTap: () {
                                      print("9");
                                      buttonFunctionNumber(number: 9);
                                    },
                                    width: 70,
                                    height: 70,
                                    shadowcolor: Colors.deepPurple,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(22.0),
                                        topRight: Radius.circular(24.0)),
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Flexible(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: CalcButton(
                                    text: "x",
                                    onTap: () {
                                      operatorFunction(operator: "x");
                                    },
                                    width: 70,
                                    height: 70,
                                  )),
                                  Flexible(
                                      child: CalcButton(
                                    text: "0",
                                    onTap: () {
                                      print("0");
                                      buttonFunctionNumber(number: 0);
                                    },
                                    width: 70,
                                    height: 70,
                                    shadowcolor: Colors.deepPurple,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(22.0),
                                        topRight: Radius.circular(24.0)),
                                  )),
                                  Flexible(
                                      child: CalcButton(
                                          text: ".",
                                          onTap: () {
                                            operatorFunction(operator: ".");
                                          },
                                          //width:
                                          //70;
                                          //height:
                                          //70;
                                          //shadowcolor:
                                          //Colors.deepPurple;
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22.0),
                                            topRight: Radius.circular(24.0),
                                          ))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      CalcButton(
                          text: "=",
                          onTap: () {
                            String finalQuestion = UserQuestion;
                            Parser p = Parser();
                            finalQuestion = finalQuestion.replaceAll( "x", "*");
                            Expression exp = p.parse(finalQuestion);
                            ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);
                            setState(() {
                              UserAnswer =eval.toString();
                            });
                            print("=");
                          },
                          height: 150,
                          width: 70,
                          borderRadius: BorderRadius.circular(9.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
