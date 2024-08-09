import 'package:GrandCare/appointments_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:webview_flutter/webview_flutter.dart';

final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
  Factory(() => EagerGestureRecognizer())
};

UniqueKey _key = UniqueKey();

class RequestContainer extends StatefulWidget {
  const RequestContainer({super.key});

  @override
  State<RequestContainer> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestContainer> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://seniorconnection.org/grandparents-raising-grandkids/grandparents-raising-grandkids-resource-center/grandparents-raising-grandkids-sign-up-form/'));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inquiry Page',
          style: GoogleFonts.poppins(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 37, 57),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Make a Request',
                    style:
                        GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                  ),
                  Container(
                    width:
                        100, // Set the width to make the divider shorter horizontally
                    child: const Divider(
                      color: Colors.grey,
                      height: 20.0, // Adjust the height as needed
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please make a request using the form below and we will get back to you as soon as possible.",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: WebViewWidget(
                    controller: controller,
                  )),
              
            ],
          ),
        ),
      ),
    );
  }
  
}