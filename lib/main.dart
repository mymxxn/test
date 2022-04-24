import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: InstaFeed(),
    debugShowCheckedModeBanner: false,
  ));
}

class InstaFeed extends StatefulWidget {
  const InstaFeed({Key? key}) : super(key: key);

  @override
  State<InstaFeed> createState() => _InstaFeedState();
}

class _InstaFeedState extends State<InstaFeed> {

  @override
  Widget build(BuildContext context) {
    var devicesize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        elevation: 1.0,
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black87,
        ),
        title: SizedBox(
          height: 35,
          child: Image.asset("assets/logo.svg.png"),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/tele.png"))),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                  ),
                  Positioned(
                      right: 10,
                      child: Container(
                          height: 18,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red),
                          child: Center(
                            child: Text(
                              "10",
                              style: TextStyle(fontSize: 12),
                            ),
                          )))
                ],
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) => index == 0
                      ? SizedBox(
                          child: Container(
                            margin: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Stories",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.play_arrow),
                                        Text(
                                          "Watch All",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 2,
                                        itemBuilder: (context, index) => Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(
                                                              "assets/2.jpg"))),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 8),
                                                ),
                                                index == 0
                                                    ? Positioned(
                                                        right: 10,
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.blueAccent,
                                                          radius: 10,
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 14,
                                                            color: Colors.white,
                                                          ),
                                                        ))
                                                    : Container()
                                              ],
                                            )))
                              ],
                            ),
                          ),
                          height: devicesize.height * 0.20,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "assets/1.jpg"))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "varun.aditya",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ),
                            ),
                            Flexible(
                                fit: FlexFit.loose,
                                child: Image.asset(
                                  "assets/download.jpg",
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FaIcon(FontAwesomeIcons.heart),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      FaIcon(FontAwesomeIcons.comment),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Icon(Icons.send_outlined)
                                    ],
                                  ),
                                  Icon(Icons.bookmark_border_outlined)
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    height: 40.0,
                                    width: 45.0,
                                    // alignment: FractionalOffset.center,
                                    child: new Stack(
                                      //alignment:new Alignment(x, y)
                                      children: <Widget>[
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/1.jpg"))),
                                        ),
                                        new Positioned(
                                          left: 10.0,
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/2.jpg"))),
                                          ),
                                        ),
                                        new Positioned(
                                          left: 20.0,
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/3.jpg"))),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Liked by mymxxn, khaija and 528 others",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                        
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage("assets/3.jpg"),
                                            fit: BoxFit.fill)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Add a comment..."),
                                  ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "1 Day Ago",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
              IconButton(
                  onPressed: () {}, icon: FaIcon(FontAwesomeIcons.heart)),
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage("assets/3.jpg")),
                        shape: BoxShape.circle),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
