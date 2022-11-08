import 'package:intl/intl.dart';

String getAbbreviationName(String name) =>
    name.isNotEmpty ? name.trim().split(' ').map((l) => l[0]).take(2).join().toUpperCase() : '';

String getAppendStringWithComma(List<String?>? stringList) {
  String str = "";
  stringList?.forEach((e) {
    str += e ?? "";
    str += ", ";
  });
  if (str.length >= 2)
    return str.substring(0, str.length - 2);
  else
    return "";
}
