class EnumData<T extends Enum> {
  EnumData(
    this.enumeration,
    this.bitfieldValue,
    this.enumAsString,
  );

  final T enumeration;
  final int bitfieldValue;
  final String enumAsString;
}
