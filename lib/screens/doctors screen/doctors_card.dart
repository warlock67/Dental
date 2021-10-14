import 'package:beginner/screens/Success%20Screen/success.dart';
import 'package:beginner/screens/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsCard extends StatelessWidget {
  final title;
  String doctorname;
  DoctorsCard({required this.title, required this.doctorname});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.15,
                  width: size.width * 0.27,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: size.height * 0.18,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doctorname,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]),
            height: size.height * 0.24,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.43,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Patients",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "500+",
                        style: TextStyle(
                            color: kOrangeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.43,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Experience",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "10yrs+",
                        style: TextStyle(
                            color: kYellowColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 33),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100]),
            height: size.height * 0.25,
            width: size.width * 0.93,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "About Doctor",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr.gayathri is a General Dentist and Periodontist with 28 years of service behind the smiles of his patients.dummy rock papper siccor martin soceror ",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.07,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {
            print("booked");
          },
          child: Text("Book Appointment"),
        ),
      ),
    );
  }
}
              
          
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {},
                  //       child: Text("9.00AM"),
                  //     ),
                  //     ElevatedButton(
                  //       onPressed: () {},
                  //       child: Text("9.00AM"),
                  //     ),
                  //     ElevatedButton(
                  //       onPressed: () {},
                  //       child: Text("9.00AM"),
                  //     ),
                  //   ],
                  // )
              