import 'package:GrandCare/calendar_view_container.dart';
import 'package:GrandCare/makereq.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


class ResourcesMenu extends StatelessWidget {
  const ResourcesMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CareExpress Main Page',style: GoogleFonts.poppins(),),
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
    'This program is counseling, referral and support for elders in immediate critical need. Crisis intervention provides crisis case management; training to providers, especially minority programs; and purchase of emergency services.',
    'The Nutrition Project serves congregate and home delivered meals to elders in their service area.',
    'The Family Caregiver Support Program empowers elders and caregivers to manage the personal, social, and economic challenges of caring for an elderly parent, relative, or friend by providing information, education, support, and services that enhances quality of life, prevent premature institutionalization and promote elders independence in the community.',
    'The guardianship program provides guardianship/conservator services to frail elders who are adjudicated to be incompetent. Professional staff conduct evaluations, act as guardians, consult with caregivers and elder service providers as to options on referrals, provide training and community education.',
    'Service Area: Fitchburg & Leominster. Services include outreach, information and assistance, home visits, interpretation, and translation. One of the key aspects of the program is to prevent social isolation and increase elder involvement in the community.',
    'Provides public presentations on medication management issues as well as one to one consultation with elders where needed. In addition, MassMedLine has developed educational media regarding medication management for distribution throughout Central Massachusetts.',
    'Designed to reduce the fear of falling and increase the activity levels of older adults who have concerns about falls.',
    'For adults living with challenges of chronic conditions and learn techniques for dealing with issues such as pain, fatigue and difficult emotions.',
  ];

int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.textScalerOf(context);
    final double baseFontSize = 30;
    final double scaledFontSize = textScaler.scale(baseFontSize);
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
                 fontSize: scaledFontSize, // Adjust the font size as needed
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
              '\nMake a Request\n', 
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: scaledFontSize*.75,
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
              'Calendar\n&\n Appointments ',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: scaledFontSize*0.75,
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
                      'GENERAL SERVICES & PROGRAMS',
                       style: GoogleFonts.poppins(
                 fontSize: scaledFontSize, // Adjust the font size as needed
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
                            fontSize: scaledFontSize*0.9,
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
                 fontSize: scaledFontSize*0.75, // Adjust the font size as needed
      
                color: Color.fromARGB(255, 229, 243, 255),
              ),
         ),
           Text(
                      'Swipe between tiles to see all our services.',
                       style: GoogleFonts.poppins(
                 fontSize: scaledFontSize*0.75, // Adjust the font size as needed
      
                color: Color.fromARGB(255, 229, 243, 255),
              ),
         ),
      ],
    );
  }
}
class CustomIndicator extends StatelessWidget {
  final int currentPage;

  CustomIndicator({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 8,
      margin: EdgeInsets.only(bottom: 12),
      width: 144,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: ScrollController(), // Initialize a ScrollController here
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index? Colors.white : Colors.grey.withOpacity(0.6),
            ),
          );
        },
      ),
    );
  }
}