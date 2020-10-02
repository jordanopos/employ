import 'package:emploi/models/job.dart';
import 'package:emploi/pages/details.dart';
import 'package:flutter/material.dart';

class BigModel extends StatelessWidget {
  final Job job;

  BigModel(this.job);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen(job)));
          },
          child: Container(
            height: 200,
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 60,
                            width: 70,
                            child: Image(
                              height: 60,
                              image: AssetImage(job.companyUrl),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${job.jobName},',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text('${job.companyName},',
                                style: TextStyle(
                                    fontSize: 19, color: Colors.grey[800])),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 30, right: 20),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 60,
                            width: 170,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: Center(
                              child: Text(
                                '${job.hoursWorked}',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '${job.paymentRange}',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
