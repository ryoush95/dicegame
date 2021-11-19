import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dice.dart';

void main() {
  runApp(getxapp());
}

class getxapp extends StatelessWidget {
  const getxapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'getxapp',
      home: getmain(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => getmain()),
        GetPage(name: '/dice', page: () => Dice())
      ],
    );
  }
}

class getmain extends StatelessWidget {
  const getmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 0, top: 0, bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(Dice());
                },
                child: Text('get.to'),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/dice');
                  Get.offAll('/');
                  print('move');
                },
                child: Text('toName'),
              ),
              TextButton(
                onPressed: () {
                  Get.snackbar('title', 'message',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 4));
                },
                child: Text('getsnackbar'),
              ),
              TextButton(
                onPressed: () {
                  Get.showSnackbar(
                    GetBar(
                      title: 'snackbar',
                      message: 'snackbar',
                      duration: Duration(seconds: 2),
                      snackPosition: SnackPosition.TOP,
                    ),
                  );
                },
                child: Text('getsnackbar'),
              ),
              TextButton(
                child: Text('dialog'),
                onPressed: () {
                  Get.defaultDialog(title: 'Dialog', middleText: 'Dialog');
                },
              ),
              TextButton(
                child: Text('dialog'),
                onPressed: () {
                  Get.dialog(
                    Dialog(
                      child: Container(
                        height: 100,
                        child: Center(
                          child: Text('Dialog'),
                        ),
                      ),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: () {
                                  print('111');
                                },
                                child: Text('111')),
                            TextButton(
                                onPressed: () {
                                  print('222');
                                },
                                child: Text('222'))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text('bottomSheet'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
