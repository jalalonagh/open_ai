import 'package:flutter/material.dart';
import 'package:jo_loading/jo_loading.dart';
import 'package:jo_buttons/jo_buttons.dart';

class JOPageDetailBankUsers extends StatefulWidget {
  const JOPageDetailBankUsers({
    Key? key,
    required this.bank,
  }) : super(key: key);
  final int bank;
  @override
  State<JOPageDetailBankUsers> createState() => _JOPageDetailBankUsersState();
}

class _JOPageDetailBankUsersState extends State<JOPageDetailBankUsers> {
  bool inProgress = false;
  //List<BankUserVM>? users;
  List<JOCircleNameIconButton>? grid = List.empty();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //users = BankUsersServiceV2().getList();

    // grid = users!
    //     .map(
    //       (e) => JOCircleNameIconButton(
    //         text: e.personName ?? "",
    //         data: e,
    //         onClick: (p0) {
    //           if (BankServiceV2().getSelected()?.start == null) {
    //             ResponseModel res = ResponseModel(
    //                 isSuccess: true,
    //                 message: "می خواهید ${e.personName} را حذف کنید ؟");
    //             res.showDialog(context, (p0) async {
    //               if (p0) {
    //                 setState(() {
    //                   inProgress = true;
    //                   UserServiceV2().setOperation(true);
    //                 });
    //                 var response = await BankUsersServiceV2().DeleteBankUser(e);
    //                 if (response.isSuccess) {
    //                   await BankUsersServiceV2()
    //                       .GetBankUsers(BankServiceV2().getSelected()?.id ?? 0);
    //                   setState(() {});
    //                 }
    //                 setState(() {
    //                   inProgress = false;
    //                   UserServiceV2().setOperation(false);
    //                 });
    //               }
    //             });
    //           }
    //         },
    //       ),
    //     )
    //     .toList();

    // if (UserServiceV2().isForMe(BankServiceV2().getSelected()!.userId) &&
    //     BankServiceV2().getSelected()?.start == null) {
    //   grid!.add(
    //     JOCircleNameIconButton(
    //       text: "+",
    //       color: CBase().basePrimaryColor,
    //       iconOnly: true,
    //       largeText: true,
    //       onClick: (e) {
    //         Navigator.of(context)
    //             .pushNamed("JOPageNewBankUser.routeName",
    //                 arguments: users?.first)
    //             .then((value) => setState(() {}));
    //       },
    //     ),
    //   );
    // }

    return inProgress
        ? JOLoading()
        : Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            height: MediaQuery.of(context).size.height,
            child: //users != null
                // ? GridView.count(
                //     crossAxisCount: 4,
                //     children: grid ?? List.empty(),
                //   )
                //:
                Text("هنوز کسی عضو نشده است"),
          );
  }
}
