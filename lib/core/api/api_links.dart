class ApiLinks {
  static Map<String, String> header = {
    "Accept": "application/json",
  };
  static Map<String, String> authorizedHeaders = {
    'Content-Type': 'application/json',
    // 'Authorization': "Bearer ${AppServices.token}",
  };

  static const serverLink = 'https://www.hotelsgo.co';

  static const hotelLink = '$serverLink/test/hotels';
}
