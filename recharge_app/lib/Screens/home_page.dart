import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recharge_app/Widgets/appbar.dart';
import 'package:recharge_app/Widgets/my_account.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 250, 241),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 53, 145, 94),
        elevation: 0.0,
        toolbarHeight: 40,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 152, 201, 174),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Top Recharge Telecom",
          style: GoogleFonts.dmSans(
              fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {},
                        icon: Center(
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 18,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image(
                        image: AssetImage(
                          "images/logo.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            MyAccount(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
