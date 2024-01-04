import 'package:beseech/main.dart';

extension NavigationExtensions on BuildContext {
  Future<T?> push<T extends Object?>(Widget page) => Navigator.of(this).push(
        MaterialPageRoute(
          builder: (_) => page,
        ),
      );
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);
  Future<T?> dialog<T>(Dialog dialogUI) {
    return showDialog(
      context: this,
      builder: (_) => dialogUI,
    );
  }
}
