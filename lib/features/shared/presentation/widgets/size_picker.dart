import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.onSelected, required this.sizes});
  final List<String> sizes;
  final Function(String) onSelected;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal ,
      child: Row(
        spacing: 8,
        children: widget.sizes.map((size) {
          return GestureDetector(
            onTap: () {
              _selectedSize = size;
              widget.onSelected(size);
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedSize == size ? AppColors.themeColor : null,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(size),
            ),
          );
        }).toList(),
      ),
    );
  }
}
