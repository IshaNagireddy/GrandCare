import 'package:GrandCare/calendar_screens/calendar_view_container.dart';
import 'package:GrandCare/makereq.dart';
import 'package:GrandCare/resources_pages/general_resources/Crisis_Intervention.dart';
import 'package:GrandCare/resources_pages/general_resources/Elder_Home_Repair.dart';
import 'package:GrandCare/resources_pages/general_resources/Senior_Citizen_Law_Advocacy_Project.dart';
import 'package:GrandCare/resources_pages/general_resources/ancianos.dart';
import 'package:GrandCare/resources_pages/general_resources/family_caregiver_program.dart';
import 'package:GrandCare/resources_pages/general_resources/gaurdianship_program.dart';
import 'package:GrandCare/resources_pages/general_resources/matter_of_balance_program.dart';
import 'package:GrandCare/resources_pages/general_resources/medication_management.dart';
import 'package:GrandCare/resources_pages/general_resources/money_management.dart';
import 'package:GrandCare/resources_pages/general_resources/my_life_health_chronic_disease_self_management_program.dart';
import 'package:GrandCare/resources_pages/general_resources/nutrition_project.dart';
import 'package:flutter/material.dart';

class ResourcesMenu extends StatelessWidget {
  const ResourcesMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General CMAA Servies and Programs'),
        backgroundColor: Colors.blue,
      ),
      drawer: ResourcesExtended(),
    );
  }
}

class ResourcesExtended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Requests'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Requests_Page()),
                  );
            },
          ),
          
          ListTile(
            title: const Text('Calendar and appointments'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const CalendarViewContainer()),
                  );
            },
          ),

ExpansionTile(
          title: const Text(
            'General CMAA Servies and Programs',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
          ListTile(
            title: const Text('Elder Home Repair'),
            onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Elder_Home_Repair()),
                  );
            },
          ),
          ListTile(
            title: const Text('Senior Citizen Law & Advocacy Project'),
            onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Senior_Citizen_Law_Advocacy_Project()),
                  );
            },
          ),
          ListTile(
            title: const Text('Money Management'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Money_Management()),
                  );
            },
          ),
          ListTile(
            title: const Text('Crisis Intervention'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Crisis_Intervention()),
                  );
            },
          ),
          ListTile(
            title: const Text('Nutrition Project'),
            onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Nutrition_Project()),
                  );
            },
          ),
          ListTile(
            title: const Text('Family Caregiver Program'),
            onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Family_Caregiver_Program()),
                  );
            },
          ),
          ListTile(
            title: const Text('Gaurdianship Program'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Guardianship_Program()),
                  );
            },
          ),
          ListTile(
            title: const Text('Ancianos Latinos Unidos'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ancianos_Latinos_Unidos()),
                  );
            },
          ),
          ListTile(
            title: const Text('Medication Management'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Medication_Management()),
                  );
            },
          ),
          ListTile(
            title: const Text('A Matter of Balance'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Matter_of_Balance_Program()),
                  );
            },
          ),
          ListTile(
            title: const Text('My Life, My Health, Chornic Disease Self-Management Program'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => My_Life_Health_Chronic_Disease_Self_Management_Program()),
                  );
            },
          ),
          ]

         )    
              ])
      );
  }
}
