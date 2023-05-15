// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'constants.dart';

// Project imports:

class PrebuiltCallPage extends StatefulWidget {
  String? callID;
  String? id;
  String? name;
  PrebuiltCallPage({this.callID, this.id, this.name});

  @override
  State<StatefulWidget> createState() => PrebuiltCallPageState();
}

class PrebuiltCallPageState extends State<PrebuiltCallPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map<String, String>;

    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: 389834699 /*input your AppID*/,
        appSign:
            "d9f47587230b49589f5e811672f1daae56dccddd67b23aa19e98530f401fcee2" /*input your AppSign*/,
        userID: widget.id!,
        userName: widget.name!,
        callID: widget.callID!,
        config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()

          /// support minimizing
          ..topMenuBarConfig.isVisible = true
          ..topMenuBarConfig.buttons = [
            ZegoMenuBarButtonName.minimizingButton,
            ZegoMenuBarButtonName.showMemberListButton,
          ]

          ///
          ..onOnlySelfInRoom = (context) {
            if (PrebuiltCallMiniOverlayPageState.idle !=
                ZegoUIKitPrebuiltCallMiniOverlayMachine().state()) {
              ZegoUIKitPrebuiltCallMiniOverlayMachine()
                  .changeState(PrebuiltCallMiniOverlayPageState.idle);
            } else {
              Navigator.of(context).pop();
            }
          },
      ),
    );
  }
}
