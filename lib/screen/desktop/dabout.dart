import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesktopAbout extends StatefulWidget {
  const DesktopAbout({Key? key}) : super(key: key);

  @override
  State<DesktopAbout> createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {

  late Timer _timer;
  List<String> imagePaths = [
    'assets/images/1.png', // Replace with your image paths
    'assets/images/2.png',
    'assets/images/3.png',
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }



  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 205, 3),
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/intro.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                    BlendMode.dstATop, // Adjust blend mode as necessary
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Introduction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Passionate and driven computer engineering student with asolid academic foundation and agenuine love for technology. Commited to making apositive impact through innovative solutions while fostering personal growth and continuous learning. Known for being dedicated, reliable, and meticulous, with adep understanding fo computer architecture and operating systems. Actively seeking an internship opportunity to gain hands-on experience and expand my knowledge in the dynamic field of computer engineering.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ClipOval(
                          child: Image.asset(
                            imagePaths[currentIndex],
                            width: 200,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 205, 3),
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/edu.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.3), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                    BlendMode.dstATop, // Adjust blend mode as necessary
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Education',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                               Radius.circular(20),
                              ),
                              
                              image: DecorationImage(
                                image: AssetImage('assets/images/book.png'),
                                fit: BoxFit.fill,
                                
                              )),
                        )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Batchelor in Computer Engineering',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Cosmos College of Management and Technology • Tutepani, Lalitpur,'),
                            Text('2018-2023'),
                            SizedBox(height: 10),
                            Text(
                              'National Examination Board +2',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('VS. Niketan College • Minbhawan, Kathmandu,'),
                            Text('2016-2018'),
                            SizedBox(height: 10),
                            Text(
                              'School leaving Certificate SLC',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                'Rainbow English Secondary School • Dadhikot, Bhaktapur,'),
                            Text('2015'),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 205, 3),
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/skill.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.3), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                    BlendMode.dstATop, // Adjust blend mode as necessary
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Skills',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [ Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                          ],
                        )),
                        Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                               Radius.circular(20),
                              ),
                              
                              image: DecorationImage(
                                image: AssetImage('assets/images/skl.png'),
                                fit: BoxFit.fill,
                                
                              )),
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 205, 3),
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/programme.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.3), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                    BlendMode.dstATop, // Adjust blend mode as necessary
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Programming languages',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                               Radius.circular(20),
                              ),
                              
                              image: DecorationImage(
                                image: AssetImage('assets/images/pgm.png'),
                                fit: BoxFit.fill,
                                
                              )),
                        )),
                     Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                          ],
                        )),
                        
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 205, 3),
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/language.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                        0.3), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                    BlendMode.dstATop, // Adjust blend mode as necessary
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Languages',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [ Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                          ],
                        )),
                        Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                               Radius.circular(20),
                              ),
                              
                              image: DecorationImage(
                                image: AssetImage('assets/images/lng.png'),
                                fit: BoxFit.fill,
                                
                              )),
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.yellow,
            child: Text('  other content is under development'),
          ),
        ],
      ),
    );
  }
}
