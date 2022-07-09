import 'package:addtask/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      leading: InkWell(
        onTap: () => ThemeService().switchTheme(),
        child: Icon(Icons.light_mode_rounded),
      ),
    );
  }
}
