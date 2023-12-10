import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            // Your Content
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your location..."),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    SizedBox(
                      height: 60.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFFF3C00),
                          ), // Set the desired color
                        ),
                        onPressed: () {},
                        child: Text(
                          "Show Restaurent",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 160,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "or",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 2,
                          width: 160,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: OutlinedButton(
                            onPressed: () {
                              // Add your button's onPressed logic here
                            },
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(200, 50)),
                              side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.white)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text('Skip this step'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                opacity: 0.6,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          onPressed: () {
                            // Add your button's onPressed logic here
                            Navigator.pushNamed(context, '/registrationPage');
                          },
                          child: Text('Create an account or login'),
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
