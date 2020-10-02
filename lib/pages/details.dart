import 'package:emploi/models/job.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatelessWidget {
  final Job job;

  DetailsScreen(this.job);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${job.companyName}',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 21),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: Image(
                    image: AssetImage('${job.companyUrl}'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '${job.jobName}',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  '${job.location}',
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 40),
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
                                  fontSize: 22,
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
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15),
                  child: Row(
                    children: [
                      Text('Requirements',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: RequireMentsModel(job.requirements),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RequireMentsModel extends StatelessWidget {
  final List reqs;

  RequireMentsModel(this.reqs);
  @override
  Widget build(BuildContext context) {
    TextStyle reqStyle = TextStyle(
      color: Colors.grey,
      fontSize: 19,
    );
    return Column(
      children: [
        Row(
          children: [
            Icon(
              FontAwesomeIcons.solidCircle,
              size: 10,
            ),
            Text(
              reqs[0],
              style: reqStyle,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.solidCircle,
              size: 10,
            ),
            Text(
              reqs[1],
              style: reqStyle,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.solidCircle,
              size: 10,
            ),
            Text(reqs[2], style: reqStyle),
          ],
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.solidCircle,
              size: 10,
            ),
            Text(reqs[3], style: reqStyle),
          ],
        ),
      ],
    );
  }
}
