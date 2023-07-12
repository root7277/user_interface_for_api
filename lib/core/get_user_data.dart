import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_interface_for_api/modul/user_model.dart';

Future<UserModel> getUserData() async {
  Uri url = Uri.parse('https://randomuser.me/api/');

  http.Response response = await http.get(url);

  Map data = jsonDecode(response.body);

  return UserModel(
    image: data['results'][0]['picture']['medium'], 
    name: data['results'][0]['name']['first'] + ' ' +  data['results'][0]['name']['last'], 
    username: data['results'][0]['login']['username'], 
    contact: data['results'][0]['phone'], 
    email: data['results'][0]['email'],
  );
}
