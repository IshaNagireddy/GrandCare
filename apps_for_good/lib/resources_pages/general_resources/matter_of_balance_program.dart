import 'package:GrandCare/resources_menu.dart';
import 'package:flutter/material.dart';

// As an overall note for the CMAA General Resources Menu, though these are unrestricted, the app currently does not have a direct means of providing people with these services.
// Clients can access these services via the contact mechanisms employed in the other parts of the application.

// General structural notes about the classes for the CMAA General Resources:
// The body of the page is centered. Embedded within the body are two items:
  // One item is a text widget that provides basic information on the selected service.
  // The other is an elevated button that sends the user back to the home page when tapped.

// This class is used for the page related to the A Matter of Balance Program offerred by the CMAA. 

class Matter_of_Balance_Program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('A Matter of Balance Program')),
      drawer: Container(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to A Matter of Balance Program!'
              '\n Designed to reduce the fear of falling and increase the activity levels of older adults who have concerns about falls. ',
              textAlign: TextAlign.center, // Align text in the center
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ResourcesMenu()),
                );
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}