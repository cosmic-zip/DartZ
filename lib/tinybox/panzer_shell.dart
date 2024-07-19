import 'package:panzer_maid/tinybox/panzer_manual.dart';
import 'package:panzer_maid/tinybox/panzer_tui.dart';
import 'package:panzer_maid/tinybox/panzer_utils.dart';

Future<int> panzerMaidShell(List<String> terminalArgs) async {
  if (terminalArgs.isEmpty) return 255;
  var option = terminalArgs[0];
  switch (option) {
    case '--help' || '-h':
      userManual(terminalArgs);
      return 0;
    case '--welcome' || '-w':
      panzerMaidWelcome();
      return 0;
    case '--raw':
      raw(terminalArgs);
      return 0;
    default:
      return await panzerRunner(terminalArgs);
  }
}
