import 'package:emploi/models/job.dart';
import 'package:emploi/pages/details.dart';
import 'package:flutter/material.dart';

class SmallModel extends StatelessWidget {
  final Job job;

  SmallModel(this.job);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen(job)));
          },
          child: Container(
            height: 200,
            width: 230,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 14),
                      child: Row(
                        children: [
                          Image(
                            height: 65,
                            image: AssetImage('${job.companyUrl}'),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 40,
                              width: 110,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: Center(
                                child: Text(
                                  '${job.hoursWorked}',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${job.jobName}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$${job.paymentRange}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
