import 'package:flutter/material.dart';
import 'package:rolemanager/Controllers/invitation_controller.dart';
import 'package:rolemanager/View/Pages/invite_page.dart';

class InvitationViewController extends StatefulWidget {
  const InvitationViewController({Key? key}) : super(key: key);

  @override
  _InvitationViewControllerState createState() =>
      _InvitationViewControllerState();
}

class _InvitationViewControllerState extends State<InvitationViewController> {
  late TextEditingController _controller;
  bool _validator = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InvateModal.showDialogModal(context, _controller, () {
      InvitationController.dispose(context);
    }, () {
      setState(() {
        _validator =
            InvitationController.isNullValidator(_controller, _validator);
      });
    }, _validator));
  }
}
