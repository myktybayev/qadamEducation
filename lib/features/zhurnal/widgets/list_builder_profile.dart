import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/profile_list.dart';

class ListBuilderProfile extends StatelessWidget {
  ListBuilderProfile({Key? key}) : super(key: key);
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
                itemCount: profileList.length,
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
                                profileList[index]['date'].toString(),
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 14,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                              ),
                              _textBuildCustom(index),
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
              profileList[index]['name'].toString(),
              maxLines: 1,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              profileList[index]['profile'].toString(),
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
