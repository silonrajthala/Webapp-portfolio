import 'package:flutter/material.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/Clon.png'),
                fit: BoxFit.fill, // You can adjust the fit as needed
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                      0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                  BlendMode.dstATop, // Adjust blend mode as necessary
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Introductiion',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Passionate and driven computer engineering student with asolid academic foundation and agenuine love for technology. Commited to making apositive impact through innovative solutions while fostering personal growth and continuous learning. Known for being dedicated, reliable, and meticulous, with adep understanding fo computer architecture and operating systems. Actively seeking an internship opportunity to gain hands-on experience and expand my knowledge in the dynamic field of computer engineering.',
                )
              ],
            )),
        Container(
            padding: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/book.png'),
                fit: BoxFit.fill, // You can adjust the fit as needed
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                      0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                  BlendMode.dstATop, // Adjust blend mode as necessary
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Batchelor in Computer Engineering',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                    'Cosmos College of Management and Technology • Tutepani, Lalitpur,'),
                Text('2018-2023'),
                SizedBox(height: 10),
                Text(
                  'National Examination Board +2',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text('VS. Niketan College • Minbhawan, Kathmandu,'),
                Text('2016-2018'),
                SizedBox(height: 10),
                Text(
                  'School leaving Certificate SLC',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text('Rainbow English Secondary School • Dadhikot, Bhaktapur,'),
                Text('2015'),
              ],
            )),
        Container(
            padding: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/skl.png'),
                fit: BoxFit.fill, // You can adjust the fit as needed
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                      0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                  BlendMode.dstATop, // Adjust blend mode as necessary
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '',
                )
              ],
            )),
        Container(
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/pgm.png'),
                fit: BoxFit.fill, // You can adjust the fit as needed
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                      0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                  BlendMode.dstATop, // Adjust blend mode as necessary
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Programming',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '',
                )
              ],
            )),
        Container(
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/lng.png'),
                fit: BoxFit.fill, // You can adjust the fit as needed
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                      0.5), // Adjust opacity here (0.0 - fully transparent to 1.0 - fully opaque)
                  BlendMode.dstATop, // Adjust blend mode as necessary
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '',
                )
              ],
            )),
      ],
    ));
  }
}
