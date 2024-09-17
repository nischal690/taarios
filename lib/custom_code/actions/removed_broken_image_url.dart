// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

/// A function that filters out non-image or broken URLs from the given list.
Future<List<String>> removedBrokenImageUrl(List<String> listofimages) async {
  List<String> validUrls = [];

  // Iterate through the list of image URLs
  for (String url in listofimages) {
    try {
      // Send a HEAD request to the URL to check its headers
      final response = await http.head(Uri.parse(url));

      // If the status code is 200 and the Content-Type is an image
      if (response.statusCode == 200) {
        final contentType = response.headers['content-type'];

        // Check if the content type is one of the image formats
        if (contentType != null && contentType.startsWith('image/')) {
          validUrls.add(url); // Add valid image URLs to the list
        } else {
          print('URL is not an image: $url');
        }
      } else {
        print('Invalid response for URL: $url');
      }
    } catch (e) {
      // Log or handle any exceptions that occur
      print('Error validating URL: $url, Error: $e');
    }
  }

  // Return the list of valid image URLs
  return validUrls;
}
