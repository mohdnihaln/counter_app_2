import 'package:flutter/material.dart';
import 'package:flutter_application_2/Counter/counter.dart';
import 'package:flutter_application_2/Counter/Home/home.dart';

import 'package:get/get.dart';


class Login extends StatelessWidget {
  Login({super.key});

  logincontroller c = Get.put(logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 16, 56),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            "COUNTER APP",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        leading: const Icon(Icons.arrow_back, size: 17),
        actions: const [
          Icon(Icons.qr_code, size: 17),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.question_mark_outlined, size: 17),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(

        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
           children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue ),
                onPressed: ()=> Get.to(const Home()),

                child: const Text(
                  "Go to Counter",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
                ),
              ),
              Obx(
                () => Switch(
                  value: c.isOn.value,
                  onChanged: (v) => c.switcher(isOnVal: v),
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
