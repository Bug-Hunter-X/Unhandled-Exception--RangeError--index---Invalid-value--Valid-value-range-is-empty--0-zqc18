```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? data = jsonDecode(response.body);
      //Check if data is not null and is not empty
      if(data != null && data.isNotEmpty){
        final firstElement = data[0];
        print(firstElement);
      } else {
        print('Data is empty or null');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```