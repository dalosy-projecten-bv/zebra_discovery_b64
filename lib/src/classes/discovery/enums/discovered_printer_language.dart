import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum DiscoveredPrinterLanguage {
  unknown,
  zpl,
  cpcl,
  epl,
}

final discoveredPrinterLanguagesEnum = EnumBase(
  defaultEnum: DiscoveredPrinterLanguage.unknown,
  values: {
    EnumData(DiscoveredPrinterLanguage.unknown, 0, 'unknown'),
    EnumData(DiscoveredPrinterLanguage.zpl, 1, 'ZPL'),
    EnumData(DiscoveredPrinterLanguage.cpcl, 2, 'CPCL'),
    EnumData(DiscoveredPrinterLanguage.epl, 4, 'EPL'),
  },
);
