
import 'package:gatekeeper/Module/Add%20Walkin%20Guests%20Deatil/View/add_walkin_guests_detail.dart';
import 'package:gatekeeper/Module/ChatAvailbility/View/chat_availbility_screen.dart';
import 'package:gatekeeper/Module/Panic%20Mode/panic_mode_screen.dart';
import 'package:gatekeeper/Module/Pre%20Approve%20Entry%20Residents/View/pre_approve_entry_residents.dart';
import 'package:gatekeeper/Module/Service%20Provider%20Check%20In/View/service_provider_check_in.dart';
import 'package:get/get.dart';
import '../Module/AddReportToAdmin/View/add_report_to_admin_screen.dart';
import '../Module/ChatScreen/View/chat_screen.dart';
import '../Module/Events/View/events_screen.dart';
import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login.dart';
import '../Module/NoticeBoard/View/notice_board_screen.dart';
import '../Module/Pre Approve Entry Notifications/View/pre_approve_entry_notification.dart';
import '../Module/Pre Approved Guests/View/guestdetails.dart';
import '../Module/Pre Approved Guests/View/pre_approved_guests.dart';
import '../Module/Service Provider Check Out/View/service_provider_check_out.dart';
import '../Splash/View/splash_screen.dart';
class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => Login());
    Get.lazyPut(() => HomeScreen());
    Get.lazyPut(() => ChatScreen());
    Get.lazyPut(() => ChatAvailbilityScreen());
    Get.lazyPut(() => AddReportToAdminScreen());
    Get.lazyPut(() => PreApproveEntryNotification());
    Get.lazyPut(() => PreApproveEntryResidents());
    Get.lazyPut(() => PreApprovedGuests());
    Get.lazyPut(() => GuestDetails());

    Get.lazyPut(() => ServiceProviderCheckIn());
    Get.lazyPut(() => ServiceProviderCheckOut());
    Get.lazyPut(() =>AddWalkinGuestsDetail());
    Get.lazyPut(() =>PanicModeScreen());
    Get.lazyPut(() =>EventsScreen());
    Get.lazyPut(() =>NoticeBoardScreen());




  }
}
