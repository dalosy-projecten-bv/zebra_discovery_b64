import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum PrinterInterface {
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
  defaultEnum: PrinterInterface.unknown,
  values: [
    EnumData(PrinterInterface.unknown, 0, "Unknown"),
    EnumData(PrinterInterface.internalWired, 1, "Internal Wired"),
    EnumData(PrinterInterface.externalWired, 2, "External Wired"),
    EnumData(PrinterInterface.wireless, 4, "Wireless"),
    EnumData(PrinterInterface.bluetooth, 8, "Bluetooth"),
    EnumData(PrinterInterface.parallel, 16, "Parallel"),
    EnumData(PrinterInterface.serial, 32, "Serial"),
    EnumData(PrinterInterface.usb, 64, "USB"),
    EnumData(PrinterInterface.sdCard, 128, "SD Card"),
    EnumData(PrinterInterface.battery, 256, "Battery"),
  ],
);
