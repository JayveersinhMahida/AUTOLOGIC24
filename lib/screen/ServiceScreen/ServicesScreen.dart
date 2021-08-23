import 'package:autologic/constants/constants.dart';
import 'package:autologic/models/savedataModel.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  final SaveData data;
  const ServicesScreen({Key? key, required this.data}) : super(key: key);

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  IsMoving _isMoving = IsMoving.yes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Service Sheet",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Vehicle Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Brand- ",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.data.brand,
                            ),
                            Spacer(),
                            Text(
                              "Model- ",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.data.model,
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Date- ",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(widget.data.pickDate),
                            Spacer(),
                            Text(
                              "Time- ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(widget.data.pickTime),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "B11, PrayonaPark, sat ordi vistar,\nvaghasi fatak road, anand ",
                              style: TextStyle(
                                color: Colors.black,
                                // fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "General Service For ${widget.data.model}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                      width: 2.0,
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text("Replace Engine Oil"),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text("Inspect Brake System"),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text("Inspect Battery voltage"),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text("Inspect Fuel Line"),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text("Inspect Air Filter"),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Clutch Cables",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Lights & horn",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Clean Crank Case",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Spark Plug",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Throttle & choke",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Suspension",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Idle speed",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Valve Clearance",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.orange,
                                  ),
                                  const Text(
                                    "Inspect Wheels & Tyres",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Is Vehicle in Moving Condition ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: IsMoving.yes,
                        groupValue: _isMoving,
                        onChanged: (IsMoving? value) {
                          setState(() {
                            _isMoving = value!;
                          });
                        },
                      ),
                      Text("Yes"),
                      Radio(
                        value: IsMoving.no,
                        groupValue: _isMoving,
                        onChanged: (IsMoving? value) {
                          setState(() {
                            _isMoving = value!;
                          });
                        },
                      ),
                      Text("No"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white24,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Estimate Cost*:- ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              "699.0",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "CONFIRM BOOKING",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                              elevation: 5.0,
                              minimumSize: Size(500, 50)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
