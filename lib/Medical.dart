import 'package:flutter/material.dart';
import 'colors.dart';
import 'doctor_details_data.dart';
import 'hospital.dart';

class Medical extends StatelessWidget {
  const Medical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shade4,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Medical',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: shade3,
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network('https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/Doctor.jpg?alt=media&token=5c4e2fb4-fb12-4bce-80ce-4140d14e3425')),
            ),
            const Text(
              'Hospitals List',
              style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 13), fontSize: 27),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: DoctorDetailsData.map((element) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return hospital(
                            title: element.title,
                            shortdesc: element.shortdesc,
                            hospitalName: element.hospitalName,
                            speciality: element.speciality,
                            rating: element.rating,
                            review: element.review,
                            languages: element.languages,
                            address: element.address,
                            charge: element.charge,
                            about: element.about,
                            facilities: element.facilities,
                            imageUrl: element.imageUrl,
                          );
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 155, 84), padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 130, 217, 255),
                            width: 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              element.imageUrl,
                              height: 100,
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text(
                                  element.hospitalName,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 223, 91, 91),
                                      fontSize: 17),
                                      textAlign: TextAlign.left,
                                ),
                                Text(
                                  element.shortdesc,
                                  //softWrap: false,
                                  maxLines: 1,
                                  //overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 76, 18, 153),
                                      fontSize: 10),
                                      textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
