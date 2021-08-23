import 'package:autologic/models/savedataModel.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  final SaveData data;
  const ServicesScreen({Key? key, required this.data}) : super(key: key);

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
                      Text(
                        "B11, PrayonaPark, sat ordi vistar, vaghasi fatak road, anand ",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Inspect Brack"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Inspect Brack"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text("Inspect Fuel"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
