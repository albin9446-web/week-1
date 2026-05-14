import 'dart:async';

// Async function
Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 3));

  // Simulated error
  throw Exception("Connection Timeout");

  // Simulated success response
  // return "User data fetched successfully";
}

void main() async {
  print("Fetching data from mock database...\n");

  try {
    String result = await fetchUserData();
    print(result);
  } catch (e) {
    print("Error: $e");
  } finally {
    print("\nProcess completed.");
  }
}