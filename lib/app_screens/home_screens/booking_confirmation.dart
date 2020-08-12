import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/utils/size_config.dart';
import 'package:flutter_covid/constants/const.dart';
import 'package:flutter_covid/model/lab_model.dart';
import 'package:flutter_covid/reusable_widget/reusable_material_button.dart';

class BookingConfirmation extends StatelessWidget {
  final LabModel model;

  BookingConfirmation({this.model});

  @override
  Widget build(BuildContext context) {
    print(model.testType);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Confirmation",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Test Appointment Booking Summary",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ReusableRow(
                    model: model,
                    title: "Test Type: ",
                    desc: "${model.testType}",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableRow(
                    model: model,
                    title: "Patient Name: ",
                    desc: "Google",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableRow(
                    model: model,
                    title: "Emirates ID Number: ",
                    desc: "123-4567-789543-9",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableRow(
                    model: model,
                    title: "Test Date: ",
                    desc: "12/08/2020",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableRow(
                    model: model,
                    title: "Preferable Test Time: ",
                    desc: "Morning(8:00 AM - 12:00 PM)",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ReusableRow(
                    model: model,
                    title: "Laboratory: ",
                    desc: "${model.labName}",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Test Price",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Table(
                  columnWidths: {2: FractionColumnWidth(.2)},
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          child: Text(
                            "Service",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(""),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                        color: color,
                      ),
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Text(
                            "Swap Test",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(""),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "AED 370",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[300]),
                          )),
                    ),
                    TableRow(
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10),
                          child: Text(
                            "Sub Total",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "AED 370",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[300]),
                          )),
                    ),
                    TableRow(
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10),
                          child: Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "AED 370",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[300]),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ReusableMaterialButton(
              title: "Pay Now ( AED 370 )",
              pressMe: () {},
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final LabModel model;
  final String title;
  final String desc;
  ReusableRow({this.model, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(
          child: FittedBox(
            child: Text(
              desc,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
