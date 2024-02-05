import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  String _selectedOption = '';
  String _link = '';
  String _imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 340),
              child: Text(
                'сақтау',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xFF711F8F),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 16),
              child: Text(
                'Кімге арналады',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Color(0xFF610683),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _showOptionsDialog(context);
              },
              child: Container(
                width: 380,
                height: 47,
                margin: EdgeInsets.only(top: 20, left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFF711F8F),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6.75, 1.5, 6.75, 1.5),
                      child: Icon(
                        Icons.filter_list_outlined,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      _selectedOption.isNotEmpty ? _selectedOption : ' ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 16),
              child: Text(
                'Түсіндірме',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Color(0xFF610683),
                ),
              ),
            ),
            Container(
              width: 380,
              height: 47,
              margin: EdgeInsets.only(top: 20, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF711F8F),
                  width: 1,
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                ),
                textAlignVertical: TextAlignVertical.center,
                maxLines: 4,
              ),
            ),
            GestureDetector(
              onTap: () {
                _showImageInputDialog(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 16),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.link,
                        size: 24,
                        color: Color(0xFF610683),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Файл жүктеу',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF610683),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_imageUrl.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                width: 360,
                height: 277,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    _imageUrl,
                    width: 360,
                    height: 277,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildOption(context, 'мұғалімдер'),
              _buildOption(context, 'оқушылар'),
              _buildOption(context, 'ата-аналар'),
            ],
          ),
        );
      },
    ).then((value) {
      setState(() {
        _selectedOption = value ?? '';
      });
    });
  }

  void _showImageInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: TextFormField(
            decoration: InputDecoration(
              hintText: 'Фотоның ссылкасы',
            ),
            onChanged: (value) {
              setState(() {
                _imageUrl = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('келесі'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildOption(BuildContext context, String optionText) {
    return InkWell(
      onTap: () {
        Navigator.pop(context, optionText);
      },
      child: ListTile(
        title: Text(optionText),
      ),
    );
  }
}