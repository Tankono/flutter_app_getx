import 'package:http/http.dart' as http;
import 'dart:convert';

class RestApiTodo {
  static Future<List> fetchTodo() async {
    const url = 'https://api.nstack.in/v1/todos?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map;
      final result = json['items'] as List;
      print(json.toString());
      return result;
      // return [];
    } else {
      //error
    }
    return [];
  }

  Future<void> deleteById(String id) async {
    final url = 'https://api.nstack.in/v1/todos/$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);

    if (response.statusCode == 200) {
      //remove the item
      // final filtered = items.where((element) => element['_id'] != id).toList();
      // setState(() {
      //   items = filtered;
      // });
      // showSuccessMessage('Deleted Successfully');
    } else {
      //Show error
      // showErrorMessage('Unable to Delete');
    }
  }
}
