import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gymapp/utils/constants.dart';
import 'package:gymapp/utils/exercises_list.dart';

import '../widgets/exercise_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
    Size _size = MediaQuery.of(context).size;
    double _statusBarHeight = MediaQuery.of(context).viewPadding.top;
    DateTime _today = DateTime.now();
    // print(_today.toLocal());

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: _statusBarHeight),
                padding: const EdgeInsets.all(20),
                height: _size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: kSecondaryColor, shape: BoxShape.circle),
                            child: Image.asset('assets/images/man.png')),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hello Smith!",
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              "Wednesday, 12 Jan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: kBorderColor),
                          shape: BoxShape.circle),
                      child: const Icon(CupertinoIcons.calendar,
                          color: Color(0xFF4ea7ac)),
                    )
                  ],
                )),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: _size.height / 6,
              decoration: const BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    // height: _size.height / 7,
                    width: _size.width / 2,
                    // color: Colors.red,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Refresh your body",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          const Text(
                            "Ready to start exercise",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.play_circle),
                              SizedBox(width: 5),
                              Text("30 Mins")
                            ],
                          )
                        ]),
                  ),
                  Image.asset(
                    'assets/images/yoga.png',
                    width: 100,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // height: _size.height / 10,
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Trending exercises",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemCount: exercices.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return exercices[index];
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
