import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';
import 'package:meetup_demo/service/grcp_service.dart';

class SubmitOrderButton extends StatefulWidget {
  const SubmitOrderButton({super.key});

  @override
  _SubmitOrderButtonState createState() => _SubmitOrderButtonState();
}

class _SubmitOrderButtonState extends State<SubmitOrderButton> {
  bool isButtonEnabled = false;

  Future<void> clientButtonPressed() async {
    // Call the gRPC Client1ButtonPressed method
    final request = OrderRequest(
      id: generateClientId as String,
    );
    final response = await GRPCService().submitOrderButtonPress(request);

    if (response.pressed) {
      print('other client pressed the button!');
      setState(() {
        isButtonEnabled = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: clientButtonPressed,
          child: const Text('Ready to submit order'),
        ),
        ElevatedButton(
          onPressed: isButtonEnabled ? submitButtonPressed : null,
          child: const Text('Submit Order'),
        ),
      ],
    );
  }

  Future<void> submitButtonPressed() async {
    // get the delivery guy to start spinning
  }

  Future<String> generateClientId() async {
    final deviceInfo = DeviceInfoPlugin();
    String deviceId;

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.androidId;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.identifierForVendor;
    } else {
      // For other platforms, generate a shitty random id
      deviceId = DateTime.now().millisecondsSinceEpoch.toString();
    }

    return deviceId;
  }
}
