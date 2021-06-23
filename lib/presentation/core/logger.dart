import 'package:logger/logger.dart';

final log = Logger(printer: AppLogPrinter('ROOT'));

Logger getLogger(String className) => Logger(printer: AppLogPrinter(className));

class AppLogPrinter extends LogPrinter {
  final String className;

  AppLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level] /*AnsiColor.fg(220)*/;
    final emoji = PrettyPrinter.levelEmojis[event.level];
    print(color!('$emoji $className - ${event.message}\n'));
    return [];
  }
}
