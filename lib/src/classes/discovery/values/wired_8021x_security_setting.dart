import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/wired_8021x_security_setting_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class Wired8021xSecuritySetting extends ValueBase<EnumData<EnumValues>> {
  Wired8021xSecuritySetting(super.byteArray, super.value);

  factory Wired8021xSecuritySetting.fromByteArray(Uint8List byteArray) {
    return Wired8021xSecuritySetting(
      byteArray,
      wired8021xSecuritySettingEnum.fromByteArray(byteArray),
    );
  }
}
