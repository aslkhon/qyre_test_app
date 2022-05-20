import 'app/app.dart';
import 'bootstrap.dart';
import 'injection.dart';

void main() {
  configureDependencies();
  bootstrap(() => const App());
}
