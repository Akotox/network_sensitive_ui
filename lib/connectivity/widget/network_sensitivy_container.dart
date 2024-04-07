import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter/material.dart';
import 'package:network_sensitive_ui/connectivity/widget/offline_page.dart';

class NetworkSensitiveContainer extends StatelessWidget {
  const NetworkSensitiveContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConnectivityBuilder(builder: (context, isConnected, status) {
      if (isConnected == true) {
        return child;
      }

      return const OfflinePage();
    });
  }
}
