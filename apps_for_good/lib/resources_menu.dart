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
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


class ResourcesExtended extends StatelessWidget {
  const ResourcesExtended({super.key});

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


// Import other necessary packages and classes

class ResourcesMenu extends StatelessWidget {
  const ResourcesMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General CMAA Servies and Programs'),
      ),
      body: MyHomePage(),
      backgroundColor: Color.fromARGB(255, 14, 37, 57), // Use MyHomePage as the body of the Scaffold
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> dropdownOptions = [
  'Elder Home Repair',
  'Senior Citizen Law & Advocacy Project',
  'Money Management',
  'Crisis Intervention',
  'Nutrition Project',
  'Family Caregiver Program',
  'Guardianship Program',
  'Ancianos Latinos Unidos',
  'Medication Management',
  'A Matter of Balance',
  'My Life, My Health, Chronic Disease Self-Management Program',
];
  List<String> dropdownDescriptions = [
    'This program focuses on elders living in unsafe housing who are at risk for their health and safety, expanding housing options for those who want to remain in their own residence.',
    'Provides free legal assistance to elders on many issues including benefits, housing, civil matters, Medicaid/Medicare eligibility, and elder abuse and nursing home issues. Conducts education programs and distributes literature on critical topics as well.',
    'Provides money management services to elders in need.',
    'Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.',
    'Morbi lectus risus, iaculis vel dui eget, placerat congue leo.',
    'Curabitur blandit mollis enim. Praesent pretium, pede vel vehicula condimentum, ultrices risus interdum leo.',
    'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh.',
    'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
    'Mauris ullamcorper aliquet lacus. Vivamus sit amet tortor eget felis egestas semper.',
    'Etiam sit amet orci eget eros faucibus tincidunt. Duis leo.',
    'Nunc ut orci ridiculus, dapibus non dui.',
  ];

int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
                      
                      height:
                          50,),
         Container(
                      
                      width:
                          100, // Set the width to make the divider shorter horizontally
                      child: Divider(
                        color: Colors.grey,
                        height: 20.0, // Adjust the height as needed
                      ),
                    ),
                    Text(
                      'ACTIONABLE ITEMS',
                       style: GoogleFonts.poppins(
                 fontSize: 12, // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 229, 243, 255),
              ),

                    ),
                    Container(
                      width:
                          100, // Set the width to make the divider shorter horizontally
                      child: Divider(
                        color: Colors.grey,
                        height: 20.0, // Adjust the height as needed
                      ),
                    ),
        Row(
         children: [
  Expanded(
    child: Padding(
      padding: const EdgeInsets.all(5.0), // Increased padding to make the button bigger
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Change this to your preferred border color
            width: 2, // Change this to your preferred border width
          ),
          borderRadius: BorderRadius.circular(10), // Add rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              '\nMake a Request\n', 
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                color: const Color.fromARGB(255, 229, 243, 255),
              ),
            ),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Requests_Page()),
              );
            },
          ),
        ),
      ),
    ),
  ),
  Expanded(
    child: Padding(
      padding: const EdgeInsets.all(15.0), // Increased padding to make the button bigger
      child: Container(
        
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Change this to your preferred border color
            width: 2, // Change this to your preferred border width
          ),
          borderRadius: BorderRadius.circular(10), // Add rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              'Calendar\n&\nappointments',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                color: const Color.fromARGB(255, 229, 243, 255),
              ),
            ),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const CalendarViewContainer()),
              );
            },
          ),
        ),
      ),
    ),
  ),
],
        ),
        Container(
                      
                      width:
                          100, // Set the width to make the divider shorter horizontally
                      child: Divider(
                        color: Colors.grey,
                        height: 20.0, // Adjust the height as needed
                      ),
                    ),
                    Text(
                      'GENERAL CMAA SERVICES & PROGRAMS',
                       style: GoogleFonts.poppins(
                 fontSize: 12, // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 229, 243, 255),
              ),

                    ),
                    Container(
                      width:
                          100, // Set the width to make the divider shorter horizontally
                      child: Divider(
                        color: Colors.grey,
                        height: 20.0, // Adjust the height as needed
                      ),
                    ),
         CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: dropdownOptions.map((option) => FractionallySizedBox(
            widthFactor: 0.8,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(option,  style: GoogleFonts.poppins(), textAlign: TextAlign.center,),
                       backgroundColor:Color.fromARGB(255, 193, 220, 244),
                      content: SingleChildScrollView(
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                           
                            Text(dropdownDescriptions[dropdownOptions.indexOf(option)],  style: GoogleFonts.poppins()), // Display the description
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text("CLOSE", style: GoogleFonts.poppins()),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 500,
                  color:  const Color.fromARGB(255, 28, 54, 75),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          option,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: selectedIndex == dropdownOptions.indexOf(option)
                             ? Colors.white
                               : Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )).toList(),
        ),
         Text(
                      'Click on a tile to learn more.',
                       style: GoogleFonts.poppins(
                 fontSize: 12, // Adjust the font size as needed
      
                color: Color.fromARGB(255, 229, 243, 255),
              ),
         ),
      ],
    );
  }
}