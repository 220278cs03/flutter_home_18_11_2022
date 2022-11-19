import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: const Text(
                "Complete your Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white),
              ),
              leading: const Icon(Icons.arrow_back_ios,
                  color: Colors.white, size: 24),
            ),
            body: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(color: Color(0xff2E2E2E)),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 8),
                      child: Text(
                        "Tags",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "Choose up to 3 tags that describe you the best ",
                        style: TextStyle(
                            color: Color(0xff4C4B4F),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 20,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 9,
                              mainAxisSpacing: 9,
                              mainAxisExtent: 106),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                      fit: BoxFit.cover)),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 82, left: 16),
                                child: Text(
                                  "Photography",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top:78, bottom: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Didn't find your tag?", style: TextStyle(color:Color(0xff4C4B4F), fontWeight: FontWeight.w400, fontSize: 14),),
                            Text(" Add your own", style: TextStyle(color:Colors.purpleAccent, fontWeight: FontWeight.w400, fontSize: 14),)
                          ],
                        )
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF87AA3),
                            borderRadius: BorderRadius.all(Radius.circular(21))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 18, left: 23, right: 23),
                          child: Text("Save and continue", style: TextStyle(color:Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
