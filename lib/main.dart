import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: NavigationDrower(),
    );
  }
}

class NavigationDrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Image And Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: ExactAssetImage(
                        "assets/images/GTicon.jfif"),
                  ),
                  accountName: Text("Ajay Waghmode"),
                  accountEmail: Text("ajay.waghmode@greentiger.in")
              ),
              const ListTile(
                leading: Icon(Icons.accessible),
                title: Text("Name"),
                subtitle: Text("Ajay Waghode"),
                trailing: Icon(Icons.send_and_archive),
              ),
              const ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Item 2"),
                subtitle: Text("Item 3 value"),
                trailing: Icon(Icons.add_box_outlined),
              ),
              const ListTile(
                leading: Icon(Icons.add_business),
                title: Text("Item 3"),
                subtitle: Text("Item 3 value"),
                trailing: Icon(Icons.add_chart_rounded),
              ),
              const ListTile(
                leading: Icon(Icons.ac_unit_sharp),
                title: Text("Item 4"),
                subtitle: Text("Item 4 value"),
                trailing: Icon(Icons.account_balance),
              ),
              const ListTile(
                leading: Icon(Icons.accessibility),
                title: Text("Item 5"),
                subtitle: Text("Item 5 value"),
                trailing: Icon(Icons.access_alarms_outlined),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                  child: ListTile(
                    leading: Icon(Icons.lock),
                    title: Text("Logout"),
                    subtitle: Text("Logout here"),
                    trailing: Icon(Icons.logout),
                  onTap: (){
                      Navigator.pop(context);
                  },
                  ),
              ),


            ],
          ),
        ),
        body: Image.asset('assets/images/logo.png', width: 300,),
        backgroundColor: Colors.greenAccent,

      ),
    );
  }

}
