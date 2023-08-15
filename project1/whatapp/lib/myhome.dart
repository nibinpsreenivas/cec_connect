import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/page.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Myhome> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Color.fromARGB(255, 37, 211, 102),
            elevation: 0.7,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: "CHATS"),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
            actions: <Widget>[
              Icon(Icons.search),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        body: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text('chat $index'),
                subtitle: Text('message $index'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return page(name: 'chat $index');
                  }));
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/96453329?v=4'),
                ),
                trailing: Text('$index 0:00 pm'),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 30));
  }
}
