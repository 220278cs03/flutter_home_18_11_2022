import 'package:flutter/material.dart';

import 'page_2.dart';

class One extends StatelessWidget {
  const One({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: const Color(0xff131418),
            title: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Qidirish",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    const Text(
                      "Kategoriya",
                      style: TextStyle(
                          color: Color(0xff222222),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Two()));
                      },
                      child: Text("Barchasi",
                          style: TextStyle(
                              color: const Color(0xff222222).withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Two()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xff222222).withOpacity(0.5),
                          size: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 75,
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF7F7F7),
                                    shape: BoxShape.circle),
                                margin: const EdgeInsets.only(bottom: 8),
                                padding: const EdgeInsets.all(20),
                                child: const Icon(Icons.home),
                              ),
                              const Text(
                                "Ko'chmas mulk",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: const Color(0xffF5F5F5),
                  child: Column(
                    children: [
                      const Text(
                        "Siz uchun maxsus",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Expanded(
                        child: GridView.builder(
                            itemCount: 10,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, mainAxisExtent: 250),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(8),
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 112,
                                      child: Image(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/home-improvement/wp-content/uploads/2022/07/download-23.jpg")),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Tovar nomi maksimum ikki qator bo’ladi...",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                      EdgeInsets.only(left: 8.0, bottom: 8),
                                      child: Text(
                                        "23 000 UYE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xffEA3838)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Tashkent",
                                        style: TextStyle(
                                            color: Color(0xff888888),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Padding(
                                            padding:
                                            EdgeInsets.only(left: 8, top: 8),
                                            child: Text(
                                              "Bugun 12:27",
                                              style: TextStyle(
                                                  color: Color(0xff888888)),
                                            )),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(right: 18, top: 8),
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Color(0xff888888),
                                              size: 18,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.black), label: "Uy"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.messenger_outline, color: Colors.black),
                  label: "Xabarlar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box, color: Color(0xffEA3838)),
                  label: "E'lon berish"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border, color: Colors.black),
                  label: "Yoqtirgan"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, color: Colors.black),
                  label: "Akkaunt"),
            ],
          ),
        ));
  }
}