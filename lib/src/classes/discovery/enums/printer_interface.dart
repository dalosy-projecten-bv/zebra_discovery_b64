import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'printer_interface.g.dart';

@JsonEnum(alwaysCreate: true)
enum PrinterInterface implements Serializable {
  unknown(0, "Unknown"),
  internalWired(1, "Internal Wired"),
  externalWired(2, "External Wired"),
  wireless(4, "Wireless"),
  bluetooth(8, "Bluetooth"),
  parallel(16, "Parallel"),
  serial(32, "Serial"),
  usb(64, "USB"),
  sdCard(128, "SD Card"),
  battery(256, "Battery");

  const PrinterInterface(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$PrinterInterfaceEnumMap[this]!;
}

final printerInterfaceEnum = EnumBase(
  defaultEnum: PrinterInterface.unknown,
  values: PrinterInterface.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
