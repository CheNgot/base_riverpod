import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';


import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/resources/base/base_page_route.dart';
import 'package:base_riverpod/ui/home/home_page.dart';
import 'package:base_riverpod/ui/order/order_page.dart';
import 'package:base_riverpod/ui/other/orther_page.dart';
import 'package:base_riverpod/ui/promotion/promotion_page.dart';
import 'package:base_riverpod/ui/store/store_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import '../../constants.dart';
import '../../main.dart';
import 'component/bottom_bar_button.dart';
import 'master_page_view_model.dart';

class MasterPage extends StatefulWidget {
  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> with TickerProviderStateMixin {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  HeroController? _heroController;

  @override
  void initState() {
    super.initState();
    _heroController = HeroController(createRectTween: (begin, end) => MaterialRectArcTween(begin: begin, end: end));





  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Navigator(
          observers: [_heroController!],
          key: _navigatorKey,
          // initialRoute: Constants.pageHome,
          onGenerateRoute: (settings) {
            context.read(masterPageViewModel).addPageToBackStack(settings.name, false);
            switch (settings.name) {
              case Constants.homePage:
                return BasePageRoute(settings: settings, builder: (context) => HomePage());

              case Constants.orderPage:
                return BasePageRoute(settings: settings, builder: (context) => OrderPage());
              case Constants.storePage:
                return BasePageRoute(settings: settings, builder: (context) => StorePage());
              case Constants.promotionPage:
                return BasePageRoute(settings: settings, builder: (context) => PromotionPage());
              case Constants.otherPage:
                return BasePageRoute(settings: settings, builder: (_) => OtherPage());

              default:
                return BasePageRoute(settings: settings, builder: (context) => HomePage());
            }
          },
        ),
        bottomNavigationBar: _buildBottomAppBar(),
      ),
      onWillPop: _onWillPop,
    );
  }

  Widget _buildBottomAppBar() {
    // User? user = context.read(hiveProvider).getUser();
    // print("user là" + (user?.type_staff).toString());
    final viewModel = context.read(masterPageViewModel);
    return PreferredSize(
      preferredSize: Size.fromHeight(100.h),
      child: BottomAppBar(
        notchMargin: 5.0,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: BottomBarButton(
                text: "Trang chủ",
                iconData: Assets.images.icMasterHome,
                tab: MasterPageTab.tabHome,

                onPress: () {

                    _navigatorKey.currentState?.pushNamedAndRemoveUntil(Constants.homePage, (_) => false);
                    // _navigatorKey.currentState?.pushNamed(Constants.pageHome);
                    viewModel.addPageToBackStack(Constants.homePage);

                },
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomBarButton(
                text: "Đặt hàng",
                iconData: Assets.images.icMasterNoti,
                tab: MasterPageTab.tabOrder,

                onPress: () {
                    _navigatorKey.currentState
                        ?.pushNamedAndRemoveUntil(Constants.otherPage, (route) => route.isFirst,
                        arguments: false);
                    viewModel.addPageToBackStack(Constants.otherPage);


                },
              )
            ),
            Expanded(
              flex: 1,
              child: BottomBarButton(
                text: "Cửa hàng",
                iconData: Assets.images.icMasterAddFriend,
                tab: MasterPageTab.tabStore,
                onPress: () {

                    _navigatorKey.currentState?.pushNamedAndRemoveUntil(Constants.storePage, (route) => route.isFirst);
                    // _navigatorKey.currentState?.pushNamed(Constants.pageNews);
                    viewModel.addPageToBackStack(Constants.storePage);

                },
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomBarButton(
                text: "Ưu đãi",
                iconData: Assets.images.icMasterAccount,
                tab: MasterPageTab.tabPromotion,
                onPress: () {



                     _navigatorKey.currentState?.pushNamedAndRemoveUntil(Constants.promotionPage, (route) => route.isFirst);
                     viewModel.addPageToBackStack(Constants.promotionPage);


                },
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomBarButton(
                text: "Khác",
                iconData: Assets.images.icMasterAccount,
                tab: MasterPageTab.tabOther,
                onPress: () {



                  _navigatorKey.currentState?.pushNamedAndRemoveUntil(Constants.otherPage, (route) => route.isFirst);
                  viewModel.addPageToBackStack(Constants.otherPage);


                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (_navigatorKey.currentState?.canPop() == true) {
      _navigatorKey.currentState?.pop();
      context.read(masterPageViewModel).backPageFromBackStack();
      // context.read(customBottomNavViewModel).setAnimate(true);

      return false;
    }

    Completer<bool> completer = Completer();
    // showAlertConfirm(
    //   context: context,
    //   message: LocaleKeys.txt_exit.tr(),
    //   title: LocaleKeys.txt_logout.tr(),
    //   onPressOk: () {
    //     String? deviceToken= context.read(hiveProvider).getDeviceToken();
    //     context.read(accountViewModel).logout(deviceToken??"").then((value) {
    //       if(value.status==200){
    //         completer.complete(true);
    //         context.read(hiveProvider).clearData();
    //         Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(Constants.loginPage, (route) => false);
    //       }
    //     });
    //   },
    //   onPressCancel: () {
    //     completer.complete(false);
    //   },
    // );
    return completer.future;
  }


  // Future openNotificationPayload(String? payload) async {
  //   User? user = context.read(hiveProvider).getUser();
  //   if (payload == null) return;
  //   String myJSON = payload;
  //   myJSON = myJSON.replaceAll('{', '{"');
  //   myJSON = myJSON.replaceAll(': ', '": "');
  //   myJSON = myJSON.replaceAll(', ', '", "');
  //   myJSON = myJSON.replaceAll('}', '"}');
  //   NotiFirebase notiFirebase = NotiFirebase.fromJson(json.decode(myJSON));
  //
  //   if(user?.is_staff==false){
  //     if( notiFirebase.type=="bank_accept_loan_procedue"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.loanOfferDetailCustomerReceivedPage,arguments: notiFirebase.loanProcedueId);
  //     }
  //     else if(notiFirebase.type=="bank_approved_loan_procedue"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.loanOfferDetailCustomerWaitingPage,arguments: notiFirebase.loanProcedueId);
  //     }
  //     else if (notiFirebase.type == "bank_approved_loan_procedue") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.loanProcedueId);
  //     }
  //     else if(notiFirebase.type=="alert_approval_process_loan_application") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.model_id??"");
  //     }
  //     else if (notiFirebase.type == "bank_reject_loan_procedue") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerCancelPage,
  //           arguments: LoanOfferDetailCustomerCancelAgr(
  //               id: notiFirebase.loanProcedueId,
  //               isFromNoti: true,
  //               bank_id: int.tryParse(notiFirebase?.bankId??"")
  //           ));
  //     }
  //
  //     else if (notiFirebase.type == "bank_approved_loan_procedue") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.loanProcedueId);
  //     }
  //     else if(notiFirebase.type=="disbursement_success"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailDisbursement,
  //           arguments: ResponseDisbursement(id: notiFirebase.disbursementId));
  //     }
  //     else if(notiFirebase.type=="trade_finance_success"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailTradeFinances,
  //           arguments: notiFirebase.tradeFinanceId);
  //     }
  //     else if (notiFirebase.type == "be_friend") {
  //       Navigator.pushNamed(context,
  //           Constants.friendPage);
  //     }
  //     else if (notiFirebase.type == "new_comment") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(notificationViewModel).getPost(notiFirebase.post_id??"",isLoading: true) );
  //     }
  //     else if (notiFirebase.type == "disbursement_approval") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailDisbursement,
  //           arguments: ResponseDisbursement(id: notiFirebase.disbursementId));
  //     }
  //     else if (notiFirebase.type == "new_post") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(masterPageViewModel).getPost(notiFirebase.post_id??"") );      }
  //     else if (notiFirebase.type == "post_tag") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(masterPageViewModel).getPost(notiFirebase.post_id??"") );      }
  //     else if (notiFirebase.type == "message_new") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.chatPage, arguments: ResponseChatChannel(id: int.tryParse((notiFirebase.group_id).toString())));
  //     }
  //     else if (notiFirebase.type == "loan_application.new_update") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.loanProcedueId);
  //     }
  //     else if (notiFirebase.type == "alert_complete_process") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.loanProcedue_id);
  //     }
  //     else if (notiFirebase.type == "expried_express_loan_procedue") {
  //       showAlertConfirm(context: context, message: LocaleKeys.txt_extend_quick_loan.tr(),
  //           onPressOk: (){
  //             final viewModel = context.read(notificationViewModel);
  //             viewModel.extendQuickLoan(notiFirebase.loanProcedueId??"");
  //           });
  //     }
  //     else if (notiFirebase.type == "date_of_birth") {
  //       Navigator.of(context,rootNavigator: true).pushNamed(Constants.profilePage,arguments: int.tryParse(notiFirebase.to_user??""));
  //
  //     }
  //     else {
  //       print("item2=="+(notiFirebase.to_user).toString());
  //       showAlertMakeFriend(context: context,message: notiFirebase.body??"",name: "",phone_number: "",
  //           onPressOk: (){
  //             context.read(friendViewModel).acceptFriendRequest(notiFirebase.from_user??"").then((res) {
  //               if(res.status==200){
  //                 Navigator.of(context, rootNavigator: true).pop();
  //                 showToast(context: context, message:  LocaleKeys.txt_sent_make_friend.tr());
  //               }
  //             });
  //           },
  //           onPressCancel: (value){});                }
  //   }
  //   else{
  //     if(notiFirebase.type=="bank_accept_loan_procedue"||notiFirebase.type=="bank_approved_loan_procedue"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.detailLoanDocumentFocalStaffPage,arguments: ScreenArguments(notiFirebase.loanApplicationId??"",false));
  //
  //     }
  //     else if (notiFirebase.type == "new_post") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(masterPageViewModel).getPost(notiFirebase.post_id??"") );      }
  //     else if (notiFirebase.type == "post_tag") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(masterPageViewModel).getPost(notiFirebase.post_id??"") );      }
  //     else if (notiFirebase.type == "message_new") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.chatPage, arguments: ResponseChatChannel(id: int.tryParse((notiFirebase.group_id).toString())));
  //     }
  //
  //     else if(notiFirebase.type=="disbursement_success"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailDisbursement,
  //           arguments: ResponseDisbursement(id: notiFirebase.disbursementId));
  //     }
  //     else if(notiFirebase.type=="alert_approval_loan_application") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.detailLoanDocumentFocalStaffPage,arguments: ScreenArguments(notiFirebase.model_id??"", false));
  //     }
  //     else if(notiFirebase.type=="update_noti_oustanding"){
  //       context.read(notificationViewModel).loadRepayment(notiFirebase.scheduled_recast_id??0).then((value) {
  //         Navigator.of(context, rootNavigator: true)
  //             .pushNamed(Constants.createRepaymentPage
  //             ,arguments: CreateRepaymentArg(
  //                 id: "",
  //                 modelType:""
  //                 ,repayment: value));
  //
  //       });
  //
  //     }
  //
  //     else if(notiFirebase.type=="trade_finance_success"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailTradeFinances,
  //           arguments: notiFirebase.tradeFinanceId);
  //     }
  //     else if(notiFirebase.type=="customer_accept_bank"){
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailLoanDocumentFocalStaffPage,
  //           arguments: ScreenArguments(notiFirebase.loanApplicationId??"", false));
  //     }
  //     else if (notiFirebase.type == "be_friend") {
  //       Navigator.pushNamed(context,
  //           Constants.friendPage);
  //     }
  //     else if (notiFirebase.type == "new_comment") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(Constants.commentPage,
  //           arguments: await context.read(notificationViewModel).getPost(notiFirebase.post_id??"",isLoading: true) );
  //     }
  //     else if (notiFirebase.type == "disbursement_approval") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.detailDisbursement,
  //           arguments: ResponseDisbursement(id: notiFirebase.disbursementId));
  //     }
  //     else if (notiFirebase.type == "alert_complete_process") {
  //       Navigator.of(context, rootNavigator: true).pushNamed(
  //           Constants.loanOfferDetailCustomerWaitingPage,
  //           arguments: notiFirebase.loanProcedue_id);
  //     }
  //     else if (notiFirebase.type == "date_of_birth") {
  //       Navigator.of(context,rootNavigator: true).pushNamed(Constants.profilePage,arguments: int.tryParse(notiFirebase.to_user??""));
  //
  //     }
  //     else if( notiFirebase.type=="") {
  //       print("item2=="+(notiFirebase.to_user).toString());
  //       showAlertMakeFriend(context: context,message: notiFirebase.body??"",name: "",phone_number: "",
  //           onPressOk: (){
  //             context.read(friendViewModel).acceptFriendRequest((notiFirebase.from_user??"")).then((res) {
  //               if(res.status==200){
  //                 Navigator.of(context, rootNavigator: true).pop();
  //                 showToast(context: context, message: LocaleKeys.txt_sent_make_friend.tr());
  //               }
  //             });
  //           },
  //           onPressCancel: (value){});                }
  //
  //   }
  //
  //
  //   // await _navigatorKey.currentState.pushNamed(Constants.pageNotificationSplash, arguments: notificationSplashPayload);
  // }





}
