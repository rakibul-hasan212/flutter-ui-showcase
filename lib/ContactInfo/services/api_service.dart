import 'dart:convert';

import 'package:counting/ContactInfo/model/userinfo_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<UserInfoModel>> fetchData()async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");//convert to URI

    final response = await http.get(url);//get the Response data

    final List data = jsonDecode(response.body);//convert Json to List

    if(response.statusCode ==200){//check the validity
      //convert the list data to Object
      return data.map((e) => UserInfoModel.fromJson(e)).toList();
    }
    else{
      throw Exception("Failed to fetch data");
    }
  }
}