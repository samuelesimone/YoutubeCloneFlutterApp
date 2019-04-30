import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class BottomModel {
  bool isSwitched = true;
  bool _switchValue = false;

  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return BottomSheetSwitch(
              switchValue: _switchValue,
              valueChanged: (value) {
                _switchValue = value;
                if (_switchValue) {
                  print("bho");
                  Toast.show("Night mode", context);
                }
              });
        });
  }

  Column _createTile(
      BuildContext context, String name, IconData icon, Function action,
      {Switch switching}) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(icon),
          title: Text(name),
          onTap: () {
            Navigator.pop(context);
            action();
          },
        ),
      ],
    );
  }

  _action1() {
    print('action 1');
  }

  _action2() {
    print('action 2');
  }

  _action3() {
    print('action 3');
  }
}

class BottomSheetSwitch extends StatefulWidget {
  BottomSheetSwitch({@required this.switchValue, @required this.valueChanged});

  final bool switchValue;
  final ValueChanged valueChanged;

  @override
  _BottomSheetSwitch createState() => _BottomSheetSwitch();
}

class _BottomSheetSwitch extends State<BottomSheetSwitch> {
  bool _switchValue;

  @override
  void initState() {
    _switchValue = widget.switchValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Switch(
              activeColor: Colors.red,
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                  widget.valueChanged(value);
                });
              }),
        ],
      ),
    );
  }
}
