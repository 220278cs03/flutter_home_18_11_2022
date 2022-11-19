import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 118,
              backgroundColor: const Color(0xffF5F5F5),
              centerTitle: true,
              title: const Text(
                "Kategoriyalar",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
              leading: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios,
                    color: Colors.black, size: 19),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 19.0, right: 19),
              child: Container(
                color: const Color(0xffF5F5F5),
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 20,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 19,
                        mainAxisSpacing: 19),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              margin:
                              const EdgeInsets.only(top: 20, bottom: 16),
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.cabin_rounded,
                                color: Colors.white,
                                size: 34,
                              ),
                            ),
                            const Text(
                              "Ko'chmas mulk",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )));
  }
}