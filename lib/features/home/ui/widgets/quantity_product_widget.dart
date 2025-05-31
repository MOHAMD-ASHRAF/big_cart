import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantityProductWidget extends StatefulWidget {
  const QuantityProductWidget({super.key});

  @override
  State<QuantityProductWidget> createState() => _QuantityProductWidgetState();
}

class _QuantityProductWidgetState extends State<QuantityProductWidget> {
  int quantity = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Quantity',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              if (quantity > 1) {
                setState(() {
                  quantity--;
                });
              }
            },
            icon: const Icon(Icons.remove, color: Colors.green),
            constraints: const BoxConstraints(),
            padding: EdgeInsets.all(8.w),
          ),
          Container(
            alignment: Alignment.center,
            width: 40.w,
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Text(
              '$quantity',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            icon: const Icon(Icons.add, color: Colors.green),
            constraints: const BoxConstraints(),
            padding: EdgeInsets.all(8.w),
          ),
        ],
      ),
    );
  }
}
