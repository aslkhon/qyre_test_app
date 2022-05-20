import 'package:flutter/material.dart';

extension StyleFromContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
}
