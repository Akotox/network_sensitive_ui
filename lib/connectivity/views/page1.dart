import 'package:flutter/material.dart';
import 'package:network_sensitive_ui/connectivity/widget/network_sensitivy_container.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.amber,
          ),
          const SizedBox(
            height: 20,
          ),
          NetworkSensitiveContainer(
              child: Container(
            height: 200,
            color: Colors.purpleAccent,
          ))
        ],
      ),
    );
  }
}
