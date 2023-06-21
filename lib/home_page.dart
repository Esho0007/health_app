import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/components/appointments.dart';
import 'package:health_app/components/search.dart';
import 'package:health_app/components/size_config.dart';
import 'package:health_app/components/top_doctor.dart';
import 'package:health_app/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: CupertinoButton(
          onPressed: () {},
          child: Image.asset('assets/images/menu1.png'),
        ),
        actions: [
          CupertinoButton(
              child: CircleAvatar(
                child: Image.asset('assets/images/person2.png'),
              ),
              onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Find\t',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text('your doctor',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Search()
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(28),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: doctorAppointment.length,
                (context, index) {
                  AppointmentModel appointment = doctorAppointment[index];
                  return   Appointment(
                    appointment: appointment,
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.2,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: topDoctorList.length,
              (context, index) {
                TopDoctorModel topDoctor = topDoctorList[index];
                return TopDoctor(topDoctors: topDoctor);
              },
            ),
          ),
        ],
      ),
    );
  }
}
