import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/zbi_state_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ZbiState extends ValueBase<ZbiStateEnum> {
  ZbiState(super.byteArray, super.value);

  factory ZbiState.fromByteArray(Uint8List byteArray) {
    return ZbiState(
      byteArray,
      ZbiStateEnum.fromByteArray(byteArray),
    );
  }
}
