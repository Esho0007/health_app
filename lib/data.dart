import 'package:flutter/material.dart';

class AppointmentModel {
  final String title;
  final String icon;
  final Color color;

  AppointmentModel(
      {required this.title, required this.icon, required this.color});
}

List<AppointmentModel> doctorAppointment = [
  AppointmentModel(
    title: 'Diagnostic',
    icon: "assets/images/diag.png",
    color: const Color(0xFF433C37),
  ),
  AppointmentModel(
    title: 'Dental',
    icon: 'assets/images/dent.png',
    color: const Color(0xFFFE4500),
  ),
  AppointmentModel(
    title: 'Surgeon',
    icon: 'assets/images/surg.png',
    color: const Color(0xFF5B6BBF),
  ),
  AppointmentModel(
    title: 'Medicine',
    icon: 'assets/images/med.png',
    color: const Color(0xFFEB7B2F),
  ),
];

class TopDoctorModel {
  final String image;
  final String name;
  final String type;
  final String hospitalName;
  final int rating;

  TopDoctorModel(
      {required this.image,
      required this.name,
      required this.type,
      required this.hospitalName,
      required this.rating});
}

List<TopDoctorModel> topDoctorList = [
  TopDoctorModel(
      image: 'assets/images/doc.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc2.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc2.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc2.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
  TopDoctorModel(
      image: 'assets/images/doc.png',
      name: 'Dr. Aisha',
      type: 'Dental',
      hospitalName: 'OAU THC',
      rating: 2369),
];
