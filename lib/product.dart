import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E5EB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset(
                      'images/Vector.png',
                    ),
                  ),
                  Image.asset(
                    'images/Nike.png',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/shoppingbag.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Air Max Plus',
                style: TextStyle(
                  color: const Color(
                    0xff475F7D,
                  ),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                itemSize: 20,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                onRatingUpdate: (double value) {},
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Color(
                    0xff475F7D,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50.0),
                width: 308.w,
                height: 120.h,
                child: PageView.builder(
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage(
                            'images/cipo.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Incounter(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ),
                    topRight: Radius.circular(
                      30,
                    ),
                  ),
                  color: Color(0xff3A4757),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        bottom: 0,
                        top: 10,
                      ),
                      child: Text(
                        'Select Color',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(12),
                        itemBuilder: (BuildContext context, index) {
                          return SizedBox(
                            width: 100.w,
                            height: 70.h,
                            child: Image.asset(
                              'images/cipo.png',
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Text(
                        'Select Size',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(12),
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                        Text(
                          'Delivery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '''
                      When performance is what you’re looking for, look no further than the all-new Nike Air Max Plus... More
                      ''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffE0E5EB),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 160.w,
                              height: 60.h,
                              decoration: const BoxDecoration(
                                color: Color(0xffE0E5EB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '\$ 130',
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                    color: const Color(0xff475F7D),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 160.w,
                              height: 60.h,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                ),
                                color: Color(0xffFC783F),
                              ),
                              child: Image.asset(
                                'images/addtocart.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Incounter extends StatelessWidget {
  //final bool isActive;
  const Incounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: const Color(0xff475F7D),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
