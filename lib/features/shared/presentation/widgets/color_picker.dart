import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:flutter/cupertino.dart'
    show Placeholder, BuildContext, StatefulWidget, State, Widget, Row, Container, Text, BoxDecoration, Border;
import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.colors, required this.onSelected});
  final List<String> colors;
  final Function(String)onSelected;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  String? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: widget.colors.map((color) {
        return GestureDetector(
          onTap: (){
            _selectedColor=color;
            widget.onSelected(color);
            setState(() {

            });
          },
          child: Container(
            padding:EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _selectedColor==color?AppColors.themeColor:null,
              border: Border.all(
                color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text(color),
          ),
        );
      }).toList(),
    );
  }
}
