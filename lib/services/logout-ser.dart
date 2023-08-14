import 'package:http/http.dart' as http;
import '../../../main.dart';
import '../localrepo.dart';
import '../locator.dart';


Future<void> logoutUser() async {
  var token = locator.get<LocalRepo>().token;
  final url = Uri.parse(Endpoints.logout);
  try {
    final response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token '
      },
    );

    if (response.statusCode == 200) {
      // Logout successful
      print('User logged out successfully');
    } else {
      // Logout failed
      print('Failed to logout. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Error occurred during logout
    print('Error occurred during logout: $e');
  }
}
