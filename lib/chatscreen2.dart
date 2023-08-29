import 'package:flutter/material.dart';
import 'package:figmadesigne/chatwidget.dart';

class Chatscreen2 extends StatelessWidget {
  const Chatscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          iconTheme: const IconThemeData(color: Colors.blue, size: 40),
          title: Center(
            child: Container(
              child: Image.asset(
                'img/Logo.png',
              ),
            ),
          ),
          actions: [
            Container(
              child: Image.asset("img/Btn.png"),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                accountName: const Text("kiya sharma"),
                accountEmail: const Text("kiyasharma3@gmail.com"),
                currentAccountPicture: Container(
                  child: Image.asset('img/Pict 2.png'),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.home,
                  size: 20,
                ),
                title: Text("home"),
              ),
              const ListTile(
                leading: Icon(Icons.inbox),
                title: Text("about"),
              ),
              const ListTile(
                leading: Icon(Icons.forward_to_inbox_sharp),
                title: Text("inbox"),
              ),
              const ListTile(
                leading: Icon(Icons.unarchive),
                title: Text("unread"),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Image.asset(
              "img/add.png",
              width: 40,
            ),
          ),
        ),
        body: const Chatwidget());
  }
}
