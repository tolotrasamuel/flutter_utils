import 'dart:async';

String get logTrace =>
    '[EVENT] ${StackTrace.current.toString().split("\n").toList()[5].split("      ").last}';

Future<T> mainTraced<T>(T Function() callback) {
  return runZoned(() async {
    return callback();
  }, zoneSpecification: ZoneSpecification(
    print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
      parent.print(zone, '$logTrace $line');
    },
  ));
}
