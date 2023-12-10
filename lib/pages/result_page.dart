import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ResultPage extends StatelessWidget {
  final TextEditingController nameTextEditingController;
  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;
  final TextEditingController numberTextEditingController;

  ResultPage(
      {Key? key,
      required this.nameTextEditingController,
      required this.emailTextEditingController,
      required this.passwordTextEditingController,
      required this.numberTextEditingController})
      : super(key: key);

  // get name text
  String getNameTextFieldText() {
    return nameTextEditingController.text;
  }

  // get email text
  String getEmailTextFieldText() {
    return emailTextEditingController.text;
  }

  // get password text
  String getPasswordTextFieldText() {
    return passwordTextEditingController.text;
  }

  // get phone number
  String getNumberTextFieldText() {
    return numberTextEditingController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Result Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check Out The Registration...",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    SizedBox(
                      height: 18.0,
                    ),

                    Row(
                      children: [
                        Text(
                          'Your Name Is: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            getNameTextFieldText(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    // Email Address

                    Row(
                      children: [
                        Text(
                          'Your Email Is: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            getEmailTextFieldText(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    // Your Password

                    Row(
                      children: [
                        Text(
                          'Your Password Is: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            getPasswordTextFieldText(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Your Phone Number

                    Row(
                      children: [
                        Text(
                          'Your Phone Number Is: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            getNumberTextFieldText(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        height: 50.0,
                        width: 200.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                Color(0xFFFF3C00), // Set the background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {
                            Alert(
                                    context: context,
                                    title: "Registered",
                                    desc: "You succeeded to save the data.")
                                .show();
                          },
                          child: Text(
                            "Save Data",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
