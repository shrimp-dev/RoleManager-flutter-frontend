import 'package:flutter/material.dart';
import 'package:rolemanager/View/Pages/invite_page.dart';

class InvitationViewController extends StatefulWidget {
  const InvitationViewController({Key? key}) : super(key: key);

  @override
  _InvitationViewControllerState createState() =>
      _InvitationViewControllerState();
}

class _InvitationViewControllerState extends State<InvitationViewController> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InvateModal.showDialogModal(context, _controller, () {
      Navigator.pop(context);
    }, () {}));
  }
}
