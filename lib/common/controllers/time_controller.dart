// import 'dart:async';
//
// class TimeController extends GetxController {
//   static TimeController get to => Get.find();
//   RxString currentTime = ''.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     // Update time every second
//     Timer.periodic(const Duration(seconds: 1), (_) {
//       updateTime();
//     });
//   }
//
//   void updateTime() {
//     DateTime now = DateTime.now().toUtc().add(const Duration(hours: 5, minutes: 30)); // Adjust for Indian Standard Time (UTC+5:30)
//     String formattedTime = '${now.hour}:${now.minute}:${now.second}';
//     currentTime.value = formattedTime;
//   }
// }
