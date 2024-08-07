import 'package:panzer_maid/maid_shell/shell.dart';
import 'package:panzer_maid/maid_shell/tinybox.dart';
import 'package:panzer_maid/maid_shell/utils.dart';

class MaidShell {
  static const List<String> emptyTerminalArgs = [];
  List<String> terminalArgs = [];
  String command = '';

  MaidShell({this.terminalArgs = emptyTerminalArgs, this.command = ""});

  Future<int> exec() async {
    if (terminalArgs.isEmpty) return stdint('fail');
    return panzerMaidShell(this.terminalArgs);
  }

  Future<int> flawless() async {
    return flawlessExec(command);
  }

  Future<int> tinybox() async {
    if (terminalArgs.isEmpty) return stdint('fail');
    return tinyBox(this.terminalArgs, this.terminalArgs[0]);
  }
}
