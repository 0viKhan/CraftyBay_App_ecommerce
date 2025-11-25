import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({super.key, required this.onChange});
  final Function(int) onChange;
  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  int _currentValue=1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton(Icons.remove,(){
          if(_currentValue>1)
            {
              _currentValue--;
              widget.onChange(_currentValue);
              setState(() {

              });
            }

        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            _currentValue.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        _buildButton(Icons.add,(){
          _currentValue++;
        }),
      ],
    );
  }

  Widget _buildButton(IconData icon, VoidCallback ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(color: AppColors.themeColor),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
