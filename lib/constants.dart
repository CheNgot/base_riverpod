import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum AppColor { colorPrimary, colorRed, colorBlue, colorYellow, colorGreen }

enum NoteType { TYPE_NORMAL, TYPE_IMPORTANT, TYPE_PASSWORD }

@immutable
class Constants {
  static const String endpoint = "http://allbanks.hoanvusolutions.com.vn/api/v1/";

  static const String CHANNEL_ID = "flutter_message_client_channel_id";
  static const String CHANNEL_NAME = "Massage Client";
  static const String CHANNEL_DESCRIPTION = "Massage Client notifications";
  static const String HIVE_BOX = "HIVE_BOX_MASSAGE_CLIENT";

  // static const String apiKey;
  static const String feature_updating = "Tính năng đang cập nhật";
  static const String googleMapKey = "AIzaSyDkKiUcvQhtxKkEysAIt0w-69XTkAE1vNY";
  static const bool isTestUIAuth = false;
  static const bool isTestImage = false;

  static const int pageLimit = 10;

  static const String ORDER_STATUS_PENDING = "pending";
  static const String ORDER_STATUS_CONFIRM = "confirm";
  static const String ORDER_STATUS_SUCCESS = "success";
  static const String ORDER_STATUS_REFUSE = "refuse";

  static const String NOTIFY_TYPE_PROMOTION = "promotion";
  static const String NOTIFY_TYPE_NEWS = "news";
  static const String NOTIFY_TYPE_BOOKING = "booking";
  // static const String NOTIFY_TYPE_REFUSE = "refuse";
  // static const String NOTIFY_TYPE_SUCCESS = "success";

  static const String TYPE_APPOINTMENT_ADVISE = "advising"; //Tải hình ảnh
  static const String TYPE_APPOINTMENT_SURGERY = "surgery_schedule"; //Tải hình ảnh

  static const String pageSplash = '/pageSplash';
  static const String pageImageFullScreen = '/pageImageFullScreen';

  static const String loginPage = '/LoginPage';
  static const String registerPage = '/RegisterPage';
  static const String forgotPassPhonePage = '/ForgotPassEmailPage';
  static const String forgotPassVerifyPage = '/ForgotPassVerifyPage';
  static const String forgotPassChangePassPage = '/ForgotPassChangePassPage';

  static const String changePassPage = '/ChangePassPage';

  static const String masterPage = '/masterPage';
  static const String homePage = '/homePage';
  static const String appointmentPage = '/AppointmentPage';
  static const String historyPage = '/HistoryPage';
  static const String profilePage = '/ProfilePage';
  static const String orderPage = '/orderPage';
  static const String storePage = '/storePage';
  static const String promotionPage = '/promotionPage';
  static const String otherPage = '/otherPage';





  static const String employeePage = '/EmployeePage';
  static const String scheduleServicePage = '/ScheduleServicePage';
  static const String ratePage = '/RatePage';
  static const String notificationPage = '/NotificationPage';
  static const String notificationDetailPage = '/notificationDetailPage';

  static String endpointRelease = "http://allbanks.hoanvusolutions.com.vn/api/v1/";

  static const String linkImageTest = 'https://www.pakainfo.com/wp-content/uploads/2021/09/image-url-for-testing.jpg';


}
