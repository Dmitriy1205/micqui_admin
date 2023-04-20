import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppCheckbox extends StatefulWidget {
  final Function onChange;
  final bool isChecked;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;
  final Icon? checkIcon;

  const AppCheckbox(
      {super.key, required this.isChecked,
      required this.onChange,
      this.size,
      this.iconSize,
      this.selectedColor,
      this.selectedIconColor,
      this.borderColor,
      this.checkIcon});

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(4),
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
            color: _isSelected
                ? widget.selectedColor ?? Colors.blue
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: widget.borderColor ?? Colors.black,
              width: 1,
            )),
        width: widget.size ?? 18,
        height: widget.size ?? 18,
        child: _isSelected
            ? Center(
                child: FaIcon(
                  FontAwesomeIcons.check,
                  color: widget.selectedIconColor ?? Colors.white,
                  size: widget.iconSize ?? 14,
                ),
              )
            : null,
      ),
    );
  }
}
