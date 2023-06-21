import 'package:flutter/material.dart';
import 'package:jo_body/jo_body.dart';
import 'package:lanternet_open_ai/new_version/home/jo_page_home.dart';

import '../../bases/Controller/Service/UserServiceV2.dart';

class JOPageDetail extends StatefulWidget {
  JOPageDetail({
    Key? key,
  }) : super(key: key);
  static String routeName = "/jo_page_detail";

  @override
  State<JOPageDetail> createState() => _JOPageDetailState();
}

class _JOPageDetailState extends State<JOPageDetail> {
  bool inProgress = false;
  bool keep = false;
  //BankVM? bank;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //bank = BankServiceV2().getSelected();
    return JOBody(
      rtl: true,
      onPopPushReplacement: JOPageHome.routeName,
      margin: EdgeInsets.only(top: 10.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // JOPageDetailBankDescription(
            //   bank: bank?.id ?? 0,
            // ),
            // JoTabs(
            //   title: Text(
            //     "بخش ها",
            //     style: TextStyle(
            //       color: CBase().basePrimaryColor,
            //     ),
            //   ),
            //   icons: [
            //     Icons.person_2_rounded,
            //     Icons.calendar_month_rounded,
            //   ],
            //   tabsBody: [
            //     JOPageDetailBankUsers(
            //       bank: bank?.id ?? 0,
            //     ),
            //     JOPageDetailBankMonths(
            //       bank: bank?.id ?? 0,
            //       onClick: (p0) async {
            //         BankMonthsServiceV2().setSelected(p0);
            //         await PaymentServiceV2().GetMonthPayment(p0.id ?? 0);
            //         Navigator.of(context).pushNamed("JOPagePayment.routeName");
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      inProgress: inProgress,
      actions: [
        // JOSmallButton(
        //   onClick: () async {
        //     setState(() {
        //       inProgress = true;
        //       UserServiceV2().setOperation(true);
        //     });
        //     var response = await BankServiceV2().StartBank(bank?.id ?? 0);
        //     response.showMessage(context);
        //     if (response.isSuccess) {
        //       await BankServiceV2().getBanks();
        //       BankServiceV2()
        //           .setSelectedById(BankServiceV2().getSelected()?.id);
        //     }
        //     setState(() {
        //       inProgress = false;
        //       UserServiceV2().setOperation(false);
        //     });
        //   },
        //   title: Messages.bankStart,
        //   icon: Icons.play_arrow_rounded,
        //   visible: UserServiceV2().isForMe(bank?.userId) &&
        //       bank?.start == null &&
        //       (bank?.users?.length ?? 0) > 4,
        //   enabled: bank?.userId == UserServiceV2.profileData?.id &&
        //       UserServiceV2.profileData != null,
        // ),
        // JOSmallButton(
        //   onClick: () async {
        //     setState(() {
        //       inProgress = true;
        //       UserServiceV2().setOperation(true);
        //     });
        //     var response = await BankServiceV2().StopBank(bank?.id ?? 0);
        //     response.showMessage(context);
        //     if (response.isSuccess) {
        //       await BankServiceV2().getBanks();
        //       BankServiceV2()
        //           .setSelectedById(BankServiceV2().getSelected()?.id);
        //     }
        //     setState(() {
        //       inProgress = false;
        //       UserServiceV2().setOperation(false);
        //     });
        //   },
        //   title: Messages.bankStop,
        //   icon: Icons.stop_circle_rounded,
        //   visible: UserServiceV2().isForMe(bank?.userId) && bank?.start != null,
        //   enabled: bank?.userId == UserServiceV2.profileData?.id &&
        //       UserServiceV2.profileData != null,
        // ),
        // JOSmallButton(
        //   onClick: () async {
        //     setState(() {
        //       inProgress = true;
        //       UserServiceV2().setOperation(true);
        //     });
        //     var response =
        //         await BankMonthsServiceV2().SpinnerMonth(bank?.id ?? 0);
        //     response.showMessage(context);
        //     if (response.isSuccess) {
        //       await BankServiceV2().getBanks();
        //     }
        //     setState(() {
        //       inProgress = false;
        //       UserServiceV2().setOperation(false);
        //     });
        //   },
        //   icon: Icons.one_x_mobiledata_rounded,
        //   visible: UserServiceV2().isForMe(bank?.userId) &&
        //       true &&
        //       (bank?.months?.length ?? 0) > 0 &&
        //       bank?.months?.any((element) => element.winnerId == null) == true,
        //   enabled: bank?.userId == UserServiceV2.profileData?.id &&
        //       UserServiceV2.profileData != null,
        //   title: Messages.chance,
        // ),
        // JOSmallButton(
        //   onClick: () async {
        //     setState(() {
        //       inProgress = true;
        //       UserServiceV2().setOperation(true);
        //     });
        //     var response =
        //         await BankMonthsServiceV2().SpinnerAll(bank?.id ?? 0);
        //     response.showMessage(context);
        //     if (response.isSuccess) {
        //       await BankServiceV2().getBanks();
        //     }
        //     setState(() {
        //       inProgress = false;
        //       UserServiceV2().setOperation(false);
        //     });
        //   },
        //   icon: Icons.all_inclusive_rounded,
        //   visible: UserServiceV2().isForMe(bank?.userId) &&
        //       true &&
        //       (bank?.months?.length ?? 0) > 0 &&
        //       bank?.months?.any((element) => element.winnerId == null) == true,
        //   enabled: bank?.userId == UserServiceV2.profileData?.id &&
        //       UserServiceV2.profileData != null,
        //   title: Messages.chance,
        // ),
        // JOSmallButton(
        //   onClick: () {
        //     Navigator.of(context).pushNamed("JOPageEditBank.routeName");
        //   },
        //   icon: Icons.edit_document,
        //   visible: UserServiceV2().isForMe(bank?.userId) && bank?.start == null,
        //   enabled: UserServiceV2().isForMe(bank?.userId),
        // ),
        // JOSmallButton(
        //   onClick: () {
        //     ResponseModel responseModel = ResponseModel(
        //         isSuccess: false, message: "آیا مایل به حذف هستید ؟");
        //     responseModel.showDialog(context, (p0) async {
        //       if (p0) {
        //         var response =
        //             await BankServiceV2().DeleteBank(bank ?? BankVM());
        //         if (response.isSuccess) {
        //           await BankServiceV2().getBanks();
        //           Navigator.of(context).pop();
        //         } else {
        //           response.showMessage(context);
        //         }
        //       }
        //     });
        //   },
        //   icon: Icons.delete_forever_rounded,
        //   visible: UserServiceV2().isForMe(bank?.userId) && bank?.start == null,
        //   enabled: UserServiceV2().isForMe(bank?.userId),
        // )
      ],
    );
  }
}
