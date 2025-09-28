import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Video",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "For you",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(width: 10),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Explore",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 400,),
            Row(
              children: [
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 20,
                  foregroundImage: AssetImage("assests/images/vijay.png"),
                ),
                SizedBox(width: 10,),
                Text("vijaytvk.official",
                  style: TextStyle(color: Colors.white),),
                SizedBox(width: 7,),
                Icon(Icons.public_outlined,color: Colors.white,),
                SizedBox(width: 7,),
                OutlinedButton(onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 5,),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.grey))),
                    child: Text(
                      "Follow", style: TextStyle(fontSize: 15),))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 50,
            right: 0,
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Icon(Icons.message, color: Colors.white),
                  Text("Send", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 110,
            right: 0,
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Icon(Icons.send_outlined, color: Colors.white),
                  Text("250", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 160,
            right: 0,
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Icon(Icons.comment_outlined, color: Colors.white),
                  Text("150", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 210,
            right: 0,
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                  Text("49K", style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
