import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/data.dart';

class TopDoctor extends StatelessWidget {
  final TopDoctorModel topDoctors;

  const TopDoctor({Key? key, required this.topDoctors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade800,
                    offset: const Offset(0, 96),
                    blurRadius: 20,
                    spreadRadius: 0)
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 54,
                      width: 64,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          image: DecorationImage(
                            image: AssetImage(topDoctors.image),
                          ),
                          borderRadius: BorderRadius.circular(12),),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          topDoctors.name,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.grey.shade500),
                            children: <TextSpan>[
                              TextSpan(text: topDoctors.type),
                              const TextSpan(text: ' * '),
                              TextSpan(text: topDoctors.hospitalName),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  index < 4
                                      ? Icons.star
                                      : Icons.star_border_outlined,
                                  color:
                                      index < 4 ? Colors.orange : Colors.grey,
                                  size: 23,
                                ),
                              ),
                            ),
                            Text(
                              '\$${topDoctors.rating}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          onPressed: () {}),
    );
  }
}
