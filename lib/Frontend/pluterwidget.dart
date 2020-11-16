import 'package:flutter/material.dart';

class ExpandableTextField extends StatefulWidget {
  final double height;
  final double maxHeight;
  final double dividerHeight;
  final double dividerSpace;
  final Widget child;

  const ExpandableTextField({
    Key key,
    @required this.child,
    this.height = 44,
    this.maxHeight = 300,
    this.dividerHeight = 40,
    this.dividerSpace = 2,
  }) : super(key: key);

  @override
  _ExpandableTextFieldState createState() => _ExpandableTextFieldState();
}

class _ExpandableTextFieldState extends State<ExpandableTextField> {
  double _height, _maxHeight, _dividerHeight, _dividerSpace;

  @override
  void initState() {
    super.initState();
    _height = widget.height;
    _maxHeight = widget.maxHeight;
    _dividerHeight = widget.dividerHeight;
    _dividerSpace = widget.dividerSpace;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _maxHeight,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: _height,
            child: widget.child,
          ),
          SizedBox(height: _dividerSpace),
          Container(
            height: _dividerHeight,
            width: 60,
            child: GestureDetector(
              child: FittedBox(child: Text("----")),
              onPanUpdate: (details) {
                setState(() {
                  _height += details.delta.dy;

                  // prevent overflow if height is more/less than available space
                  var maxLimit = _maxHeight - _dividerHeight - _dividerSpace;
                  var minLimit = 44.0;

                  if (_height > maxLimit)
                    _height = maxLimit;
                  else if (_height < minLimit) 
                    _height = minLimit;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}