import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  List<Map<String, dynamic>> gridTask = [
    {
      "name": "Find friends",
      "icon": Icon(Icons.person_search_outlined, size: 30, color: Colors.blue),
    },
    {
      "name": "Memories",
      "icon": Icon(Icons.history_outlined, size: 30, color: Colors.blue),
    },
    {
      "name": "Saved",
      "icon": Icon(Icons.bookmark, size: 30, color: Color(0xffB432D1)),
    },
    {
      "name": "Reels",
      "icon": Icon(
        Icons.ondemand_video_outlined,
        size: 30,
        color: Color(0xff3F9964),
      ),
    },
    {
      "name": "Marketplace",
      "icon": Icon(Icons.store, size: 30, color: Color(0xff1DA5DB)),
    },
    {
      "name": "Feeds",
      "icon": Icon(Icons.feed_sharp, size: 30, color: Colors.blue),
    },
    {
      "name": "Events",
      "icon": Icon(
        Icons.calendar_today_outlined,
        size: 30,
        color: Color(0xffE01010),
      ),
    },
    {
      "name": "Groups",
      "icon": Icon(Icons.groups, size: 30, color: Colors.blue),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "Menu",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.black, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      height: 143,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                foregroundImage: AssetImage(
                                  "assests/images/Thanigaivelan S Photo.jpeg",
                                ),
                              ),
                              title: Text(
                                "Thanigaivelan S",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              trailing: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.expand_more_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          Divider(height: 1, color: Colors.grey, thickness: 1),
                          Container(
                            height: 75,
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: ListTile(
                              leading: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.black54,
                                  size: 40,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              title: Text(
                                "Create new profile or Page",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Text(
                                "Switch between profiles with one login.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 5 / 2.5,
                  ),
                  itemCount: gridTask.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return gridContainer(
                      name: gridTask[index]["name"],
                      icon: gridTask[index]["icon"],
                    );
                  },
                ),
                Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 10, thickness: 1, color: Colors.grey),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child: Icon(Icons.question_mark_rounded, color: Colors.black),
              ),
              title: Text(
                "Help & support",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more_outlined,color: Colors.black54,)),
            ),
            Divider(height: 10, thickness: 1, color: Colors.grey),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey,size: 30,),
              title: Text(
                "Settings & privacy",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more_outlined,color: Colors.black54,)),
            ),
            Divider(height: 10, thickness: 1, color: Colors.grey),
            ListTile(
              leading: Icon(Icons.grid_view_rounded, color: Colors.grey,size: 30,),
              title: Text(
                "Also from Meta",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more_outlined,color: Colors.black54,)),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Log out",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gridContainer({required String name, required Icon icon}) {
    return Row(
      children: [
        SizedBox(width: 10),
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                icon,
                Text(name, style: TextStyle(color: Colors.black, fontSize: 15)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
