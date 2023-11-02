import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  unknown,
  internalWired,
  externalWired,
  wireless,
  bluetooth,
  parallel,
  serial,
  usb,
  sdCard,
  battery,
}

final printerInterfaceEnum = EnumBase(
  defaultEnum: EnumValues.unknown,
  values: {
    EnumData(EnumValues.unknown, 0, "Unknown"),
    EnumData(EnumValues.internalWired, 1, "Internal Wired"),
    EnumData(EnumValues.externalWired, 2, "External Wired"),
    EnumData(EnumValues.wireless, 4, "Wireless"),
    EnumData(EnumValues.bluetooth, 8, "Bluetooth"),
    EnumData(EnumValues.parallel, 16, "Parallel"),
    EnumData(EnumValues.serial, 32, "Serial"),
    EnumData(EnumValues.usb, 64, "USB"),
    EnumData(EnumValues.sdCard, 128, "SD Card"),
    EnumData(EnumValues.battery, 256, "Battery"),
  },
);
