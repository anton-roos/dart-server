import 'dart:async';
import 'dart:io';

Future main() async {
  HttpServer server = await HttpServer.bind('127.0.0.1', 8080);
  print('Listening on Localhost:${server.port}');

  server.listen((HttpRequest req) {
    req.response
      ..write('AWE')
      ..close();
  });
}
