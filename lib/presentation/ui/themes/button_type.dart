class ButtonPropType<T> {
  ButtonPropType({
    required this.primary,
    required this.secondary,
    required this.outlined,
    required this.error,
  });

  final T primary;
  final T secondary;
  final T outlined;
  final T error;
}
