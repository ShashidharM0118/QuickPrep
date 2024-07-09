import 'package:flutter/material.dart';
import 'faq.dart';

class MIItem extends StatefulWidget {
  final FAQ faq;

  MIItem({required this.faq});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<MIItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          widget.faq.question,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
        ),
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.faq.answer),
          ),
        ],
      ),
    );
  }
}
