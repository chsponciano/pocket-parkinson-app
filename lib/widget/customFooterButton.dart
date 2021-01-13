import 'package:flutter/material.dart';
import 'package:parkinson_de_bolso/widget/customOutlineButton.dart';

// ignore: must_be_immutable
class FooterButton extends StatelessWidget {
  String label;
  Color background;
  @required VoidCallback onPressed;

  FooterButton({this.label, this.background, this.onPressed}) :
    assert(label != null),
    assert(background != null),
    assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomOutlineButton(
        background: this.background,
        textColor: this.background,
        label: this.label,
        onPressed: this.onPressed,
        padding: EdgeInsets.all(10)
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomFooterButton extends StatelessWidget {
  List<FooterButton> buttons = const <FooterButton>[];

  CustomFooterButton({this.buttons}) : 
    assert(buttons != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: buttons.toList()
          ),
        ),
      ),
    );
  }
}