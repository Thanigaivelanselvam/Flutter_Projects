import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  StorePage({super.key});

  List<Map<String, dynamic>> gridTask = [
    {"name": "Rs.35,000.Iphone 16", "image": "assests/images/iphone.png"},
    {"name": "Rs.2,000,00.R15S", "image": "assests/images/RACINGBLUE.png"},
    {"name": "Rs.2,000.Men's", "image": "assests/images/dress.png"},
    {"name": "Rs.700.Kid's suits", "image": "assests/images/dress1.png"},
    {"name": "Rs.2,000,00.R15S", "image": "assests/images/RACINGBLUE.png"},
    {"name": "Rs.2,000.Men's", "image": "assests/images/dress.png"},
    {"name": "Rs.700.Kid's suits", "image": "assests/images/dress1.png"},
    {"name": "Rs.35,000.Iphone 16", "image": "assests/images/iphone.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Marketplace",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, size: 30, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, size: 30, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 45),
                      Icon(Icons.edit_note_outlined, color: Colors.black),
                      SizedBox(width: 5,),
                      Text(
                        "Sell",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 30),
                      Icon(Icons.list, color: Colors.black),
                      SizedBox(width: 5,),
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 2, thickness: 1, color: Colors.grey.shade200),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Today's picks",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 150),
                Icon(Icons.location_on_rounded, color: Color(0xff0866ff)),
                Text("Chennai", style: TextStyle(color: Color(0xff0866ff))),
              ],
            ),
                SizedBox(height: 10,),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 7 / 9,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: gridTask.length,
                  itemBuilder: (context, index) {
                    return gridContainer(data: gridTask[index]);
                  },
                ),
       ], ),
      ),
    );
  }
  Widget gridContainer({required data}) {
    return Row(
      children: [
        SizedBox(width: 5,),
        Column(
          children: [
            Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                image: DecorationImage(image: AssetImage(data["image"]),fit: BoxFit.cover),
              ),
            ),
            Text(data["name"], style: TextStyle(color: Colors.black)),
          ],
        ),
      ],
    );
  }
}
