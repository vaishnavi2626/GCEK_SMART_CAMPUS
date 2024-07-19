import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class hospital2 extends StatefulWidget {
  // @override
  static const id = "doctor_desc";

  const hospital2({super.key});

  @override
  _DoctorDescState createState() => _DoctorDescState();
}

class _DoctorDescState extends State<hospital2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 236, 248),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Ayurveda Hospital Mumbai',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.blue[300],
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/Doctor.jpg'),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 200, bottom: 100),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _textTitle('About Doctor', const Color(0xFF08134D),
                              15, FontWeight.w700),
                        ),
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
                        margin: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _descText(
                              ' Dr Amit Goel has a decade of experience in the field of medicine with '
                              'an experience as an Endocrinologist for over 4 years. Dr Amit’s published '
                              'articles are one of the best in the world for research on prevention and early '
                              'detection of diabetic neuropathy.',
                              const Color(0xFF8F8F8F)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _textTitle('About Hospital Fascilities',
                              const Color(0xFF08134D), 15, FontWeight.w700),
                        ),
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
                        margin: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _descText(
                              'Dr Amit Goel has a decade of experience in the field of medicine with '
                              'an experience as an Endocrinologist for over 4 years. Dr Amit’s published '
                              'articles are one of the best in the world for research on prevention and early '
                              'detection of diabetic neuropathy.',
                              const Color(0xFF8F8F8F)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _doctorCard(),
          ],
        ),
      ),
    );
  }

  Widget _doctorCard() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textTitle('Dr. Amit Goel', const Color(0xFF08134D), 29,
                          FontWeight.w700),
                      _coloredBox(const Color(0xFFCBFCDD), const Color(0xFF30AB6A),
                          'Available : Mon - Sat'),
                      _coloredBox(const Color(0xFFE0E4F7), const Color(0xFF2748F7),
                          'Endocrinologist'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 10),
                    child: Image(
                      image: AssetImage('images/Doctor.jpg'),
                      width: 90,
                      height: 90,
                    ),
                  )
                ],
              ),
              _textTitle('DM – Endocrinology, MD – General Medicine',
                  const Color(0xFF08134D), 14, FontWeight.w600),
              Row(
                children: [
                  _textTitle('4.3', const Color(0xFF08134D), 14, FontWeight.w600),
                  // RatingBar(
                  //   itemPadding: EdgeInsets.only(left: 3, right: 10),
                  //   itemSize: 20,
                  //   initialRating: 1,
                  //   direction: Axis.horizontal,
                  //   itemCount: 1,
                  //   itemBuilder: (context, _) => Icon(
                  //     Icons.star,
                  //     color: Color(0xFFE87713),
                  //   ),
                  // ),
                  _descText('(12 reviews)', const Color(0xFF8F8F8F)),
                ],
              ),
              _descText(
                  'Speaks Telugu | Hindi | English | Kannada | Bengali | Marathi.',
                  const Color(0xFF8F8F8F)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Color(0xFF408AEB),
                    size: 20,
                  ),
                  Flexible(
                    child: _descText(
                        'Plot no. 9B, Vikrampuri Colony, '
                        'Secunderabad, Telangana',
                        const Color(0xFF8F8F8F)),
                  ),
                ],
              ),
              const Divider(color: Color(0xFF8F8F8F)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: _textTitle('Charge        Rs 400', const Color(0xFF08134D), 18,
                    FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _coloredBox(Color backgColor, Color fontColor, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: backgColor),
        child: Text(text,
            style: TextStyle(
                color: fontColor, fontSize: 12, fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget _descText(String text, Color color) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: color,
        ),
      ),
    );
  }

  Widget _textTitle(
      String title, Color color, double fontSize, FontWeight fontWeight) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style:
            TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      flexibleSpace: const Image(
        image: AssetImage('assets/images/docdet.png'),
        fit: BoxFit.fill,
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
