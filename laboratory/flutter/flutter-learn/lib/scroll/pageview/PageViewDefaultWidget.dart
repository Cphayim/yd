import 'package:flutter/material.dart';

void main() => runApp(PageViewDefaultWidget());

class PageViewDefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: Scaffold(
          appBar: AppBar(title: new Text('Flutter 可滚动Widget -- PageView')),
          body: PageView(
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              print('current page $index ');
            },
            children: <Widget>[
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
              ListTile(title: Text('Title0')),
              ListTile(title: Text('Title1')),
              ListTile(title: Text('Title2')),
              ListTile(title: Text('Title3')),
              ListTile(title: Text('Title4')),
            ],
          )),
    );
  }
}
