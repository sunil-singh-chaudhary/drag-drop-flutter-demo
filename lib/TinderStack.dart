import 'package:flutter/material.dart';

class TinderStack extends StatefulWidget {
  @override
  _TinderStackState createState() => _TinderStackState();
}

class _TinderStackState extends State<TinderStack> {
  final List<Color> _color = [
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red
  ];
  int? _currentIndex;

  @override
  void initState() {
    _currentIndex = _color.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drag demo')),
      body: Stack(
        children: _buildCards(),
      ),
    );
  }

  List<Widget> _buildCards() {
    List<Widget> cards = [];
    // print('currentindex-->$_currentIndex');
    if (_currentIndex! <= -1) {
      _currentIndex = 3;
    }
    for (int i = _currentIndex!; i >= 0; i--) {
      cards.add(
        Stack(
          children: [
            Draggable(
              feedback: SizedBox(
                //when we start drag then this will show in window we are dragging (Feedback)
                height: 150,
                width: 150,
                child: Center(
                  child: Container(
                    color: _color[_currentIndex!],
                  ),
                ),
              ),
              onDragEnd: (drag) {
                if (drag.offset.direction > 0) {
                  print('like drag');
                  _like();
                } else if (drag.offset.direction < 0) {
                  print('dislike drag');
                  _dislike();
                }
              },
              child: SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  color: _color[_currentIndex!],
                  child: Center(
                      child: Text(
                    _currentIndex.toString(),
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return cards;
  }

  void _like() {
    setState(() {
      _currentIndex = _currentIndex! - 1;
      print(_currentIndex);
    });
  }

  void _dislike() {
    setState(() {
      _currentIndex = _currentIndex! - 1;
    });
  }
}
