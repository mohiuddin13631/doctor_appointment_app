import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Apointment extends StatefulWidget {
  const Apointment({super.key});

  @override
  State<Apointment> createState() => _ApointmentState();
}

class _ApointmentState extends State<Apointment> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        actions: [
          Icon(Icons.error_outline_outlined),
        ],
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Appointment"),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            //1st Section
            DocFile(
              title: "Wade Warren",
              image: "assets/images/doc1.jpg",
            ),

            //2nd Section
            Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 7)),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      )),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total cost", style: TextStyle(fontSize: 20)),
                            Text("\$80", style: TextStyle(fontSize: 20))
                          ],
                        ),
                      ),
                      Text(
                        "Session fee for 30 minutes",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("To pay", style: TextStyle(fontSize: 20)),
                          Text("\$80", style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 360,
                          height: 40,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Icon(
                                  Icons.percent_sharp,
                                  size: 17,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.cyan[600],
                                ),
                              ),
                              Text("Use promo code"),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),

            //3rd Section
            Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 7)),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment Option", style: TextStyle(fontSize: 20)),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                            width: 1,
                            color: Colors.black26,
                          )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.cyan[600],
                                        value: 1,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      Text("Paypal"),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 40),
                                    height: 50,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/paypal.png",
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black26,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.cyan[600],
                                        value: 2,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value!;
                                          });
                                        },
                                      ),
                                      Text("Credit Card"),
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: 150,
                                    child: Image.asset("assets/images/card2.jpg"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                )),

            //4th Section
            Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 7)),
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 20,
                      )),

                      //boro orange button tar class
                      Custom_button(
                        onTap: () {},
                        title: "Pay & Cofirm",
                      ),

                      Container(
                        height: 7,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

//doctor ar detail part ta

class DocFile extends StatelessWidget {
  DocFile({
    super.key,
    required this.title,required this.image,
  });

  String title;
  String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.only(left: 11),
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 30,
              )),
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("$image")))),
              Container(
                padding: EdgeInsets.only(left: 25, top: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "$title",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text("General Practitoner"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.cases_rounded,
                              color: Colors.orange[600]),
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Text("  3 years  "),
                        Container(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.heart_broken_sharp,
                              color: Colors.red[600]),
                          decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Text("   92%")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

//orenge boro button ta
class Custom_button extends StatelessWidget {
  Custom_button({super.key, required this.title, required this.onTap});

  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Container(
        height: 55,
        width: 350,
        child: Center(
            child: Text(
          "$title",
          style: TextStyle(fontSize: 17, color: Colors.white),
        )),
        decoration: BoxDecoration(
            color: Colors.orange[600], borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
