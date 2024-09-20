import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300.h,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.dark_mode_outlined),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 110,
                left: 165,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: SizedBox(
                            height: 127,
                            width: 127,
                            child: ClipOval(
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/two.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 100,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Color(0xffE46764),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Stack(children: [
                              Icon(
                                Icons.edit_outlined,
                                size: 19,
                              ),
                              Positioned(right: 200,
                                child: Text('data',style: TextStyle(),),
                              )
                            ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
