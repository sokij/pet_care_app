import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_care_app/home_screen.dart';

class ProfileScreenDark extends StatefulWidget {
  const ProfileScreenDark({super.key});

  @override
  State<ProfileScreenDark> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreenDark> {
  late List<(IconData, String)> list;

  @override
  void initState() {
    super.initState();
    list = [
      (Icons.security, "privacy"),
      (Icons.history, "purchase history"),
      (Icons.help_outline, "help and support"),
      (Icons.settings, "setting"),
      (Icons.person_add, "invite a friend"),
      (Icons.logout_outlined, "logout")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212122),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return ProfileScreenDark();
                              },
                            ));
                          },
                          child: const Icon(
                            Icons.light_mode_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 150.h,
                      width: 150.w,
                      child: const ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/soki.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(),
                    Positioned(
                      top: 97.h,
                      left: 120.w,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffE46764),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              17,
                            ),
                          ),
                        ),
                        child: const Icon(Icons.edit_outlined),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Text(
                  'soki jack',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text(
                  'sokijack@gmail.com',
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 55.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                    color: Color(0xffE46764),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'upgrade to pro',
                      style: TextStyle(fontSize: 22, color: Colors.black54),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  // height: 400,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final l = list[index];
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: Card(
                              color: Color(0xff373737),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30,
                                  ),
                                ),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  l.$1,
                                  color: Colors.white70,
                                ),
                                title: Text(
                                  l.$2,
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ),
                                trailing: Icon(
                                  Icons.chevron_right,
                                  size: 30,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
