import 'package:flutter/material.dart';
import 'package:GrandCare/pages.dart';


class Widget088 extends StatelessWidget {
  const Widget088({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Flutter Mapp'),
      backgroundColor: Colors.blue,
    ),
    drawer: AppDrawer(), 
  );
}}


class AppDrawer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
          accountName: const Text('Grandparent/Administator Name'), 
          accountEmail: const Text('administator@MCAA.org'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          ),

          ListTile(
            title: const Text('Make a Request', style: TextStyle(fontWeight: FontWeight.bold,
            ),
            ), 
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Requests_Page()),
                  );
            },
          ),
          ListTile(
            title: const Text('Counselor Calendar', style: TextStyle(fontWeight: FontWeight.bold,
            ),
            ),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Calendar()),
                  );
            },
          ),
          
         ExpansionTile(
          title: const Text(
            'Services',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
          ListTile(
            title: const Text('Benefits Navigation'),
            onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Benefits_Navigation()),
                  );
            },
          ),
          ListTile(
            title: const Text('Clothing & Household Goods'),
            onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Clothing_Household_Goods()),
                  );
            },
          ),
          ListTile(
            title: const Text('Education'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Education()),
                  );
            },
          ),
          ListTile(
            title: const Text('Employment'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Employment()),
                  );
            },
          ),
          ListTile(
            title: const Text('Food Assistance'),
            onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Food_Assistance()),
                  );
            },
          ),
          ListTile(
            title: const Text('Housing & Shelter'),
            onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Housing_Shelter()),
                  );
            },
          ),
          ListTile(
            title: const Text('Income Support'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Income_Support()),
                  );
            },
          ),
          ListTile(
            title: const Text('Individual & Family Support'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Individual_Family_Support()),
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
            title: const Text('Social Enrichment'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Social_Enrichment()),
                  );
            },
          ),
          ListTile(
            title: const Text('Spiritual Enrichment'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Spiritual_Enrichment()),
                  );
            },
          ),
          ListTile(
            title: const Text('Sports & Recreation'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sports_Recreation()),
                  );
            },
          ),
          ListTile(
            title: const Text('Transportation'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Transportation()),
                  );
            },
          ),
          ListTile( 
            title: const Text('Utilities'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Utilities()),
                  );
            },
          ),
          ListTile(
            title: const Text('Wellness'),
            onTap: () {
              Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Wellness()),
                  );
            },
          ),
          ]

         )
         
        ],
      ),
    );
    }


}