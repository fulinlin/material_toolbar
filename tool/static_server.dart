import 'dart:io';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_static/angel_static.dart';

main() async {
  var app = new Angel();
  await app.configure(new VirtualDirectory(
      source: new Directory.fromUri(Platform.script.resolve('../build/web'))));
  app.after.add(() => throw new AngelHttpException.notFound());

  var server = await app.startServer(InternetAddress.ANY_IP_V4, 80);
  print('Listening at http://${server.address.address}:${server.port}');
}
