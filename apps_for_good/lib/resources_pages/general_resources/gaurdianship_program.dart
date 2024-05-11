import 'package:GrandCare/resources_menu.dart';
import 'package:flutter/material.dart';

// As an overall note for the CMAA General Resources Menu, though these are unrestricted, the app currently does not have a direct means of providing people with these services.
// Clients can access these services via the contact mechanisms employed in the other parts of the application.

// General structural notes about the classes for the CMAA General Resources:
// The body of the page is centered. Embedded within the body are two items:
  // One item is a text widget that provides basic information on the selected service.
  // The other is an elevated button that sends the user back to the home page when tapped.

// This class is used for the page related to the Guardianship Program offerred by the CMAA. 


class Guardianship_Program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guardianship Program')),
      drawer: Container(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Guardianship Program!'
              '\n Provides guardianship/conservator services to frail elders who are adjudicated to be incompetent.'
              '\n Professional staff conduct evaluations, act as guardians, consult with caregivers and elder service providers as to options on referrals, provide training and community education.',
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