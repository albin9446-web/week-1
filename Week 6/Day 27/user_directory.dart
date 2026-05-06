void main() {
  // Example 1: User with phone number
  Map<String, dynamic>? user1 = {
    'name': 'Albin',
    'phone': '9876543210'
  };

  // Example 2: User without phone number
  Map<String, dynamic>? user2 = {
    'name': 'John'
  };

  // Example 3: Null user
  Map<String, dynamic>? user3 = null;

  print(getPhoneNumber(user1)); // Should print number
  print(getPhoneNumber(user2)); // Should print default
  print(getPhoneNumber(user3)); // Should print default
}

// Function using null safety
String getPhoneNumber(Map<String, dynamic>? user) {
  return user?['phone'] ?? 'No Number Provided';
}