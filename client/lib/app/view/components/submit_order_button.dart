import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    // Call the gRPC ClientButtonPressed method
    final request = OrderRequest(
      id: await generateClientId(),
    );
    final response = await GRPCService().submitOrderButtonPress(request);

    if (response.pressed) {
      print('Other client pressed the button!');
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
    // Get the delivery guy to start spinning#
    GoRouter.of(context).go('/avatar');
  }

  Future<String> generateClientId() async {
    String deviceId;

    if (Platform.isAndroid || Platform.isIOS) {
      deviceId = Platform.operatingSystemVersion;
    } else {
      // For other platforms, generate a random ID
      deviceId = DateTime.now().millisecondsSinceEpoch.toString();
    }

    return deviceId;
  }
}
