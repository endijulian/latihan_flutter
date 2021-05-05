import 'package:flutter/material.dart';
import 'package:dropdown_button/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // late Person selectedPerson;
  // late Person selectedPerson;
  late Person selectedPerson;
  List<Person> persons = [
    Person("Joni"),
    Person("Joko"),
  ];

  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Button"),
      ),
      body: Column(
        children: <Widget>[
          DropdownButton<dynamic>(
            value: selectedPerson,
            items: generateItems(persons),
            onChanged: (item) {
              setState(() {
                selectedPerson = item;
              });
            },
          ),
          // ignore: unnecessary_null_comparison
          Text((selectedPerson != null) ? selectedPerson.name : ""),
        ],
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
