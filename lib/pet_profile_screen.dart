import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care_app/main.dart';

class PetProfileScreen extends StatefulWidget {
  const PetProfileScreen({super.key});

  @override
  State<PetProfileScreen> createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(
                    'assets/bull_dog.jpg',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            //top: 200,
            bottom: 0,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 580.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30.r,
                      ),
                      topRight: Radius.circular(
                        30.r,
                      ),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 130.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30).w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'Age',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Card(
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30).r)),
                                    child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: Center(
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            color: Color(0xffE46764),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'sex',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Card(
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30).r)),
                                    child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: Center(
                                        child: Text(
                                          'Male',
                                          style: TextStyle(
                                            color: Color(0xffE46764),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'colour',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Card(
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(
                                      30.r,
                                    ))),
                                    child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: const Center(
                                        child: Text(
                                          'White',
                                          style: TextStyle(
                                            color: Color(0xffE46764),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Length',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Card(
                                    shadowColor: Colors.white,
                                    color: Colors.white,
                                    elevation: 3,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: const Center(
                                        child: Text(
                                          '7.6',
                                          style: TextStyle(
                                            color: Color(0xffE46764),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 25.h),
                          child: Divider(
                            height: 2,
                            color: Color(0xffE46764),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ).w,
                          child: Row(
                            children: [
                              ClipOval(
                                child: Image(
                                  height: 100.h,
                                  width: 100.w,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/one.jpg',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20).w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'owner',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black38),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30).w,
                          child: Text(
                            'Dog breeds defined to any standard only came into being with the rise of kennel clubs and breed registries. This happened in the United States in 1884.[3] Before this, no records were kept and instead of breeds, there were informal landrace strains that initially depended on where a dog',
                          ),
                        ),

                       GestureDetector(
                         child: Container(
                           height: 100.h,
                           width: 300.w,
                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
                         ),
                       )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 350.h,
            left: 30.w,
            right: 30.w,
            child: Card(
              elevation: 10,
              shadowColor: Colors.white,
              color: Colors.white,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50).r)),
              child: Container(
                padding: EdgeInsets.only(left: 40.w, right: 20.w),
                height: 170.h,
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bull Dog',
                          style: TextStyle(
                              fontSize: 35.h, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Color(0xffE46764),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'lorem ipsum is simply dummy',
                          style: TextStyle(color: Colors.black38),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '\$75',
                              style: TextStyle(fontSize: 35),
                            ),
                            SizedBox(
                              width: 10.w,
                            )
                          ],
                        ),
                      ],
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 23,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 5.0).w,
                      itemBuilder: (context, _) {
                        return Icon(
                          Icons.star,
                          size: 5.h,
                          color: Color(0xffE46764),
                        );
                      },
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
