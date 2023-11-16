import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

const sampleDiscoveryString =
    'OiwuBAUBAAFaQlIAAEQzSjE5MzIwNjcyMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFpUQyBaRDYyMC0yMDNkcGkgWlBMAAAAAAAAAAAAAAAAVjg0LjIwLjIzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1EM0oxOTMyMDY3MjIAAAAAAAAAAAAAAAAAAAAAAAAAAGhvbWUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAdNnRgUAADAqAFM////AMCoAQEX1Q7/AAAAAQAAAAUAAAADAAgR8ATQA0AAZAACAAAAAQAAAPsAAA/lAAAP5QAAAAABAAIBA0Aj8AYEMC4xMwAAGykIAALSsBojtyQbAAA=:c0cb';

class DiscoveryB64View extends StatelessWidget {
  const DiscoveryB64View({super.key});

  static const routeName = '/discovery_b64';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decode a DiscoveryB64 message'),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final discoveryB64Controller = TextEditingController();
  final prettyJsonController = TextEditingController();
  final jsonEncoder = const JsonEncoder.withIndent('  ');

  void performConversion() {
    try {
      prettyJsonController.text = jsonEncoder.convert(
        Discovery.fromDiscoveryB64(discoveryB64Controller.text).toJson(),
      );
    } on FormatException catch (e) {
      prettyJsonController.text = e.message;
    }
  }

  @override
  void initState() {
    discoveryB64Controller.addListener(performConversion);
    super.initState();
  }

  @override
  void dispose() {
    discoveryB64Controller.dispose();
    prettyJsonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                discoveryB64Controller.text = sampleDiscoveryString;
              },
              child: const Text('Load sample discoveryB64 string'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'discoveryB64',
              ),
              controller: discoveryB64Controller,
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Discovery as json',
              ),
              controller: prettyJsonController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
