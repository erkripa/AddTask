import 'package:addtask/services/notification_services.dart';
import 'package:addtask/services/theme_service.dart';
import 'package:addtask/widgets/bigtext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NotifyHelper notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          BigText(
            'asdfs',
            color: Colors.red,
          ),
          //
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
      leading: InkWell(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
            title: "Theme Changed",
            body: context.isDarkMode
                ? "Activated Light Theme"
                : "Activated Dark Theme",
          );
          // dark theme comes from local so that its reverse
          notifyHelper.scheduledNotification();
        },
        child: Icon(
          context.isDarkMode ? Icons.wb_sunny_rounded : Icons.nightlight_round,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/flutter_logo.png'),
          ),
        ),
      ],
    );
  }
}
