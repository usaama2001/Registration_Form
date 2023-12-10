import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:registration_form/pages/result_page.dart';

class RegistratioinPage extends StatefulWidget {
  const RegistratioinPage({super.key});

  @override
  State<RegistratioinPage> createState() => _RegistratioinPageState();
}

class _RegistratioinPageState extends State<RegistratioinPage> {
  TextEditingController _nameTextEditingController = TextEditingController();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  TextEditingController _numberTextEditingController = TextEditingController();

  // @override
  // void dispose() {
  //   _textEditingController.dispose();
  //   super.dispose();
  // }

  String greetingMessage = "";
  //greet user
  void greetUser() {
    String UserGreeting = _nameTextEditingController.text;
    setState(() {
      greetingMessage = "Hellow " + UserGreeting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapped outside of a text field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pizzza.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Opacity Layer
            Opacity(
              opacity: 0.5, // Set the desired opacity value (0.0 - 1.0)
              child: Container(
                color:
                    Colors.black, // Set the desired color for the opacity layer
              ),
            ),

            // Logo goes here...
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(140.0, 60.0, 140.0, 0.0),
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
                    child: SvgPicture.asset(
                      'images/logo.svg', // Replace with the actual path to your SVG file
                      semanticsLabel: 'SVG Image',
                    ),
                  ),
                ),
                Text(
                  "Deliv",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    // fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            // Text field goes here..............
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // sample text print place

                    //Full Name..
                    Text(
                      "Full Name *",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Nunito',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: _nameTextEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Wehliye Muhudin.."),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    // Email address
                    Text(
                      "Email Address *",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Nunito',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: _emailTextEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "muhudiinusaama@gmail.com"),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    // Password ..
                    Text(
                      "Password *",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Nunito',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: _passwordTextEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "••••••••••"),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    //Phone Number..
                    Text(
                      "Phone Number *",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Nunito',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: _numberTextEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "(252) 619-889-396"),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),

                    // Create account btn
                    SizedBox(
                      height: 60.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(
                                nameTextEditingController:
                                    _nameTextEditingController,
                                emailTextEditingController:
                                    _emailTextEditingController,
                                passwordTextEditingController:
                                    _passwordTextEditingController,
                                numberTextEditingController:
                                    _numberTextEditingController,
                              ),
                            ),
                          );
                        }, //greetUser,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFFF3C00),
                          ), // Set the desired color
                        ),
                        child: Text(
                          "Create account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
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
}
