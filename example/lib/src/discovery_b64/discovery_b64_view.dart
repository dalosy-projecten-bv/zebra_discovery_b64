import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DiscoveryB64View extends StatelessWidget {
  const DiscoveryB64View({super.key});

  static const routeName = '/discovery_b64';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.discoveryB64Title),
      ),
    );
  }
}
