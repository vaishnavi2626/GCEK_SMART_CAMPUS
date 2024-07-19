
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trial1/Services.dart';
import 'package:trial1/aboutGCEK.dart';
import 'package:trial1/admission.dart';
import 'package:trial1/branches.dart';
import 'package:trial1/clubs.dart';
import 'package:trial1/documents.dart';
import 'package:trial1/facilities.dart';
import 'package:trial1/models/user_model.dart';
import 'package:trial1/scholarship.dart';
import 'package:trial1/screens/SplashScreen.dart';
import 'package:trial1/screens/forum.dart';
import 'package:trial1/screens/lostandfound.dart';
import 'package:url_launcher/url_launcher.dart';

import '../placement.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User? user;
  UserModel loggedInUser = UserModel();
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    // Perform any additional tasks after signing out the user
  }

  Future<void> getUser() async {
    user = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      setState(() {
        loggedInUser = UserModel.fromMap(value.data());
      });
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  Future<void> _launchPhone(String url) async {
    final Uri uri = Uri(scheme: "tel", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 79, 0, 11),
            elevation: 0,
            title: const Text(
              'GCEK',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
               DrawerHeader(
                  decoration: const BoxDecoration(color: Color(0xFF22223b)),
                  child: ListTile(
                    leading: const Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text(
                      "${loggedInUser.firstName} ${loggedInUser.secondName}",
                      // 'Atharv Chougule',
                      //todo
                    ),
                    subtitle: Text(
                      loggedInUser.email.toString(),
                      // 'atharvc2022@gmail.com',
                      style: const TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                    // trailing: Icon(Icons.phone),

                    iconColor: Colors.white54,
                    textColor: Colors.white,
                  )),
              // ListTile(
              //   leading: const Icon(Icons.dashboard),
              //   title: const Text('Dashboard'),
              //   onTap: () {},
              // ),
              ListTile(
                leading: const Icon(Icons.add_alert_outlined),
                title: const Text('Forum'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const Chat(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_alert_outlined),
                title: const Text('Lost And Found'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LostAndFound(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.miscellaneous_services),
                title: const Text('Services'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const Services(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('Privacy Policy'),
                onTap: () => launch(
                    'https://www.freeprivacypolicy.com/live/76b9281d-dfd5-4e57-9e8d-633121754dbc'),
              ),
              ListTile(
                leading: const Icon(Icons.key),
                title: const Text('User Logout'),
                onTap: (){
                  _signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SplashScreen()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.green[50],
        body: SafeArea(
          child: Container(
            color: Colors.orange[50],
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 300.0, autoPlay: true),
                  items: [_home[1], _home[2], _home[3], _home[4], _home[5]].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        String str = i.toString();
                        return Container(
                          padding: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(str, fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                buildCustomContainer(
                  50,
                  374,
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                  font_size: 15,
                  image_path: null,
                  text: "Important",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const admission()));
                      },
                      child: buildCustomContainer(
                        120,
                        120,
                        text: "Admission",
                        image_size: 2,
                        image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fadmission1.png?alt=media&token=1aad30b7-6526-454b-accc-51da7244bb8d',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const document()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_size: 2,
                          text: "Document",
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fdocument1.png?alt=media&token=caff7c10-d52e-4984-b849-aa2465ac660b'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const scholarship()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_size: 1.5,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fscholarship1.png?alt=media&token=54f7214a-d21b-48b1-ade6-cf0cd6f1791c',
                          text: "Scholarship"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildCustomContainer(50, 374,
                    font_size: 13,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    image_path: null,
                    text: "News and Updates"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://cetcell.mahacet.org/');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fmht_cet_1.png?alt=media&token=7eabe645-7514-48ff-87c8-a091d748d6b2',
                          text: "MHT-CET",
                          image_size: 4),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://jeemain.nta.nic.in/');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fjee_1.png?alt=media&token=3763ee1b-b1d2-4b89-8f1c-fc458d5dee7d',
                          text: "JEE Main",
                          image_size: 3),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(
                            'https://fe2022.mahacet.org/StaticPages/HomePage');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fcap_round1.png?alt=media&token=62a5ca0d-8b26-4582-8924-5502458429ca',
                          text: "Cap Round",
                          image_size: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL('http://www.gcekarad.ac.in/');
                  },
                  child: buildCustomContainer(
                    120,
                    120,
                    image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Flogo.png?alt=media&token=ca21de0b-51a1-4f6a-9de6-0ce36ea335ba',
                    text: "GCEK Web",
                    image_size: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildCustomContainer(50, 374,
                    font_size: 13,
                    image_path: null,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    text: "GCEK"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const aboutpage()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fabout_gcek1.png?alt=media&token=bec0c0a8-ebcb-428d-9b5b-f2d8d77a1265',
                          text: "About GCEK",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const branch()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fbranches1.png?alt=media&token=111d87d1-977d-4112-a27c-434f99fb9576',
                          text: "Branches",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlacementPage()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fplacement1.png?alt=media&token=fcced41f-cfae-438f-8341-965ab2dd1a6e',
                          text: "Placement",
                          image_size: 1.5),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const clubs()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fcampus_life1.png?alt=media&token=d9e5841b-6f8d-49a7-8e54-151228517a7a',
                          text: "College Clubs",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const facility()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Ffacilities1.png?alt=media&token=db0394b6-1280-4d4a-ad00-3af43fd282b2',
                          text: "Facilities",
                          image_size: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(8.0),
                  height: 360,
                  width: 360,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 114, 0, 38),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0.1,
                          blurRadius: 5.0,
                          offset: Offset(0, 7)),
                    ],
                    // color: Colors.,
                  ),
                  child: Column(
                    children: [
                      const Text('CONTACT US',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                      const Divider(thickness: 2, color: Colors.white),
                      const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text('Government College of Engineering, Karad',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Colors.white)),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                            '(An Autonomous Institute of Government of Maharashtra)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                color: Colors.white)),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                        indent: 30,
                        endIndent: 30,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Address : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                              ),
                              children: [
                            TextSpan(
                              text:
                                  'Vidyanagar, Karad, Dist. Satara, Maharashtra (India) - 415124\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                                text: 'Contact No :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: '9545272414\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          fontFamily: 'Poppins')),
                                ]),
                            TextSpan(
                                text: 'Visit Website :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'http://www.gcekarad.ac.in/\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          fontFamily: 'Poppins')),
                                ]),
                            TextSpan(
                                text: 'Email :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'admin.mis@gcekarad.ac.in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      )),
                                ])
                          ])),
                      const Divider(thickness: 2, color: Colors.white),
                      const Text(
                        'Follow us',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.linkedin.com/school/government-college-of-engineering-karad-official/');
                            },
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Flinkdin.png?alt=media&token=ba43f833-1321-499f-934c-f23bbb6970d7',
                              scale: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://www.facebook.com/GCoEKarad/');
                            },
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Ffacebook.png?alt=media&token=deb12f2e-be58-4979-b980-f5dc142db163',
                              scale: 10,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://www.youtube.com/@gcek');
                            },
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Fyoutube.png?alt=media&token=cc12df09-c2e5-42e8-b6b7-427635c27d35',
                              scale: 10,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://twitter.com/gcekarad');
                            },
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/icons%2Ftwitter.png?alt=media&token=97314224-634e-491e-9622-107386df0e0f',
                              scale: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

Container buildCustomContainer(
  double height,
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 12,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

const Color shade1 = Color(0x00ce4257);
const Color shade2 = Color(0x00ff9b54);
const Color shade3 = Color.fromARGB(255, 79, 0, 11);
const Color shade4 = Color.fromARGB(255, 255, 243, 224);

Container buildCustomContainer1(
  double height,
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 12,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

Container buildCustomContainer2(
  double height,
  double width, {
  Color font_color = Colors.white,
  Color boxColor = shade1,
  double image_size = 7,
  double font_size = 13,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: font_size,
                fontFamily: 'Poppins',
                color: font_color,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container buildCustomContainer3(
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 13,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}


Map<int , String> _home = {
    1: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhomepage%2F1.jpg?alt=media&token=9280b24a-f9ed-4dfb-86a7-cd827f25bc6d',
    2: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhomepage%2F2.jpg?alt=media&token=4f4d017c-7897-49d1-b3b2-3653d0b1bfe8',
    3: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhomepage%2F3.jpg?alt=media&token=78335eb8-245b-4ad9-91d7-1f9b810de54c',
    4: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhomepage%2F4.jpg?alt=media&token=048049bd-b75c-44fb-a1a7-c4e78e4dcd1c',
    5: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhomepage%2F5.jpg?alt=media&token=2761d41c-6f3f-48b9-bf4c-89d7daaf0390',
};