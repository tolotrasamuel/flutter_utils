import 'package:flutter_utils/log_trace.dart';

void main() {
  mainTraced(() {
    _main();
  });
}

void _main() {
  print("Hello World");
}
