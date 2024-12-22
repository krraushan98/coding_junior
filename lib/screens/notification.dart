import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.more_vert, color: Colors.black),
        //     onPressed: () {
        //       // Action for more options
        //     },
        //   ),
        // ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.pink,
          indicatorWeight: 3,
          tabs: const [
            Tab(text: "All"),
            Tab(text: "Important"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildNotificationList(context),
          _buildImportantNotificationList(context),
        ],
      ),
    );
  }

  Widget _buildNotificationList(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildNotificationCard(
          profileImage: "https://via.placeholder.com/40",
          title: "Neelu Verma has assigned a new assignment in Machine Learning",
          time: "Today at 10:49 AM",
          buttonText: "View Assignment",
        ),
        _buildNotificationCard(
          profileImage: "https://via.placeholder.com/40",
          title: "Continue a lesson to maintain your 36 days streak",
          time: "Today at 9:00 AM",
        ),
        _buildNotificationCard(
          profileImage: "https://via.placeholder.com/40",
          title:
              "New Challenge Alert! Solve the latest coding challenge and make it to the leaderboard!",
          time: "Wednesday at 10:49 AM",
          buttonText: "View Challenge",
        ),
        _buildNotificationCard(
          profileImage: "https://via.placeholder.com/40",
          title:
              "Congratulations Champion! You've made it to the leaderboard owing to your unmatched consistency.",
          time: "Aug 23 at 10:49 AM",
          buttonText: "View Leaderboard",
        ),
      ],
    );
  }

  Widget _buildImportantNotificationList(BuildContext context) {
    return Center(
      child: Text("No important notifications"),
    );
  }

  Widget _buildNotificationCard({
    required String profileImage,
    required String title,
    required String time,
    String? buttonText,
  }) {
    return Container(
      color: Colors.white,
      //margin: const EdgeInsets.only(bottom: 16),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(profileImage),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (buttonText != null)
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 40),
                  TextButton(
                    onPressed: () {
                      // Action for button click
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.pink[400],
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(buttonText),
                  ),
                ],
              ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 40),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}


