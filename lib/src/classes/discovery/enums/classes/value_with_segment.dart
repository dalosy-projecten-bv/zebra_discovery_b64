import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';

class ValueWithSegment<T extends Enum> extends Value<T> {
  ValueWithSegment(
    super.id,
    this.segment,
    super.bitfieldValue,
    super.enumAsString,
  );

  final int segment;
}
