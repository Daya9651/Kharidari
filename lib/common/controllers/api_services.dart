// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
//
// import '../../const/api_url.dart';
//
// class ApiService extends GetxService {
//   Future<Response> get(String endpoint,
//       {Map<String, String>? queryParams,bool token= true}) async {
//     try {
//       debugPrint('Get Request to: $endpoint');
//       debugPrint('Request Data: $queryParams');
//       final response = await http.get(
//         Uri.parse(_buildUrl(endpoint, queryParams ?? {})),
//         headers: {
//           'Authorization':token? '${await UserDataService.getAuthToken()}':'Token ${await UserDataService.getAuthToken()}',
//           'Content-Type': 'application/json'
//         },
//       );
//       debugPrint('Response Status Code: ${response.statusCode}');
//       debugPrint('Response Body: ${response.body}');
//       return Response(
//         status: response.statusCode,
//         body: json.decode(response.body),
//       );
//     } catch (e) {
//       debugPrint('Exception occurred: $e');
//       return Response(status: 500, body: {'error': '$e'});
//     }
//   }
//
//   Future<Response> post(String endpoint, dynamic data, {bool token = true}) async {
//     try {
//       // Print the request data before sending
//       debugPrint('POST Request to: $endpoint');
//       debugPrint('Request Data: $data');
//       final response = await http.post(
//         Uri.parse(_buildUrl(endpoint)),
//         headers: {
//   'Authorization':token? '${await UserDataService.getAuthToken()}':'Token ${await UserDataService.getAuthToken()}',
//           'Content-Type': 'application/json'
//         },
//         body: json.encode(data),
//       );
//       // Print the response data after receiving
//       debugPrint('Response Status Code: ${response.statusCode}');
//       debugPrint('Response Body: ${response.body}');
//
//       return Response(
//         status: response.statusCode,
//         body: json.decode(response.body),
//       );
//     } catch (e) {
//       return Response(status: 500, body: {'error': '$e'});
//     }
//   }
//
//   Future<Response> postImage(String endpoint, String imagePath,
//       {Map<String, dynamic>? data,bool token = true}) async {
//     try {
//       debugPrint('POST Request to: $endpoint');
//       debugPrint('Request Data: $data');
//       var request =
//           http.MultipartRequest('POST', Uri.parse(_buildUrl(endpoint)));
//
//       // Add image file
//       var imageFile = await http.MultipartFile.fromPath('image', imagePath);
//       request.files.add(imageFile);
//
//       // Convert dynamic data to Map<String, String>
//       Map<String, String> stringData = {};
//       if (data != null) {
//         data.forEach((key, value) {
//           stringData[key] = value.toString();
//         });
//         request.fields.addAll(stringData);
//       }
//
//       // Add headers
//       request.headers['Authorization'] =
//       token? '${await UserDataService.getAuthToken()}':'Token ${await UserDataService.getAuthToken()}';
//           // (await UserDataService.getAuthToken()) ?? "";
//       request.headers['Content-Type'] = 'multipart/form-data';
//
//       // Send the request
//       var response = await request.send();
//
//       // Get response body
//       String responseBody = await response.stream.bytesToString();
//       debugPrint('Response Status Code: ${response.statusCode}');
//       debugPrint('Response Body: $responseBody');
//
//       return Response(
//         status: response.statusCode,
//         body: json.decode(responseBody),
//       );
//     } catch (e) {
//       return Response(status: 500, body: {'error': '$e'});
//     }
//   }
//
//   String _buildUrl(String endpoint, [Map<String, String>? queryParams]) {
//     String url = '$baseUrl/$endpoint';
//     if (queryParams != null) {
//       url += '?${Uri(queryParameters: queryParams).query}';
//     }
//     return url;
//   }
// }
//
// class Response {
//   final int status;
//   final dynamic body;
//
//   Response({required this.status, this.body});
// }
