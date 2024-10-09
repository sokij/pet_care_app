import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:pet_care_app/page/search_page.dart';
import 'package:pet_care_app/pet_profile_screen.dart';
import 'package:pet_care_app/profile_screen.dart';

import 'model/pet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Box<Pet> pets;

  @override
  void initState() {
    super.initState();
    pets = Hive.box<Pet>('petBox');
    pets.add(Pet(
      name: 'bull Dog',
      age: 1,
      colour: 'white ',
      size: '300',
      breed: '',
      picture: 'assets/bull_dog.jpg',
      price: '\$ 323',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20).h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    30.r,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                trailing: ClipOval(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfileScreen();
                          },
                        ),
                      );
                    },
                    child: Image(
                      width: 50.w,
                      fit: BoxFit.cover,
                      height: 50.h,
                      image: AssetImage(
                        'assets/two.jpg',
                      ),
                    ),
                  ),
                ),
                leading: Icon(CupertinoIcons.line_horizontal_3_decrease),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F9F8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30.0).h,
                          child: Text(
                            'Search for a pet',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 30),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SearchPage();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: ListTile(
                                leading: Icon(CupertinoIcons.search),
                                title: Text(
                                  'search.....',
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 220,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 45.h),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Card(
                                        color: Color(0xffFFFFFF),
                                        child: Image(
                                          image: AssetImage('assets/cat.png'),
                                        ),
                                      ),
                                      Text('Cats')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Card(
                                        color: Color(0xffFFFFFF),
                                        child: Image(
                                          image: AssetImage('assets/dog.png'),
                                        ),
                                      ),
                                      Text('Dogs')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Card(
                                        color: Color(0xffFFFFFF),
                                        child: Image(
                                          image:
                                              AssetImage('assets/rabbit.png'),
                                        ),
                                      ),
                                      Text('Bunnies')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Card(
                                        color: Color(0xffFFFFFF),
                                        child: Image(
                                          image:
                                              AssetImage('assets/parrot_2.png'),
                                        ),
                                      ),
                                      Text('Parrots')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Card(
                                        color: Color(0xffFFFFFF),
                                        child: Image(
                                          image: AssetImage('assets/fish.png'),
                                        ),
                                      ),
                                      Text('aquatics')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4.h,
              child: ListView.builder(
                itemCount: pets.length,
                itemBuilder: (BuildContext context, int index) {
                  final pet = pets.getAt(index);
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PetProfileScreen(pet: pet);
                          },
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xffFFFFFF),
                      child: Row(
                        children: [
                          Container(
                            height: 150.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18.r)),
                                image: DecorationImage(
                                  image: AssetImage(pet!.picture),
                                )),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pet!.name,
                                style: TextStyle(
                                    fontSize: 27.h,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'lorem ipsum is simply dummy',
                                    style: TextStyle(color: Colors.black26),
                                  ),
                                  Icon(Icons.delete)
                                ],
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 25.h,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  size: 5,
                                  color: Colors.redAccent,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Column(
                                children: [
                                  Text(
                                    pet!.price,
                                    style: TextStyle(fontSize: 35.h),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
