import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/device_screen_width.dart';
import 'package:flutter_projects/view/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: size.width <= kIpad ? MyDrawer() : null,
        appBar: AppBar(
          title: const Text('Go Fast'),
          actions: [
            InkWell(
              child: Row(
                children: const [
                  Center(child: Text('More')),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white38,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.transparent,
                    focusColor: Colors.white,
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Console',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            PopupMenuButton(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Profile"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Settings"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("LogOut"),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 140,
                      ),
                      const Text(
                        "Make your app the most\nfastest and powerful",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Go Fast is a Database as a service platform that acts as a server for your App. It is maintained by Go Fast Company and trusted by millions of users around the world.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Get Started'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Try demo',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Read Documentation',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 500,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3,
                        child: Container(
                          width: size.width * 0.8,
                          height: size.height * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text('container'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
