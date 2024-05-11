import 'package:GrandCare/resources_menu.dart';
import 'package:flutter/material.dart';


// As an overall note for the CMAA General Resources Menu, though these are unrestricted, the app currently does not have a direct means of providing people with these services.
// Clients can access these services via the contact mechanisms employed in the other parts of the application.

// General structural notes about the classes for the CMAA General Resources:
// The body of the page is centered. Embedded within the body are two items:
  // One item is a text widget that provides basic information on the selected service.
  // The other is an elevated button that sends the user back to the home page when tapped.

// This class is used for the page related to the services of the Senior Citizen Law & Advocacy Project offerred by the CMAA. 


class Senior_Citizen_Law_Advocacy_Project extends StatelessWidget {
  const Senior_Citizen_Law_Advocacy_Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Senior Citizen Law & Advocacy Project ')),
      drawer: Container(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Senior Citizen Law & Advocacy Project !'
              '\n Provides free legal assistance to elders on many issues including benefits, housing, civil matters, Medicaid/Medicare eligibility, and elder abuse and nursing home issues.'
               '\n Also conducts education programs and distributes literature on critical topics.',
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