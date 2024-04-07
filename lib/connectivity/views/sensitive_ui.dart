import 'package:flutter/material.dart';
import 'package:network_sensitive_ui/connectivity/views/page1.dart';
import 'package:network_sensitive_ui/connectivity/widget/network_sensitivy_container.dart';

class SensitiveUi extends StatelessWidget {
  const SensitiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Sensitive UI"),
        backgroundColor: Colors.blueAccent,
      ),
      body: NetworkSensitiveContainer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text("example1"),
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const PageOne()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("example2"),
              onTap: () {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
