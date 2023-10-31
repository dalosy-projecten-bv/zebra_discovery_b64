import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

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

final printerInterfaceEnum = Values<EnumValues>(
  defaultValue: EnumValues.unknown,
  values: {
    Value(EnumValues.unknown, 0, "Unknown"),
    Value(EnumValues.internalWired, 1, "Internal Wired"),
    Value(EnumValues.externalWired, 2, "External Wired"),
    Value(EnumValues.wireless, 4, "Wireless"),
    Value(EnumValues.bluetooth, 8, "Bluetooth"),
    Value(EnumValues.parallel, 16, "Parallel"),
    Value(EnumValues.serial, 32, "Serial"),
    Value(EnumValues.usb, 64, "USB"),
    Value(EnumValues.sdCard, 128, "SD Card"),
    Value(EnumValues.battery, 256, "Battery"),
  },
);
