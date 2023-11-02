class SegmentedEnumData<T extends Enum> {
  SegmentedEnumData(
    this.enumeration,
    this.segment,
    this.bitfieldValue,
    this.enumAsString,
  );

  final T enumeration;
  final int segment;
  final int bitfieldValue;
  final String enumAsString;
}
