import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderController extends GetxController with GetTickerProviderStateMixin {
  var selectedDate = Rx<DateTime?>(null);
  var dropdownValue = RxInt(0);
  var dropdownItems = <DropdownMenuItem<int>>[];
  late TabController tabController;
  var isExpanded = false.obs;

  var requestItems = List.generate(7, (index) => "requestItems $index").obs;
  var deliveryItems = List.generate(5, (index) => "deliveryItems $index").obs;
  var isExpanded1 = List.generate(5, (index) => false.obs).obs;
  var isExpanded2 = List.generate(5, (index) => false.obs).obs;
  var isExpanded3 = List.generate(5, (index) => false.obs).obs;

  void toggleExpansion(value) {
    isExpanded.value = !isExpanded.value;
  }

   List<String> requestList = ['j'];
   List<String> deliveryList = ["random"];

  void addRequest(String item) {

    requestList.add(item);
    update();
  }

  void addDelivery(String item) {
    deliveryList.add(item);
    update(); // Notify GetX to update UI
  }

  void onDateSelected(BuildContext context) async {
    var datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2090),
    );

    if (datePicked != null) {
      selectedDate.value = datePicked;
      dropdownValue.value = 1; // Set value to 1 to indicate a date is selected
      dropdownItems = [
        DropdownMenuItem(
          value: 1,
          child: Text(DateFormat('dd-MMMM-yyyy').format(datePicked)),
        ),
      ];
      update(); // Notify GetX to update UI
    }
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
  final ScrollController scrollController = ScrollController();
  @override
  void dispose() {
    scrollController.dispose(); // Dispose the scroll controller
    super.dispose();
  }
}
