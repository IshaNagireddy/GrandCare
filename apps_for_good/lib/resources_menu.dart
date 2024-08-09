import 'package:GrandCare/calendar_screens/calendar_view_container.dart';
import 'package:GrandCare/makereq.dart';
<<<<<<< Updated upstream
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
=======
import 'package:GrandCare/web_request_page.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

class ResourcesMenu extends StatelessWidget {
  const ResourcesMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
        title: const Text('General CMAA Servies and Programs'),
        backgroundColor: Colors.blue,
=======
        title: Text('Home',style: GoogleFonts.poppins(),),
>>>>>>> Stashed changes
      ),
      drawer: ResourcesExtended(),
    );
  }
}

class ResourcesExtended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
=======
    return SingleChildScrollView(
      child: Container(
        child: Column(
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
                  'Inquiry\nForm\nPage', 
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
                    MaterialPageRoute(builder: (context) => RequestContainer()),
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
                  'Calendar\n&\nAppointments ',
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
              options: CarouselOptions(height: 400.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,),
              
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
            Container(
                          width:
                              100, // Set the width to make the divider shorter horizontally
                          child: Divider(
                            color: Colors.grey,
                            height: 20.0, // Adjust the height as needed
                          ),
                        ),
             Text(
                          'Click on a tile to learn more.',
                           style: GoogleFonts.poppins(
                     fontSize: 12, // Adjust the font size as needed
          
                    color: Color.fromARGB(255, 229, 243, 255),
                  ),
             ),
               Text(
                          'Swipe between tiles to see all our services.',
                           style: GoogleFonts.poppins(
                     fontSize: 12, // Adjust the font size as needed
          
                    color: Color.fromARGB(255, 229, 243, 255),
                  ),
             ),
              Container(
                          height:
                              50,),
          ],
        ),
      ),
    );
>>>>>>> Stashed changes
  }
}
