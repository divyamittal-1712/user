import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../models/dummyList.dart';

class ConsultantList extends StatelessWidget {
  // const ConsultantList({super.key});
  DummyList dummyList = DummyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: dummyList.appointList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildConsultantCard(context, index)),
    );
  }

  Widget buildConsultantCard(BuildContext context, int index) {
    final consultant = dummyList.appointList[index];
    return Padding(
      padding: const EdgeInsets.only(left: 12.0,top: 8.0,right: 12.0),
      child: Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 50,
                  child: Image.network(consultant.drImage),
                ),
                Column(
                  children: [
                    Text(consultant.drName),
                    Text(consultant.drName),
                    Text(consultant.drName),
                    Row(
                      children: [
                        Text(consultant.drFees),
                        Text(consultant.date),
                        Text(consultant.time),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
