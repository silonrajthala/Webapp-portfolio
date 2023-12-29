import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screen/desktop/dabout.dart';
import 'package:portfolio/screen/desktop/dcontact.dart';
import 'package:portfolio/screen/desktop/dportfolio.dart';
import 'package:portfolio/screen/desktop/dservice.dart';
import 'package:portfolio/widget/custom_url_icon.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class DesktopHomeView extends StatefulWidget {
  const DesktopHomeView({super.key});

  @override
  State<DesktopHomeView> createState() => _DesktopHomeViewState();
}

class _DesktopHomeViewState extends State<DesktopHomeView> {
  String selectedSection = 'Home'; // Default section

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey[400]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // Adjust gradient colors and direction as needed
                ),
              ),
            ),
        title: Center(child: Text('Silon Rajthala',style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.bold,color: Colors.white),)),
        actions: [
          buildSection('Home'),
          buildSection('About'),
          buildSection('Services'),
          buildSection('Portfolio'),
          buildSection('Contact'),
          SizedBox(width: 50)
          // Add more sections as needed
        ],
      ),
      body: getSelectedSectionWidget(selectedSection),
    );
  }

  Widget buildSection(String sectionName) {
    bool isSelected = selectedSection == sectionName;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedSection = sectionName;
        });
      },
      child: Text(
        sectionName,
        style: TextStyle(fontSize: 20,fontFamily: 'Inter',
          color: isSelected ? Colors.blue : Colors.black, // Change text color
          fontWeight: isSelected
              ? FontWeight.bold
              : FontWeight.w900, // Change font weight
        ),
      ),
    );
  }

  Widget getSelectedSectionWidget(String sectionName) {
    switch (sectionName) {
      case 'Home':
        return DefaultDesktopHome();
      
      case 'About':
        return DesktopAbout();
      case 'Services':
        return DesktopServices();
      case 'Portfolio':
         return DesktopPortfolio();
      case 'Contact':
         return DesktopContact();
      // Add more cases for additional sections
      default:
        return Container(); // Default case returns an empty container
    }
  }
}

class DefaultDesktopHome extends StatefulWidget {
  const DefaultDesktopHome({super.key});

  @override
  State<DefaultDesktopHome> createState() => _DefaultDesktopHomeState();
}

class _DefaultDesktopHomeState extends State<DefaultDesktopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/DhapDam.png'),
              fit: BoxFit.cover, // You can adjust the fit as needed
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                    child: Container(
                  height: 400,
                  width: 400,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialWidget(
                              
                              placeholderText: '',
                              iconData: SocialIconsFlutter.linkedin,
                              //iconColor: Colors.pink,
                              link: 'https://www.linkedin.com/in/silon-rajthala-6b0182221?fbclid=IwAR0ruc-U6Fd9ZKAcfOD01giFtJ4tl7_Ymg8mhAJBnOzzP2UPP_FyWTojE4E', //provide the link
                              //placeholderStyle: TextStyle(
                              //color: Colors.black,
                              //fontSize: 20),
                              
                            ),
                            SizedBox(width: 10),
                            SocialWidget(
                              placeholderText: '',
                              iconData: SocialIconsFlutter.twitter,
                              link: 'https://twitter.com/SilonRajthala',
                            ),
                            SizedBox(width: 10),
                            SocialWidget(
                              placeholderText: '',
                              iconData: SocialIconsFlutter.instagram,
                              link: 'https://instagram.com/itzmesilon__', //provide the link
                            ),
                            SizedBox(width: 10),
                            SocialWidget(
                              placeholderText: '',
                              iconData: SocialIconsFlutter.facebook,
                              link:
                                  'https://www.facebook.com/silonrajthala', //provide the link
                            ),
                            SizedBox(width: 10),
                            SocialWidget(
                              placeholderText: '',
                              iconData: SocialIconsFlutter.youtube,
                              link: 'https://youtube.com', //provide the link
                            ),
                          ],
                        ),
                        Text(
                          "Hi, I,m Silon Rajthala",
                          style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "I'm a Fresher, who loves to coding ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        )
                      ]),
                )),
              ),
              Expanded(flex: 1, child: Text(''))
            ],
          )),
    );
  }
}
