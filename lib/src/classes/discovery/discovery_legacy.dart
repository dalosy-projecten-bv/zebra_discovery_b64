import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/bool_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryLegacy extends Discovery {
  DiscoveryLegacy(super.byteArray)
      : productNumber = StringValue(byteArray.get(4, 8)),
        productName = StringValue(byteArray.get(12, 20)),
        dateCode = StringValue(byteArray.get(32, 7)),
        fwVersion = StringValue(byteArray.get(39, 10)),
        companyAbbreviation = StringValue(byteArray.get(49, 5)),
        hwAddress = HexValue(byteArray.get(54, 6)),
        serialNum = StringValue(byteArray.get(60, 10)),
        usingNetProtocol = BoolValue(byteArray.get(70, 2)),
        ipAddress = AddressValue(byteArray.get(72, 4)),
        subnetMask = AddressValue(byteArray.get(76, 4)),
        defaultGateway = AddressValue(byteArray.get(80, 4)),
        systemName = StringValue(byteArray.get(84, 25)),
        notUsed2 = NotUsedValue(byteArray.get(109, 103)),
        getCommunityName = HexValue(byteArray.get(212, 32)),
        setCommunityName = HexValue(byteArray.get(244, 32)),
        notUsed3 = NotUsedValue(byteArray.get(276, 82)),
        portStatus = EnumValue(byteArray.get(358, 1), printerPortStatusEnum),
        portName = StringValue(byteArray.get(359, 16));

  final StringValue productNumber;
  final StringValue productName;
  final StringValue dateCode;
  final StringValue fwVersion;
  final StringValue companyAbbreviation;
  final HexValue hwAddress;
  final StringValue serialNum;
  final BoolValue usingNetProtocol;
  final AddressValue ipAddress;
  final AddressValue subnetMask;
  final AddressValue defaultGateway;
  final StringValue systemName;
  final NotUsedValue notUsed2;
  final HexValue getCommunityName;
  final HexValue setCommunityName;
  final NotUsedValue notUsed3;
  final EnumValue<PrinterPortStatus> portStatus;
  final StringValue portName;

  @override
  void initMap() {
    super.initMap();
    map.addEntries({
      MapEntry(
          'PORT_NUMBER',
          productName.value.startsWith('QL') ||
                  productName.value.startsWith('RW') ||
                  productName.value.startsWith('MZ') ||
                  productName.value.startsWith('P4T') ||
                  productName.value.startsWith('MQ') ||
                  productName.value.startsWith('MU')
              ? '6101'
              : '9100'),
      MapEntry('DNS_NAME', systemName.value),
      MapEntry('ADDRESS', ipAddress.value),
      MapEntry('COMPANY_ABBREVIATION', companyAbbreviation.value),
      MapEntry('COMPANY_ABBREVIATION', companyAbbreviation.value),
      MapEntry('PRODUCT_NUMBER', productNumber.value),
      MapEntry('PRODUCT_NAME', productName.value),
      MapEntry('DATE_CODE', dateCode.value),
      MapEntry('FIRMWARE_VER', fwVersion.value),
      MapEntry('HARDWARE_ADDRESS', hwAddress.value),
      MapEntry('SERIAL_NUMBER', serialNum.value),
      MapEntry('USING_NET_PROTOCOL', usingNetProtocol.value.toString()),
      MapEntry('SUBNET_MASK', subnetMask.value),
      MapEntry('GATEWAY', defaultGateway.value),
      MapEntry('SYSTEM_NAME', systemName.value),
      MapEntry('PORT_NAME', portName.value),
      MapEntry('PORT_STATUS', portStatus.value.enumAsString),
      MapEntry('ENCRYPTED_GET_COMMUNITY_NAME', getCommunityName.value),
      MapEntry('ENCRYPTED_SET_COMMUNITY_NAME', setCommunityName.value),
    });
  }
}
