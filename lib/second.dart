import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: postpage(),
    );
  }
}

Color kPurple = Color(0xFF3C6FE2);

class postpage extends StatelessWidget {
  const postpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: mainColumn(),
    );
  }

  Column mainColumn() {
    return Column(
      children: [
        searchbox(),
        Container(
          margin: EdgeInsets.only(left: 26),
          child: Row(
            children: [
              Text(
                'The Latest',
                style: GoogleFonts.poppins(color: kPurple),
              ),
              Expanded(
                child: Divider(
                  height: 55,
                  thickness: 2,
                  indent: 12,
                  endIndent: 20,
                  color: kPurple,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [post(), post()],
          ),
        ),
      ],
    );
  }

  Container searchbox() {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 35, 25, 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kPurple,
          width: 2,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: kPurple,
            size: 25,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 25,
            minWidth: 40,
          ),
          hintText: 'Search',
          hintStyle: GoogleFonts.poppins(color: kPurple),
        ),
      ),
    );
  }
}

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 40),
      child: Container(
        height: 390,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: kPurple,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            account(),
            Container(
              margin: EdgeInsets.fromLTRB(16, 5, 16, 16),
              child: Text(
                '🎓 Exciting news! I\'m now a student at Flutter Training, learning more about mobile development with Flutter. Can\'t wait to gain new skills and become a skilled Flutter developer!',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 1,
            ),
            Container(
              color: Colors.deepPurple[100],
              height: 180,
              width: double.infinity,
              child: Image.asset('assets/image 1.png'),
            ),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 1,
            ),
            interactivity(),
          ],
        ),
      ),
    );
  }

  Expanded interactivity() {
    return Expanded(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                flex: 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/Frame 4.png'),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset('assets/Frame 5.png'),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset('assets/Frame 6.png'),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    SizedBox(
                      width: 75,
                    ),
                    Image.asset('assets/BookmarkSimple.png'),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Container account() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(24, 25, 0, 255),
          child: Image.asset(
            'assets/780e0e64d323aad2cdd5 2.png',
          ),
        ),
        title: Text(
          'Dash',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '@dash.dash',
          style: GoogleFonts.poppins(fontSize: 11),
        ),
        minTileHeight: 60,
      ),
    );
  }
}
