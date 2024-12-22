import 'package:coding_junior/screens/notification.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(440.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
    gradient: LinearGradient(
      colors: [const Color.fromARGB(255, 96, 96, 100).withOpacity(1), Colors.blue],
      begin: Alignment.bottomLeft,  // Start of the gradient
      end: Alignment.bottomRight, // End of the gradient
    ),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white38,size: 35,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.yellow,
                child: SizedBox(
    height: 30, // Adjust the image size within the circle
    width: 40,
    child: Image.asset(
      "assets/image/fire.png",
      fit: BoxFit.cover, // Ensures the image fits well inside
    ),
              ),
              ),
              const SizedBox(width: 10),
              const Text('08',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.yellow,size: 30,),
              const Expanded(child: Text('')
              ),
               Container(
                height: 38,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    TextButton(onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                      ),
                    child: const Text('statistic',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,size: 10,),
                  ],
                ),
              ),
              const SizedBox(width: 10),
               CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.notifications_none_rounded, color: Colors.black,size: 25,),
                  onPressed: () {
                    Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NotificationScreen()),
);
                  },
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              SizedBox(width:15),
              Text('Hi User, Welcome Back!',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'popins',
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Courses',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(153, 130, 120, 120),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'popins',
                ),
                prefixIcon: const Icon(Icons.search, color: Color.fromARGB(153, 130, 120, 120),size: 30,),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  //borderSide: BorderSide(color: Colors.white12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 22, 114, 189),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Text('Ready for a New Challenge?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'popins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Expanded(
                        child: Text('Participate in this hackthonto solve Amazon Warehouse Management',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'popins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 188, 43, 33),
                    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ), 
                  child:const Text('Learn More',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ), 
                  ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}