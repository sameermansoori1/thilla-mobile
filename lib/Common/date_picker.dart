import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:thillla_mobile_frontend/Controllers/order_controller.dart';
import '../../../Common/app_themes.dart';

class CustomDatePicker extends GetView<OrderController> {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemes.background,
        borderRadius: BorderRadius.circular(25),
      ),
      width: 148,
      height: 32,
      child: Obx(
        () => TextField(

          readOnly: true,
          onTap: () =>
              controller.onDateSelected(context), // Open calendar on tap
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 11, vertical: 5),


            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            hintText: 'Select Date',
            suffixIcon: const Icon(Icons.keyboard_arrow_down), // Calendar icon
          ),
          controller: TextEditingController(
            text: controller.selectedDate.value != null
                ? DateFormat('dd/MM/yyyy')
                    .format(controller.selectedDate.value!)
                : '',
          ),
        ),
      ),
    );
  }
}
