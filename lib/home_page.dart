import 'package:flutter/material.dart';
import 'package:flutter_notification/notification_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationController notificationController =
        Get.put(NotificationController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Notification",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton.icon(
                onPressed: () {
                  notificationController.showNotification();
                },
                icon: const Icon(Icons.notifications),
                label: const Text("Show notification")),
          )
        ],
      ),
    );
  }
}
