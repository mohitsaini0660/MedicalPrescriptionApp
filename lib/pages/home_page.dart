// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/utilities/category_cards.dart';
import 'package:medical_app/utilities/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app barr
            //name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Mohit Saini",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile picture
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 50,
                      )),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // animation + cute picture
                    Container(
                      height: 150,
                      width: 150,
                      child: Lottie.network(
                          'https://lottie.host/f9b19a62-3597-4241-b957-672801420956/KqvLiJTpQv.json'),
                    ),

                    const SizedBox(
                      width: 25,
                    ),
                    // how do you feel + get startedd button

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 18,
            ),

            // horizontal listview -> categories: dentist, surgeon etc...
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCards(
                    categoryName: 'Dentist',
                    icon: 'doctor/icons/tooth.png',
                  ),
                  CategoryCards(
                    categoryName: 'Surgeon',
                    icon: 'doctor/icons/surgeon.png',
                  ),
                  CategoryCards(
                    categoryName: 'Pharmacist',
                    icon: 'doctor/icons/drugs.png',
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 17,
            ),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 17,
            ),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'doctor/images/doctor2.jpg',
                  doctorName: 'Arlene McCoy',
                  rating: '4.9',
                  doctorProfession: 'Therapist',
                ),
                DoctorCard(
                  doctorImagePath: 'doctor/images/doctor3.jpg',
                  doctorName: 'Albert Flores',
                  rating: '4.6',
                  doctorProfession: 'Surgeon',
                ),
                DoctorCard(
                  doctorImagePath: 'doctor/images/doctor4.jpg',
                  doctorName: 'Ranjan Sharma',
                  rating: '4.7',
                  doctorProfession: 'Pharmacist',
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.grey[300],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              label: ''),
        ],
      ),
    );
  }
}
