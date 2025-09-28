import 'package:flutter/material.dart';
import 'package:my_facebook/menu_page.dart';
import 'package:my_facebook/pages/connection_page.dart';
import 'package:my_facebook/pages/notification_page.dart';
import 'package:my_facebook/pages/store_page.dart';
import 'package:my_facebook/pages/videos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTouch = true;
  bool isTouch1 = true;

  List<Map<String, dynamic>> listTask = [
    {"name": "Siva frnd", "image": "assests/images/dark-2590141_1280.png"},
    {"name": "Thiru", "image": "assests/images/man.png"},
    {"name": "Vimal", "image": "assests/images/young-handsome-man.png"},
    {"name": "Santhosh P", "image": "assests/images/man.png"},
    {"name": "Santhosh V", "image": "assests/images/young-handsome-man.png"},
    {"name": "Sakthi frnd", "image": "assests/images/man.png"},
    {"name": "Sakthivel frnd", "image": "assests/images/dark-2590141_1280.png"},
    {"name": "Suganya", "image": "assests/images/man.png"},
    {"name": "Sanjai", "image": "assests/images/young-handsome-man.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Color(0xff0866ff),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(Icons.add, color: Colors.white),
            ),
            SizedBox(width: 15),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.search, color: Colors.black),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.message, color: Colors.black),
            ),
          ],
          actionsPadding: EdgeInsets.all(10),
          bottom: TabBar(
            dividerColor: Colors.grey,
            dividerHeight: 1,
            indicatorColor: Color(0xff0866ff),
            indicatorWeight: 3,
            labelColor: Color(0xff0866ff),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Icon(Icons.home_filled, size: 30),
              Icon(Icons.ondemand_video_rounded, size: 30),
              Icon(Icons.supervisor_account_outlined, size: 30),
              Icon(Icons.storefront_outlined, size: 30),
              Icon(Icons.notifications_none_outlined, size: 30),
              Icon(Icons.menu, size: 30),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      foregroundImage: AssetImage(
                        "assests/images/Thanigaivelan S Photo.jpeg",
                      ),
                    ),
                    title: Container(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.image, color: Colors.green),
                  ),
                  Divider(height: 10, thickness: 5, color: Colors.grey),
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Stack(
                            children: [
                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade100,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assests/images/environment-earth-day-hands-tree.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 35,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff0866ff),
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 5,
                                child: Text("Create Story"),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: listTask.length,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 10);
                              },
                              itemBuilder: (context, index) {
                                return listContainer(
                                  data: listTask[index],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 5, height: 5, color: Colors.grey),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      foregroundImage: AssetImage(
                        "assests/images/the-painter-hands.png",
                      ),
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: "Hetal's Art",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "     Follow",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text("Jun 15", style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.public_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz_outlined, color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text("The Most picture can be drawn by us."),
                    ],
                  ),
                  InkWell(
                    onDoubleTap: () {
                      setState(() {
                        isTouch1 = !isTouch1;
                      });
                    },
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assests/images/images1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isTouch1 = !isTouch1;
                          });
                        },
                        icon: Icon(
                          isTouch1
                              ? Icons.thumb_up_alt_outlined
                              : Icons.thumb_up,
                          color: isTouch1 ? Colors.black : Colors.blue,
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.share),
                      SizedBox(width: 30),
                      Icon(Icons.comment_outlined),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 5, height: 5, color: Colors.grey),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      foregroundImage: AssetImage("assests/images/polimer.png"),
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: "Polimer news",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "    Follow",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text("Jun 30", style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 10),
                        Icon(
                          Icons.public_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz_outlined, color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      RichText(
                        text: TextSpan(
                          text: "We see the news in app",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "    \n #flashnews   #polimernews\n   #playstore",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onDoubleTap: () {
                      setState(() {
                        isTouch = !isTouch;
                      });
                    },
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assests/images/news.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isTouch = !isTouch;
                          });
                        },
                        icon: Icon(
                          isTouch
                              ? Icons.thumb_up_alt_outlined
                              : Icons.thumb_up,
                          color: isTouch ? Colors.black : Colors.blue,
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.share),
                      SizedBox(width: 30),
                      Icon(Icons.comment_outlined),
                    ],
                  ),
                ],
              ),
            ),
            VideosPage(),
            ConnectionPage(),
            StorePage(),
            NotificationPage(),
            MenuPage(),
          ],
        ),
      ),
    );
  }

  Widget listContainer({required data}) {
    return Container(
      height: 140,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 70),
              Icon(Icons.cancel, color: Colors.black, size: 20),
            ],
          ),
          CircleAvatar(radius: 30, foregroundImage: AssetImage(data["image"])),
          SizedBox(height: 10),
          Text(data["name"]),
          SizedBox(height: 10),
          Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.lightBlue.shade50,
            ),
            child: Row(
              children: [
                Icon(Icons.person_add_alt_rounded, color: Colors.lightBlue),
                Text("Add", style: TextStyle(color: Colors.lightBlue)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
