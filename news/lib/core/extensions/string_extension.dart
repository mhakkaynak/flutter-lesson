extension StringExtension on String {
  bool get isValidEmail {
    if (isEmpty) return false;
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }
}
