import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class clubs extends StatelessWidget {
  const clubs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back)),
            backgroundColor: shade3,
            elevation: 0,
            title: const Text(
              'Clubs',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        backgroundColor: const Color(0xFFf2e9e4),
        body: Container(
          color: const Color(0xFFf2e9e4),
          margin: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          // builder: (context) => alpha()
                          builder: (context) => _club(
                              'Alphageeks',
                              alphageeks_logo,
                              'alpha',
                              alphageeks_info,
                              16,
                              _alphageeks,
                              alphageeks_insta)));
                },
                child: Hero(
                  tag: 'alpha',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                        ),
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Falphageeks.png?alt=media&token=fbbb6cda-670b-4361-850a-aaa0b7d8ab8b',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'GDSC',
                                gdsc_logo,
                                'gdsc',
                                gdsc_info,
                                7,
                                _gdsc,
                                gdsc_insta)));
                  },
                  child: Hero(
                      tag: 'gdsc',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          gdsc_logo,
                          fit: BoxFit.cover,
                        ),
                      ))),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'Defence Club',
                                defence_logo,
                                'defence',
                                defence_info,
                                4,
                                _defence,
                                defence_insta)));
                  },
                  child: Hero(
                      tag: 'defence',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          defence_logo,
                          fit: BoxFit.cover,
                        ),
                      ))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _club(
                              'Yoga Club',
                              yoga_logo,
                              'yoga',
                              yoga_info,
                              12,
                              _yoga,
                              yoga_insta)));
                },
                child: Hero(
                  tag: 'yoga',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        Center(
                          child: Image.network(
                            yoga_logo,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'Pixel Club',
                                pixel_logo,
                                'pixel',
                                pixel_info,
                                5,
                                _pixel,
                                pixel_insta)));
                  },
                  child: Hero(
                      tag: 'pixel',
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                              pixel_logo)))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _club(
                              'Tiffan',
                              tiffan_logo,
                              'tiffan',
                              tiffan_info,
                              12,
                              _tiffan,
                              tiffan_insta)));
                },
                child: Hero(
                  tag: 'tiffan',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                        ),
                        Image.network(tiffan_logo)
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'House of Arts Club',
                                arts_logo,
                                'arts',
                                arts_info,
                                15,
                                _arts,
                                arts_insta)));
                  },
                  child: Hero(
                      tag: 'arts',
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.white38,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Container(
                                    color: Colors.white,
                                  ),
                                  Image.network(
                                      arts_logo)
                                ],
                              ))
                        ],
                      ))),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'SAE BAJA',
                                baja_logo,
                                'baja',
                                baja_info,
                                12,
                                _baja,
                                baja_insta)));
                  },
                  child: Hero(
                      tag: 'baja',
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                              baja_logo)))),
            ],
          ),
        ),
      ),
    );
  }
}

String alphageeks_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Falphageeks.png?alt=media&token=fbbb6cda-670b-4361-850a-aaa0b7d8ab8b';
String alphageeks_info =
    '''
    Alphageeks is a community of coders of Government College of Engineering, Karad. This coding club organizes events and sessions from Alumni, coders, mentors. Sessions are taken by coding club members by inviting external or within community people.
    This coding club aims to provide opportunities for students to make practical use of their learning. It is open platform for aspiring coders to come together to help each other. 
    We have two primary objectives-
    One of which is to convince students of the importance of data structures and algorithms from the very first year and to create a lasting competitive coding culture in student organizations.
    The second goal is to get GCEK teams to participate in competitions like ACM ICPC, etc.
    We strive to increase student participation and performance in competative programming. Our college students are recognized for our coding skills.
\nClub Achivements:
- Sent two team for ACM-ICPC competition
- Ranked AIR 109 in ICPC Amritapuri Regionals

''';
String alphageeks_pic_path = 'assets/images/clubs/alphageeks/';
String alphageeks_insta = 'https://www.instagram.com/gcek_alphageeks/';

String gdsc_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Fgdsc.jpg?alt=media&token=94810aff-f309-4579-8a24-8246483560f3';
String gdsc_info =
    '''
Google Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining a GDSC, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community.
It is the first year of GDSC at GCEK with a objective of developing various skills and their interest in upcoming technologies at our campus.
Founder:
Tejal Prashant Yawalkar 
President / Head:
Tejal Prashant Yawalkar (GDSC LEAD 2022-23)
Activities held till date:
1.Compose Camp:
It is a series of sessions focusing on android app development using kotlin.
Sessions covered from basics of Kotlin to deploying an Android Application
23rd  September  -  Basics of android 
5th October - Introduction to Android App
5th October - Development of Android App

2.Cloud Career Practitioners Pathway:
It is a Course provided by GDSC focusing on Cloud concepts 

Duration  -   14th November to 30 December 2022

3.Introduction to Cloud and DevOps
Series of sessions to kick start a new technology and explore career opportunities
Date : 25th February 2023

4.Web Campaign:
          GDSC is back with its another amazing session on HTML and CSS.
         Learn how to code and design your website.
         Date : 12th March 2023
5.Machine Learning
Date : 14th April 2023

''';
String gdsc_pic_path = 'assets/images/clubs/gdsc/';
String gdsc_insta = 'https://www.instagram.com/gdsc_gcek/';

String defence_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Fdefence.jpg?alt=media&token=9375e0a8-c5ef-4f0f-9c4c-40f2addc8ceb';
String defence_info =
    '''
The Defence Club of GCE Karad is established to provide a common platform to all the defence aspirants. In order to prepare defence aspirants to become officers in the Army, Navy, Air Force, Coast Guard and CAPF. The defence club arranges various sessions for leadership training, defence examination preparation (CDS,AFCAT,INET,CAPF), Service Selection Board (SSB) interview training, self defence and adventure activities. The club members are always enthusiastic towards the preparation. Due to their hard work and dedication they have cleared the defence examination.
Defence club is about group of students who have strong desire to join Indian Armed Forces and serve the Nation.The main objective of this Club is to inculcate Officer's like qualities by conducting different activities throughout the year.We have conducted Psychological tests Practice, Group Discussions, Lecturettes and Current Affairs Discussions.Our daily sessions timing is from 6.30 AM to 8.30 AM in which we do physical exercise and then SSB and Written Exams Preparation. \n

Club Achievers:

Vaibhav Ajit Karne
Achievements: 
- Recommended for INDIAN AIRFORCE and INDIAN ARMY.
- AIR 1 - SSC TECH Army
- Joined Officers Training Academy in November, 2022 
- AIR 200- IAF through AFCAT Examination 
- Joined Airforce Academy in December, 2022\n

Kedar Parandwal
Cleared AFCAT Exam 4 times And qualified for SSB interview
Qualified for SSC Tech Army interview...
Qualified 2 times for Indian Coast Gaurd SSB interview..\n

Vishwajeet Patil
Cleared CDS Exam 2-3 times qualified for SSB interview
Cleared AFCAT written Examination and qualified for SSB interview
Qualified for SSC TECH Army Interview\n

Pratiksha Sanjay Patil
Cleared AFCAT 2 2022 qualified for SSB Interview
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vishal Kothavale
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Mayuri Barakde
Qualified for SSC TECH NAVY SSB interview (Conference Out)\n

Arpita Dake
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Aditi Dhigare
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vimalkumar Kamble
Cleared CDS 2 2022 Written Examination.\n

''';
String defence_pic_path = 'assets/images/clubs/defence/';
String defence_insta = 'https://www.instagram.com/defence_club_gcek/';

String yoga_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Fyoga.png?alt=media&token=feca7e94-3639-41fd-8d3e-b8d5d390b8d3';
String yoga_info =
    '''
Yoga Club is dedicated to the practice of yoga and Meditation. We practice poses while learning about the practices of yoga and how yoga can be used to manage stress, improve the mind-body
connection, and increase strength and flexibility. We also arrange
different sessions on Yoga that will help to the students and
faculties too.
Events conducted are Yoga Competition, Yoga Day Workshop,
Yoga Mediatation Workshop.

''';
String yoga_pic_path = 'assets/images/clubs/yoga/';
String yoga_insta = 'https://www.instagram.com/yoga_club_gcek/';

String pixel_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Fpixel.jpg?alt=media&token=b06c6a5c-e337-444b-aee0-b0f463e309a6';
String pixel_info =
    '''
      Pixel Club is a vibrant and dynamic photography club based at Government College of Engineering, Karad. Established with the aim of fostering a passion for photography, the club provides an inclusive platform for students to explore and showcase their creativity through the lens.
      The club organizes regular meetings, workshops, and photo walks where members can learn new techniques, exchange ideas, and gain valuable insights from experienced photographers. These events cover a wide range of topics, including composition, lighting, post-processing, and storytelling.
      Pixel Club also hosts photography competitions, both within the college and with other photography clubs, to encourage healthy competition and recognize exceptional talent. The club actively participates in various college events, capturing memorable moments and creating a visual chronicle of campus life.
      In addition to the events, Pixel Club maintains an online presence, sharing stunning photographs and informative articles on their website and social media platforms. This allows members to connect with a wider audience and receive constructive feedback on their work.
''';
String pixel_pic_path = 'assets/images/clubs/pixel/';
String pixel_insta = 'https://www.instagram.com/pixelgcek/';

String tiffan_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Ftiffan.png?alt=media&token=118ec828-0c60-4359-a216-26e62d009dc0';
String tiffan_info =
    '''
The Club was started in 2018. 
Efficycle event consist mainly of 3 segments:
a.conventional 
b.Advanced
c.Effique 

Team name - Hurricane
Vehicle name - Ashwamegha

Achievements-
2018- AIR - 33
2019- AIR - 19
2020- AIR - 3
2021- AIR - 3
2022- AIR - 6

- Achieved BEST BUSINESS PLAN AWARD
- Achived BEST INNOVATION AWARD

''';
String tiffan_pic_path = 'assets/images/clubs/tiffan/';
String tiffan_insta = 'https://www.instagram.com/saegcek/';

String arts_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Farts.png?alt=media&token=2d35f366-3166-4373-9804-464fc7bceb8f';
String arts_info =
    '''
The art club is to encourage students to express their thoughts,
feelings and creativity through the various visual art forms from two dimensions to three dimensions and conducts workshops on Clay Modelling, Rangoli, Poster making, Painting,Sketching and events like Drawing competition , Shrunkhala,
Rangadhara Landscape competiton.

''';
String arts_pic_path = 'assets/images/clubs/arts/';
String arts_insta = 'https://www.instagram.com/gcek.houseofarts.club/';

String baja_logo = 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fclub_logos%2Fbaja.jpg?alt=media&token=b9453cf7-bccc-49d1-8527-d261e680f10d';
String baja_info =
    '''
Baja SAE is a Collegiate Design Series competition run by the Society of Automotive Engineers International (SAE International). Teams of students from universities all over the world design and build small off-road cars. The goal in Baja SAE is to design, build and race off-road vehicles that can withstand the harshest elements of rough terrain.

We are Team Demons and we've been participating in M Baja competition for past few seasons now and we are continuously on a journey of discovering and exploring new adventures.
We get a hands on experience in terms of manufacturing our ATV and the competition is such as that it improves our non- technical skills as well.

The competition takes place in these following phases:

Phase 1
The first leg (Phase 1) i.e. Preliminary Round, scheduled in August 2023, focused on the virtual presentation of the ATVs of teams. The Preliminary Round tests the technical and professional capacity of teams over an online platform. The two-day event included a virtual Inauguration, presentations from teams showcasing the finalised design of their buggy.

Phase 2
The second leg involved Virtual Dynamic Events with the help of Automotive Simulation Software combined with Digital Static Events for 2023 edition. This incorporated Virtual Static Events Evaluation such as Design, Cost, Sales Presentation as well as the Dynamic Events such as Maneuverability and All Terrain Performance held virtually through globally benchmarked Automotive Simulation software, IPG CarMaker. The objective of these events is to evaluate the software knowledge, design understanding, cost efficiency and business skills of the participating teams.

Phase 3
The final leg i.e. Phase 3, was conducted physically for mBAJA in February'23. This leg had  a physical evaluation of the buggies of the participating teams. The event included Dynamic Events such as Acceleration Event, Maneuverability Event, Suspension & Traction Event & Endurance Event along with the initial technical evaluation.

''';
String baja_pic_path = 'assets/images/clubs/baja/';
String baja_insta = 'https://www.instagram.com/saegcek/';

class _club extends StatelessWidget {
  final int no_of_images;
  final String title, img_path, info, tag, insta_id;
  final Map <int, String> CLUB;
  const _club(
      this.title,
      this.img_path,
      this.tag,
      this.info,
      this.no_of_images,
      this.CLUB,
      this.insta_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shade4,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          backgroundColor: shade3,
          elevation: 0,
          title: Text(
            title.toString(),
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: tag.toString(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(child: Image.network(img_path)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            buildCustomContainer3(374, text: info.toString(), font_size: 13),
            const SizedBox(
              height: 5,
            ),
            buildCustomContainer(50, 374,
                text: 'Events and Club Activities',
                boxColor: shade1,
                font_size: 15,
                font_color: Colors.white),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(height: 300, autoPlay: true),
              itemCount: no_of_images,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: Container(
                    margin: const EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          CLUB[itemIndex].toString(),
                          fit: BoxFit.cover,
                        ))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL(insta_id.toString());
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'connect us on instagram',
                    boxColor: shade1,
                    font_size: 15,
                    font_color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('URL NOT FOUND');
  }
}

Map<int, String> _alphageeks = {
  0: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F1.jpeg?alt=media&token=b8720c6f-b201-42e8-ad31-a2a6a478e389',
  1: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F2.jpeg?alt=media&token=25093368-d3a3-4718-aa51-f8829499e1bd',
  2: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F3.jpeg?alt=media&token=44a16f66-88da-4821-ac5b-0b24fca48bb8',
  3: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F4.jpeg?alt=media&token=001b27d0-e7d1-43c3-9ebf-7e88506ec413',
  4: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F5.jpeg?alt=media&token=8ddb650d-831b-4006-8e43-613ea742eb37',
  5: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F6.jpeg?alt=media&token=96180603-d783-4344-a1b2-5fd6e99cc46b',
  6: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F7.jpeg?alt=media&token=61964a43-653a-4ef5-b92c-3b4ceb3e36b1',
  7: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F8.jpeg?alt=media&token=a8a46fca-ff08-4468-8231-bd005909f028',
  8: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F9.jpeg?alt=media&token=58c5128d-914f-48d7-afb9-37a5c04382f4',
  9: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F10.jpeg?alt=media&token=203cc4ba-88a2-4590-b40d-d9ee9c460de4',
  10: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F11.jpeg?alt=media&token=cbb1c096-2be9-496c-b6d2-bb26a080fc64',
  11: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F12.jpeg?alt=media&token=8bdd0f55-ba80-414f-a1a2-f389f5d44706',
  12: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F13.jpeg?alt=media&token=f6f92ca9-2329-4ae7-91c5-3f3b82a19305',
  13: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F14.jpeg?alt=media&token=42126368-e1da-4dd2-9e82-43d057c3d45f',
  14: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F15.jpeg?alt=media&token=435123e6-1a0f-42e7-936a-2190e1246228',
  15: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Falphageeks%2F16.jpeg?alt=media&token=a4331b65-f2fa-4f7a-815c-64222a2e5906',
};

Map<int, String> _gdsc = {
  0: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F1.jpeg?alt=media&token=abdd8832-c7d8-48bc-b7a5-21e71b64e761',
  1: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F2.jpeg?alt=media&token=47696974-5806-4d95-9dac-1c08e13c5ddb',
  2: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F3.jpeg?alt=media&token=a7112e40-7eb6-4cda-bc1f-31500d7151a8',
  3: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F4.jpeg?alt=media&token=3c2a7ae7-ca52-433f-99c2-9e529861b6a9',
  4: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F5.jpeg?alt=media&token=db2e48fd-8833-423c-bc4c-10f8e82bca22',
  5: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F6.jpeg?alt=media&token=2fb96af8-87ac-4d66-affd-88c2b6acbff2',
  6: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fgdsc%2F7.jpeg?alt=media&token=5bf89bb3-7c3f-4d0f-aa8d-31a2f73a4eb2',
};

Map<int , String> _defence = {
  0:'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fdefence%2F1.jpeg?alt=media&token=31abc10e-591d-4762-83a1-5c73895ef545',
  1:'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fdefence%2F2.jpeg?alt=media&token=650c5676-969e-4afd-8e1c-329e30ddea2d',
  2: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fdefence%2F3.jpeg?alt=media&token=9d0e749a-b799-4c8f-b4b2-c869151cc42b',
  3: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fdefence%2F4.jpeg?alt=media&token=8780f65a-45f1-4629-a1ae-88b975937a36',
};

Map<int, String> _yoga = {
  0:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F1.jpeg?alt=media&token=5720da82-1011-4404-8b0e-aeb52f8b3b9f',
  1:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F2.jpeg?alt=media&token=950a3166-3dbc-48dc-aad5-29bc06da5cb5',
  2:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F3.jpeg?alt=media&token=fa31fc8b-951b-468b-a411-b35ecfe76ac7',
  3:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F4.jpeg?alt=media&token=617805fc-6d70-4de6-88fe-cb395724472b',
  4:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F5.jpeg?alt=media&token=533b9a83-397f-44c6-b1c3-4b84397aa6fc',
  5:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F6.jpeg?alt=media&token=e49eaf82-1674-415e-9b8d-af2ff9575977',
  6:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F7.jpeg?alt=media&token=1c3e34e6-178e-4b23-b397-02147f6eb990',
  7:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F8.jpeg?alt=media&token=2e101de7-545a-4b2a-a205-9b4549f4b034',
  8:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F9.jpeg?alt=media&token=2ad5a778-ab6c-447d-9de9-64795e598680',
  9:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F10.jpeg?alt=media&token=b7fe1fa2-6e46-4e79-b5fe-1eef6cb790ff',
  10: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F11.jpeg?alt=media&token=2c306e8e-16fb-4179-8694-d7de27fe9fd8',
  11: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fyoga%2F12.jpeg?alt=media&token=5b845e8e-a6ea-4a24-ab28-b30b7f71418f',
};

Map<int, String> _pixel = {
  0: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fpixel%2F1.jpeg?alt=media&token=6c8233b5-549c-4287-b32b-ae96d455b779',
  1: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fpixel%2F2.jpeg?alt=media&token=20080d1e-f3d8-4fb7-a01a-e1bb8fcd1743',
  2: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fpixel%2F3.jpeg?alt=media&token=ebbcd3af-8d26-4764-9267-482d3e21b3dc',
  3: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fpixel%2F4.jpeg?alt=media&token=9c0ae7fa-aa43-4c96-8d8f-56689272fee9',
  4: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fpixel%2F5.jpeg?alt=media&token=6a69c77f-d2cd-4c2f-ad76-3b87d24918f5',
};

Map<int, String> _tiffan = {
  0:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F1.jpeg?alt=media&token=9ddda2b8-9093-4767-9f2d-bb7f5b0295e7',
  1:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F2.jpeg?alt=media&token=cb836660-5826-4bc0-b705-32d3a6bfe368',
  2:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F3.jpeg?alt=media&token=b4195ee2-c74f-4e61-a23f-7e1fb1316ab0',
  3:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F4.jpeg?alt=media&token=587e4580-16a4-4409-9fc2-42a0dea66951',
  4:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F5.jpeg?alt=media&token=255b7571-918f-4b46-af16-7e1ce409abbf',
  5:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F6.jpeg?alt=media&token=7eb7a250-1829-4705-aa43-f75ceec6fd01',
  6:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F7.jpeg?alt=media&token=1ae35473-6f3b-4a56-94d4-633b27e09006',
  7:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F8.jpeg?alt=media&token=1ad98993-2936-4e95-8a90-6403a6e77520',
  8:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F9.jpeg?alt=media&token=1c7eaf34-a0bd-41e1-aca8-c4c97cce0aac',
  9:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F10.jpeg?alt=media&token=db907c4d-5d23-42af-8388-e13a9fc7f9f4',
  10: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F11.jpeg?alt=media&token=67ff998a-93f8-4fcc-9eb3-cf1b0875be81',
  11: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Ftiffan%2F12.jpeg?alt=media&token=1eb4f396-00d3-45d3-a48f-ca197b70d3ba',
};

Map<int, String> _arts = {
  0:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F1.jpeg?alt=media&token=270572db-ebd6-40aa-9fbe-900b5fc36d2b',
  1:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F2.jpeg?alt=media&token=33d047ea-c18a-4c9c-95c8-bc44162df9b0',
  2:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F3.jpeg?alt=media&token=92bd55c1-e466-4bc9-a3ad-2c7bef5ea375',
  3:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F4.jpeg?alt=media&token=0fe5f1d9-af2b-41ef-afeb-cde144895271',
  4:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F5.jpeg?alt=media&token=5a5ec955-6734-44e5-aa1f-2ff734c42411',
  5:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F6.jpeg?alt=media&token=7f0ec0df-8bd7-4700-963b-bc50bdea326f',
  6:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F7.jpeg?alt=media&token=473330cf-17cb-4479-920a-b56d0051d5ab',
  7:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F8.jpeg?alt=media&token=fae07ef8-1e2f-4228-8454-00daaf2c9d57',
  8:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F9.jpeg?alt=media&token=edf119c5-5c65-4ea1-98a5-01fcde984488',
  9:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F10.jpeg?alt=media&token=3b3e29d7-a26a-43d0-8fb9-6996fbfd5707',
  10: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F11.jpeg?alt=media&token=6994d4d9-b816-412d-a2fa-34c2c41f2018',
  11: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F12.jpeg?alt=media&token=6d2d7b6a-3f9c-40e2-85aa-431eb30ba9d9',
  12: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F13.jpeg?alt=media&token=a7070575-63dc-43b8-a097-7c3fc8ba32e2',
  13: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F14.jpeg?alt=media&token=8ecc5df3-12e2-4e2e-9647-f325841d24db',
  14: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fhouse_of_arts%2F15.jpeg?alt=media&token=214e8516-bf51-4528-9a04-c372d0278d04',
};

Map<int, String> _baja = {
  0:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F1.jpeg?alt=media&token=ea0fc7bb-74aa-4085-bd65-6a0bc04f0970',
  1:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F2.jpeg?alt=media&token=faeede44-3a7a-47c5-8195-c366a41ae126',
  2:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F3.jpeg?alt=media&token=3ca76abf-a96b-4e9f-9418-9174281dcfc3',
  3:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F4.jpeg?alt=media&token=94732e14-87d8-4716-9fd5-2a2ae1294228',
  4:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F5.jpeg?alt=media&token=39a669d4-608f-413a-a2ec-018677c4812b',
  5:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F6.jpeg?alt=media&token=5dd98c29-929d-4dc8-9d3b-781e8518a12c',
  6:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F7.jpeg?alt=media&token=97a128ec-322d-4fde-a5f6-49b2284c9edb',
  7:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F8.jpeg?alt=media&token=540b0a01-65f3-48e0-95d7-9444531947ea',
  8:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F9.jpeg?alt=media&token=6209ae74-8aae-4505-ac0d-2a6c829d98f7',
  9:  'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F10.jpeg?alt=media&token=81ae92d3-251d-4504-82dc-dfaa556eec0c',
  10: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F11.jpeg?alt=media&token=a10a8142-8921-4b00-ac13-12fc60e36123',
  11: 'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/slider_folder%2Fbaja%2F12.jpeg?alt=media&token=b4d3dda3-5d0d-4647-9169-37b9a36c2885',
};