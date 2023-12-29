import 'package:flutter/material.dart';
import 'package:portfolio/screen/mobile/mabout.dart';
import 'package:portfolio/widget/custom_url_icon.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class MobileHomeView extends StatefulWidget {
  const MobileHomeView({Key? key}) : super(key: key);

  @override
  State<MobileHomeView> createState() => _MobileHomeViewState();
}

class _MobileHomeViewState extends State<MobileHomeView> {
  final List<String> menuItems = ['Home', 'About', 'Services', 'Contact'];

  int _selectedIndex = 0; // To keep track of the selected index

  void _onMenuItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        title: Text('Silon Rajthala',style: TextStyle(color: Colors.white,fontFamily: 'Inter'),),
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.menu),
            color: Colors.grey[400]!,
            onSelected: _onMenuItemSelected,
            itemBuilder: (BuildContext context) {
              return List<PopupMenuEntry<int>>.generate(
                menuItems.length,
                (index) {
                  return PopupMenuItem<int>(
                    value: index,
                   child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey[400]!],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            menuItems[index],
                            style: TextStyle(color: Colors.white), // Text color
                          
              ))));},
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _getBodyWidget(_selectedIndex),
      ),
    );
  }

  Widget _getBodyWidget(int index) {
    // Return different widgets based on the selected index
    switch (index) {
      case 0:
        return DefaultMobileHome();
      case 1:
        return MobileAbout();
      case 2:
        return Text('Services page under development');
      case 3:
        return Text('Contact page under development');
      default:
        return Text('No page found DhapDam');
    }
  }
}

class DefaultMobileHome extends StatefulWidget {
  const DefaultMobileHome({super.key});

  @override
  State<DefaultMobileHome> createState() => _DefaultMobileHomeState();
}

class _DefaultMobileHomeState extends State<DefaultMobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/DhapDamM.png'),
                fit: BoxFit.cover, // You can adjust the fit as needed
              ),
            ),
            child: Center(
                child: Container(
                    width: 200,
                    height: 400,
                    //color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialWidget(
                                placeholderText: '',
                                iconData: SocialIconsFlutter.facebook,
                                link: 'https://facebook.com/silonrajthala'),
                            SizedBox(width: 10),
                            SocialWidget(
                                placeholderText: '',
                                iconData: SocialIconsFlutter.instagram,
                                link: 'https://instagram.com/itzmesilon__'),
                            SizedBox(width: 10),
                            SocialWidget(
                                placeholderText: '',
                                iconData: SocialIconsFlutter.linkedin,
                                link: 'https://www.linkedin.com/in/silon-rajthala-6b0182221?fbclid=IwAR0ruc-U6Fd9ZKAcfOD01giFtJ4tl7_Ymg8mhAJBnOzzP2UPP_FyWTojE4E'),
                            SizedBox(width: 10),
                            SocialWidget(
                                placeholderText: '',
                                iconData: SocialIconsFlutter.twitter,
                                link: 'https://twitter.com/SilonRajthala'),
                            SizedBox(width: 10),
                            SocialWidget(
                                placeholderText: '',
                                iconData: SocialIconsFlutter.youtube,
                                link: 'https://youtube.com'),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Hi, I,m Silon ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          "I'm a tech enthusiast passionate about creative problem-solving. Eager to learn and contribute to innovative projects, I thrive in the ever-evolving tech world.",
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold,),
                        )
                      ],
                    )))));
  }
}
