import 'package:GrandCare/appointments_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CalendarViewContainer extends StatefulWidget {
  const CalendarViewContainer({super.key});

  @override
  State<CalendarViewContainer> createState() => _CalendarViewContainerState();
}

class _CalendarViewContainerState extends State<CalendarViewContainer> {
  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse('https://calendar.google.com/calendar/embed?src=grandcarecmaa%40gmail.com&ctz=America%2FNew_York'));

  Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(
        title: Text('Calendar & Appointments', style: GoogleFonts.poppins(
                 ),),
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
            children: <Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('GrandCare Calendar', style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                  ),),
                  const SizedBox(
                      
                      width:
                          100, // Set the width to make the divider shorter horizontally
                      child: Divider(
                        color: Colors.grey,
                        height: 20.0, // Adjust the height as needed
                      ),
                    ),
                  const SizedBox(height: 20,),
                  Text("Please view the GrandCare appointments calendar and schedule a time for meeting with a counselor that is available.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15
                  ),),
        
                ],
              ),
              const SizedBox(height: 20),

              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child:WebViewWidget(controller: controller,)
              ),

               const SizedBox(height: 20),

              Column(
                children: <Widget> [
                  const SizedBox(height: 20),
                  Text("After you have seen a time that works for both you and an available counselor, pleae click below to schedule your meeting.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15
                  ),),

                    SizedBox(height: 20,),

                   MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AppointmentsViewContainer()));},
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child:  Text("Schedule an Appointment", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),),
                  ),

                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void gettingAccount() async {
    // Initialize GoogleSignIn with the scopes you want:
    final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: <String>[
            'https://www.googleapis.com/auth/calendar'
        ],
    );
    
    // Get the user after successful sign in
    var googleUser = await googleSignIn.signIn();

    
}
}