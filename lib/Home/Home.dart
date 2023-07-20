import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff50647D,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/search.png',
                    color: const Color(0xffE0E5EB),
                  ),
                ),
                Image.asset(
                  'images/Nike.png',
                ),
                Image.asset(
                  'images/notificaion.png',
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 60.h,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return const Items();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 330.w,
              height: 240.h,
              decoration: BoxDecoration(
                color: const Color(0xff3A4757),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 60,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'DON’T TRY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(
                          'JUST DO IT.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 105.w,
                          height: 40.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: const Color(0xffFC783F),
                              shadowColor: const Color(0xffFC783F),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Order Now',
                              style: TextStyle(
                                color: Color(0xff3A4757),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //const SizedBox(),
                          Positioned(
                            left: 120,
                            bottom: 20,
                            //right: 0,
                            child: Image.asset(
                              'images/shoesss.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 50,
                  ),
                  child: Text(
                    'Top Sneakers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const product(),
                          transition: Transition.circularReveal,
                        );
                      },
                      child: Container(
                        width: 210.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffE0E5EB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '\$ 130',
                                    style: TextStyle(
                                      color: const Color(0xff475F7D),
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'images/like.png',
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'images/cipo.png',
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Nike Air Max Plus',
                                style: TextStyle(
                                  color: const Color(0xff475F7D),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
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

class Items extends StatefulWidget {
  const Items({
    super.key,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(
            0xffE0E5EB,
          ),
          shadowColor: const Color(
            0xffE0E5EB,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Boots',
          style: TextStyle(
            color: Color(0xff3B4C61),
          ),
        ),
      ),
    );
  }
}
