import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shade4,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Popular Restaurents',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: shade3,
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(
            children: [
              
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _hotel('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Froyal.jpeg?alt=media&token=a639b461-40a7-4797-8641-0194397fb207', 
                      'Hotel Royal Park', 'Naral Bag, Banavdi Road, Karad', 'https://maps.app.goo.gl/qbNV3qiM6xAQbc949'),

                      const SizedBox(
                        height: 20,
                      ),

                      _hotel('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Flaxmi.jpeg?alt=media&token=c323e4db-3fe6-4d5c-9699-a615f502eecb',
                       'Hotel Laxmi Garden', 'Krishna Canol Chowk, Saidapur Road, Karad', 'https://maps.app.goo.gl/7Q7heZwn1fKFVFrZ9'),

                       const SizedBox(
                        height: 20,
                      ),

                      _hotel('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Fsahyadri.jpeg?alt=media&token=c5e08375-1987-439d-ab57-be3b7f14d34c', 
                      "Hotel Sayadri Garden", 'Oglaiwadi, Karad', 'https://maps.app.goo.gl/BfPnqMnxK1RG3SdH7'),

                      const SizedBox(
                        height: 20,
                      ),

                      _hotel('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Fred_chilly.jpeg?alt=media&token=f5c566eb-dee4-4a99-8383-f5fc8a19a1e7', 
                      'Hotel Red Chilly', 'Near Sterling Gym, Asthavinayak Colony, Vidyanagar, Karad', 'https://maps.app.goo.gl/9KVG9ga3RAafWEto8'),

                      const SizedBox(
                        height: 20,
                      ),

                      _hotel('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Fpalavi.jpeg?alt=media&token=987b147f-7f17-40ae-bf26-83ffb226e577', 
                      'Hotel Palavi', 'Opposite to Indian Oil, Oglewadi, Gajanan Housing Society, Karad', 'https://maps.app.goo.gl/HLgjVkf5A1gtZ8xS6'),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void openGoogleMaps(double latitude, double longitude) async {
  final url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



Material _hotel(
  String url,
  String title,
  String address,
  String map
){
  return Material(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)),
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: ListTile(
        tileColor:
            const Color.fromARGB(255, 251, 253, 254),
        onTap: () async{
          if(await canLaunch(map)){
            launch(map);
          }
          else {
            throw 'could not launch';
          }
          
        },
        leading: CircleAvatar(
          radius: 56,
          backgroundColor: Colors.red,
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(28), // Image radius
              child: Image.network(
                  url.toString(),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        title:  Text(
          title.toString(),
          style: const TextStyle(
              color: Color.fromARGB(255, 223, 91, 91),
              fontSize: 17),
        ),
        subtitle: Text(
          address.toString(),
          style: const TextStyle(
              color: Color.fromARGB(255, 76, 18, 153),
              fontSize: 10),
        ),
        
        
      ),
    ),
  );
}



// GestureDetector(
                      //   onTap: (){
                      //     //TODO: add location
                      //   },
                      //   child: Material(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20)),
                      //     elevation: 10,
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //           horizontal: 10, vertical: 5),
                      //       child: ListTile(
                      //         tileColor:
                      //             const Color.fromARGB(255, 251, 253, 254),
                      //         // onTap: () => Navigator.push(
                      //         //   context,
                      //         //   MaterialPageRoute(
                      //         //     builder: (context) => const food1(),
                      //         //   ),
                      //         // ),
                      //         leading: CircleAvatar(
                      //           radius: 56,
                      //           backgroundColor: Colors.red,
                      //           child: ClipOval(
                      //             child: SizedBox.fromSize(
                      //               size: const Size.fromRadius(28), // Image radius
                      //               child: Image.network(
                      //                   'https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/hotels%2Froyal_park.png?alt=media&token=d79eb6b3-84d9-4966-82fa-621875b43748',
                      //                   fit: BoxFit.cover),
                      //             ),
                      //           ),
                      //         ),
                      //         title: const Text(
                      //           'Red Chilli Hotel & Resto.',
                      //           style: TextStyle(
                      //               color: Color.fromARGB(255, 223, 91, 91),
                      //               fontSize: 17),
                      //         ),
                      //         subtitle: const Text(
                      //           'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                      //           style: TextStyle(
                      //               color: Color.fromARGB(255, 76, 18, 153),
                      //               fontSize: 10),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
