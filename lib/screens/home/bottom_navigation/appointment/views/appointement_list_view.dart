import 'package:flutter/material.dart';
import 'package:user_app/models/AppointmentModel.dart';
import 'package:user_app/models/dummyList.dart';

class AppointmentListView extends StatelessWidget {
  // const AppointmentListView({super.key});

  DummyList dummyList = DummyList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: dummyList.appointList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildAppointmnetCard(context, index)),
    );
  }

  Widget buildAppointmnetCard(BuildContext context, int index) {
    final appointment = dummyList.appointList[index];
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 0.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    child: Image.network(appointment.drImage),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              appointment.date,
                              style: TextStyle(fontSize: 14),
                            ),
                            const Text("|"),
                            Text(appointment.time,
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                        Text(appointment.drName,
                            style: TextStyle(fontSize: 14)),
                        Row(
                          children: [
                            const Icon(
                              Icons.video_call,
                              size: 10.0,
                            ),
                            Text(appointment.videoCall,
                                style: TextStyle(fontSize: 14)),
                            const Text("|"),
                            const Icon(
                              Icons.access_time,
                              size: 10.0,
                            ),
                            Text(appointment.videoCallTime,
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(appointment.drFees, style: TextStyle(fontSize: 14)),
                      const Icon(
                        Icons.video_call,
                        color: Colors.green,
                        size: 30.0,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                indent: 30,
                endIndent: 30,
                thickness: 1.0,
                height: 5.0,
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
