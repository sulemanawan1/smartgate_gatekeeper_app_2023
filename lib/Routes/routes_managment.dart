
import 'package:gatekeeper/Module/Add%20Walkin%20Guests%20Deatil/View/add_walkin_guests_detail.dart';
import 'package:gatekeeper/Module/AddReportToAdmin/View/add_report_to_admin_screen.dart';
import 'package:gatekeeper/Module/ChatAvailbility/View/chat_availbility_screen.dart';
import 'package:gatekeeper/Module/ChatScreen/View/chat_screen.dart';
import 'package:gatekeeper/Module/Panic%20Mode/panic_mode_screen.dart';
import 'package:gatekeeper/Module/Pre%20Approve%20Entry%20Residents/View/pre_approve_entry_residents.dart';
import 'package:gatekeeper/Module/Service%20Provider%20Check%20In/View/service_provider_check_in.dart';
import 'package:gatekeeper/Routes/screen_binding.dart';
import 'package:get/get.dart';
import '../Module/Events/View/events_screen.dart';
import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login.dart';
import '../Module/NoticeBoard/View/notice_board_screen.dart';
import '../Module/Pre Approve Entry Notifications/View/pre_approve_entry_notification.dart';
import '../Module/Pre Approved Guests/View/pre_approved_guests.dart';
import '../Module/Service Provider Check Out/View/service_provider_check_out.dart';
import '../Splash/View/splash_screen.dart';
import 'set_routes.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: splashscreen,
          page: () => SplashScreen(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: loginscreen,
          page: () => Login(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: homescreen,
          page: () => HomeScreen(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: chatscreen,
          page: () => ChatScreen(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: chatavailbilityscreen,
          page: () => ChatAvailbilityScreen(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: addreporttoadminscreen,
          page: () => AddReportToAdminScreen(),
          binding: ScreenBindings(),
        ),

      GetPage(
          name: preApproveEntryNotificationonScreen,
          page: () => PreApproveEntryNotification(),
          binding: ScreenBindings(),
        ),
      GetPage(
          name: preApproveEntryResidents,
          page: () => PreApproveEntryResidents(),
          binding: ScreenBindings(),
        ),

      GetPage(
          name: preApprovedGuests,
          page: () => PreApprovedGuests(),
          binding: ScreenBindings(),
        ),




      GetPage(
          name: serviceProviderCheckIn,
          page: () => ServiceProviderCheckIn(),
          binding: ScreenBindings(),



      ),
      GetPage(
          name: serviceProviderCheckOut,
          page: () => ServiceProviderCheckOut(),
          binding: ScreenBindings(),
        ),
      GetPage(
        name: addWalkInGuestsDetail,
        page: () => AddWalkinGuestsDetail(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: panicMode,
        page: () => PanicModeScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: eventsscreen,
        page: () => EventsScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: noticeboardscreen,
        page: () => NoticeBoardScreen(),
        binding: ScreenBindings(),
      ),


    ];

  }
}
