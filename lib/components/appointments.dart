import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/data.dart';

class Appointment extends StatelessWidget {
  final AppointmentModel appointment;

  const Appointment({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          color: appointment.color,
           borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -7,
              top: -7,
              child: Container(
                height: 57,
                width: 57,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(blurRadius: 20, color: Colors.white),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset(appointment.icon),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    appointment.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
