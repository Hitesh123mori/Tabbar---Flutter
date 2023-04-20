import 'package:flutter/material.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
         length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("Tabbar-Whatsup"),
            bottom: TabBar(
              indicatorWeight: 3, indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right:70.0),
                  child: Tab(
                    icon: Icon(Icons.chat),
                    text: "Chat",
                  ),
                ),
                Tab(

                    icon: Icon(Icons.chat_bubble),
                    text: "Status",
                  ),

                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Tab(
                    icon: Icon(Icons.call),
                    text: "Calls",
                  ),
                )
              ],
            ),
          ),
             body: TabBarView(
               children: [
                 Container(child: Center(child: Text("No Chats",style: TextStyle(color: Colors.grey),)),) ,
                 Container(child: Center(child: Text("No Status",style: TextStyle(color: Colors.grey),)),) ,
                 Container(child: Center(child: Text("No Calls",style: TextStyle(color: Colors.grey),)),) ,
               ],
             ),
        ),
    );
  }
}
