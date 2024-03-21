import 'package:aakoo_app/views/dashboard/dashboard.page.dart';
import 'package:aakoo_app/views/login/login.page.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class UsersPage extends StatelessWidget {
  final List<Map<String, dynamic>> fakeData = [
    {'id': 1, 'name': 'John Doe', 'age': 25, 'gender': 'Male'},
    {'id': 2, 'name': 'Jane Smith', 'age': 30, 'gender': 'Female'},
    {'id': 3, 'name': 'James Johnson', 'age': 28, 'gender': 'Male'},
    {'id': 4, 'name': 'Emily Brown', 'age': 35, 'gender': 'Female'},
  ];

  List<charts.Series<dynamic, String>> _generateChartData() {
    Map<String, int> counts = {};
    fakeData.forEach(
        (data) => counts[data['gender']] = (counts[data['gender']] ?? 0) + 1);
    return [
      charts.Series(
        id: 'Gender',
        data: counts.entries
            .map((entry) => {'gender': entry.key, 'count': entry.value})
            .toList(),
        domainFn: (dynamic data, _) => data['gender'],
        measureFn: (dynamic data, _) => data['count'],
        labelAccessorFn: (dynamic data, _) => '${data['count']}',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF302C44),
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Users')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              DataTable(
                columns: [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                  DataColumn(label: Text('Gender'))
                ],
                rows: fakeData
                    .map((data) => DataRow(cells: [
                          DataCell(Text(data['id'].toString())),
                          DataCell(Text(data['name'])),
                          DataCell(Text(data['age'].toString())),
                          DataCell(Text(data['gender']))
                        ]))
                    .toList(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('Aakoo',
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                    SizedBox(height: 10),
                    Text('John Doe',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
              ListTile(
                title: Text('Dashboard'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Users'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UsersPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Log out'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<charts.Series<dynamic, num>> _generateLineChartData() {
    return [
      charts.Series(
          id: 'Age',
          data: fakeData.map((data) => {'age': data['age']}).toList(),
          domainFn: (dynamic data, _) => fakeData.indexOf(data),
          measureFn: (dynamic data, _) => data['age'])
    ];
  }
}

void main() {
  runApp(UsersPage());
}
