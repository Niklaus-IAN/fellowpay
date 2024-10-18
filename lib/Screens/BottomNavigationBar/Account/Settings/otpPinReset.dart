import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/textFields.dart';

class OtpReset extends StatefulWidget {
  const OtpReset({super.key});

  @override
  State<OtpReset> createState() => _OtpResetState();
}

class _OtpResetState extends State<OtpReset> {


  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  Widget buildInputBox(int index) {
    return SizedBox(
      width: 50,
      height: 60,
      child: TextField(
        controller: _controllers[index],
        decoration: kTextFieldDecoration.copyWith(
          filled: true,
          fillColor: Color(0xffEEEEF0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          counterText: '', // Removes the counter below the TextField
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1, // Limit to 1 digit per box
        onChanged: (value) {
          // Automatically move to the next field after entering a digit
          if (value.isNotEmpty && index < 3) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index > 0) {
            // If the user deletes a value, move focus to the previous field
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 15),
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: black,
        //     ),
        //   ),
        // ),
        toolbarHeight: 80.0, // Set the height you want
        title: Text(
          'PIN Reset',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Enter the 4-digit code we sent to',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black
                  ),
                  children: [
                    TextSpan(
                      text: ' your email.',
                      style: TextStyle(
                        // fontSize: 17,
                        // fontWeight: FontWeight.w400,
                          color: blue
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) => buildInputBox(index)),
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'Resend code in',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: black
                  ),
                  children: [
                    TextSpan(
                      text: ' 22',
                      style: TextStyle(
                        // fontSize: 17,
                        // fontWeight: FontWeight.w400,
                          color: blue
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              SizedBox(
                height: 250,
                width: 250,
                child: SvgPicture.asset(
                  'assets/images/Group 47133.svg',
                  semanticsLabel: 'My SVG Image',
                  // height: 400,
                  // width: 400,
                  // fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
                ),
              ),
              SizedBox(height: 50,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Change the border radius here
                    ),
                  ),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),),
              ),
              SizedBox(height: 20,),
            ],),
        ),
      ),
    );
  }
}
