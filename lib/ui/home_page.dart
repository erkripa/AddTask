import 'package:addtask/services/notification_services.dart';
import 'package:addtask/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotifyHelper? notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper?.initializeNotification();
    notifyHelper?.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ThemeService());

    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Text("data"),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'dssdzfxgfdsa',
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  appBar() {
    return AppBar(
      leadingWidth: 100,
      leading: InkWell(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper?.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Activated Dark Theme"
                  : "Activated Light Theme");
        },
        child: Icon(
          Icons.light_mode_rounded,
        ),
      ),
    );
  }
}
