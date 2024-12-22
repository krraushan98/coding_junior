import 'package:coding_junior/component/app_drawer.dart';
import 'package:coding_junior/component/appbar.dart';
import 'package:flutter/material.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  double sliderValue = 53;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        drawer: const AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Continue Learning',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All >',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 59, 165, 173),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 110, 190, 180),
                                  ),
                                  //child: Image.asset('assets/image/html.png'),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'HTML',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 236, 236),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'popins',
                                  ),
                                ),
                                Text(
                                  'Ch-4.3.2 / 5.0 | 12 Pages',
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 239, 236, 236),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'popins',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Slider(
                                value: sliderValue, // Use the dynamic value
                                max:
                                    100, // Ensure this matches the percentage range
                                activeColor: Colors.white,
                                label: sliderValue.toStringAsFixed(0),
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue =
                                        newValue; // Update the sliderValue dynamically
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '${sliderValue.toStringAsFixed(0)}%',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily:
                                    'Poppins', // Ensure you use a valid font family
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 122, 187, 86),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(255, 175, 223, 183),
                                  ),
                                  //child: Image.asset('assets/image/html.png'),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Web Development',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 239, 236, 236),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'popins',
                                  ),
                                ),
                                Text(
                                  'Chapter-4.3.2 / 5.0 | 2:26 min ',
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 239, 236, 236),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'popins',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Slider(
                                value: sliderValue, // Use the dynamic value
                                max:
                                    100, // Ensure this matches the percentage range
                                activeColor: Colors.white,
                                label: sliderValue.toStringAsFixed(0),
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue =
                                        newValue; // Update the sliderValue dynamically
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '${sliderValue.toStringAsFixed(0)}%',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily:
                                    'Poppins', // Ensure you use a valid font family
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170 ,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 190, 131, 239),
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purple, Color.fromARGB(0, 221, 121, 225)],
                  ),
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text('It takes just two minutes to',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'popins',
                        ),
                      ),
                      const Text('Level up your skills!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'popins',
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Take Flash Quiz  ->',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'popins',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
