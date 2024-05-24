import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetScreen extends StatelessWidget {
  const InternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(
            Icons.refresh,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.add,
            size: 25,
          )
        ],
      ),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile) ||
              snapshot.data!.contains(ConnectivityResult.wifi)) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student1',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student2',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student3',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student4',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student5',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student6',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student7',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,),
                        child: Center(
                            child: Text(
                              'Student8',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            )),
                      )
                    ],
                  )
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 60),
                  child: Container(
                      height: 300,
                      width: 300,
                      child: Image.asset(
                        'asset/img/1.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Whoops',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    '    Slow or no internet connection.\nPlease check your internet settings.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 30),
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                          'Pull down to Refresh',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                )
              ],
            );
          };
        }, ),
    );
  }
}
