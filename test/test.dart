// github: https://github.com/sintrb/dart-airkiss

import 'package:airkiss_dart/airkiss_dart.dart';

void test(String ssid, String pwd) async {
  print('config ssid:$ssid, pwd:$pwd');
  print('make sure your device is close to the router..');
  AirkissOption option = AirkissOption();
  option.reuse_port = false;
  option.reuse_address = false;
  AirkissConfig ac = AirkissConfig(option: option);
  var res = await ac.config(ssid, pwd);
  print('result: $res');
}

void main() {
  // test("呵呵 你连不上", "r1592518");
  test("NOT-CMCC", "qwe123!@#");
// test("IRCN", "qwe123!@#");
  // test("IR-TEST", "ir123456");
//    test("CMCC-urZZ", "yc4b5czz");
// test("201", "zhencheng15125653266");
}
