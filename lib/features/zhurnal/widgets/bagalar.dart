import 'package:flutter/material.dart';

class Bagalar extends StatefulWidget {
  const Bagalar({Key? key}) : super(key: key);

  @override
  State<Bagalar> createState() => _HomePageState();
}

class _HomePageState extends State<Bagalar> {
  final List<Map<String, dynamic>> allUsers = [
    {
      "date": "11.12",
      "name": "Математика",
      "workname": "үй тапсырмасы",
      "number": "5",
    },
    {
      "date": "15.12",
      "name": "Физика",
      "workname": "жұптық жұмыс",
      "number": "4",
    },
    {
      "date": "13.12",
      "name": "Химия",
      "workname": "зертханалық жұмыс",
      "number": "5",
    },
    {
      "date": "18.12",
      "name": "Математика",
      "workname": "home work",
      "number": "5",
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          side: BorderSide(width: 1, color: Colors.deepPurple),
                        ),
                        child: ListTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _foundUsers[index]['date'].toString(),
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 14,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                              _textBuildCustom(index),
                              Text(
                                _foundUsers[index]['number'].toString(),
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 35,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textBuildCustom(index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _foundUsers[index]['name'].toString(),
              maxLines: 1,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _foundUsers[index]['workname'].toString(),
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
