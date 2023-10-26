class ZebraLegacy {
//Legacy positions and offset
  final int discoveryVersionOffset = 3;
  final int productNumberOffset = 4;
  final int productNumberSize = 8;
  final int productNameOffset = 12;
  final int productNameSize = 20;
  final int dateCodeOffset = 32;
  final int dateCodeSize = 7;
  final int fwVersionOffset = 39;
  final int fwVersionSize = 10;
  final int companyAbbreviationOffset = 49;
  final int companyAbbreviationSize = 5;
  final int hwAddressOffset = 54;
  final int hwAddressSize = 6;
  final int serialNumOffset = 60;
  final int serialNumSize = 10;
  final int usingNetProtocolOffset = 70;
  final int usingNetProtocolSize = 2;
  final int ipAddressOffset = 72;
  final int ipAddressSize = 4;
  final int subnetMaskOffset = 76;
  final int subnetMaskSize = 4;
  final int defaultGatewayOffset = 80;
  final int defaultGatewaySize = 4;
  final int systemNameOffset = 84;
  final int systemNameSize = 25;
  final int getCommunityNameOffset = 212;
  final int getCommunityNameSize = 32;
  final int setCommunityNameOffset = 244;
  final int setCommunityNameSize = 32;
  final int portStatusOffset = 358;
  final int portStatusSize = 1;
  final int portNameOffset = 359;
  final int portNameSize = 16;
  final int minPacketSize = 375;

//Legacy map
  final String portNumber = "PORT_NUMBER";
  final String dnsName = "DNS_NAME";
  final String address = "ADDRESS";
  final String companyAbbreviation = "COMPANY_ABBREVIATION";
  final String discoveryVer = "DISCOVERY_VER";
  final String productNumber = "PRODUCT_NUMBER";
  final String productName = "PRODUCT_NAME";
  final String dateCode = "DATE_CODE";
  final String firmwareVer = "FIRMWARE_VER";
  final String hardwareAddress = "HARDWARE_ADDRESS";
  final String serialNumber = "SERIAL_NUMBER";
  final String usingNetProtocol = "USING_NET_PROTOCOL";
  final String subnetMask = "SUBNET_MASK";
  final String gateway = "GATEWAY";
  final String systemName = "SYSTEM_NAME";
  final String portName = "PORT_NAME";
  final String portStatus = "PORT_STATUS";
  final String encryptedGetCommunityName = "ENCRYPTED_GET_COMMUNITY_NAME";
  final String encryptedSetCommunityName = "ENCRYPTED_SET_COMMUNITY_NAME";
}
