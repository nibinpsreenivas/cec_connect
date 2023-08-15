import 'package:http/http.dart' as http;

Future<void> getnumber({required String num}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  print(_response.body);
}

