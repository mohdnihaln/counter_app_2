import 'package:flutter/material.dart';
import 'package:flutter_application_2/Counter/counter.dart';
import 'package:flutter_application_2/Counter/Home/homepage.dart';


import 'package:get/get.dart';

logincontroller c = Get.put(logincontroller());

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(


 body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => GestureDetector(
                  onLongPress: () => c.count.value = 0,
                  child: Text(
                    '${c.count.value}',
                    style: TextStyle(
                      fontSize: 48.0 + (c.count.value * 2),
                      color: Colors.black,
                    ),
                  ),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => Get.to(Login()),
              child: const Text(
                "Back",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
                  onPressed: ()
                  => c.increment(),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.add),
                ),
                         
             Padding(
               padding: const EdgeInsets.only(right: 15.0),
               child: FloatingActionButton(
                    onPressed: ()
                    => c.decrement(),
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.minimize),
                  ),
             ),
        ]
  )
    );
}
}