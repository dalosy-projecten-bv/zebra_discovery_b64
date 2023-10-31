class Value<T extends Enum> {
  Value(this.id, this.bitfieldValue, this.enumAsString);

  final T id;
  final int bitfieldValue;
  final String enumAsString;
}
