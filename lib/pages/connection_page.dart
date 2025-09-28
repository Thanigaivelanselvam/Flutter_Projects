import 'package:flutter/material.dart';

class ConnectionPage extends StatelessWidget {
   ConnectionPage({super.key});

   List<Map<String,dynamic>> listTask=[
     {
       "name":"Thiru",
       "image":"assests/images/photo.png",
     },
     {
       "name":"Siva",
       "image":"assests/images/man.png",
     },
     {
       "name":"Vimal",
       "image":"assests/images/photo.png",
     },
     {
       "name":"Saritha",
       "image":"assests/images/man.png",
     },
     {
       "name":"Santhosh V",
       "image":"assests/images/young-handsome-man.png",
     },
     {
       "name":"Santhosh P",
       "image":"assests/images/photo.png",
     },
     {
       "name":"Sakthi",
       "image":"assests/images/man.png",
     },
     {
       "name":"Sakthivel",
       "image":"assests/images/young-handsome-man.png",
     },
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Friends",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, size: 35, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Suggestions"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Your friends"),
                  ),
                ],
              ),
            ),
            Divider(height: 10, thickness: 1, color: Colors.grey.shade200),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Friend requests",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "17",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 85),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Color(0xff0866ff), fontSize: 20),
                  ),
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listTask.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10,);
              },
              itemBuilder: (context, index) {
                return listContainer(
                    name: listTask[index]["name"],
                    image:listTask[index]["image"]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget listContainer({required String name,required String image}) {
    return Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(radius: 45,foregroundImage: AssetImage(image),),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey.shade100,
                  child: Icon(Icons.supervisor_account_outlined,color: Colors.black,size: 10,),
                ),
                SizedBox(width: 5,),
                Text("1 mutual friend. 4y"),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff0866ff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text("Confirm"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text("Delete"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
