// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data'; // Add this for Uint8List
import 'dart:io'; // Add this for File handling
import 'package:http/http.dart' as http; // Add this for HTTP requests
import 'package:flutter_image_compress/flutter_image_compress.dart'; // Add this for image compression
import 'package:path_provider/path_provider.dart'; // Add this for getting temporary directory

Future<List<String>> imagesQualityHandler(List<String> imageUrls) async {
  List<String> compressedImagePaths = [];

  for (String imageUrl in imageUrls) {
    try {
      // Download the image from the URL
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        // Convert the response body to Uint8List
        Uint8List imageData = response.bodyBytes;

        // Get the temporary directory for storing compressed images
        final tempDir = await getTemporaryDirectory();
        final filePath =
            '${tempDir.path}/compressed_${DateTime.now().millisecondsSinceEpoch}.jpg';

        // Compress the image
        var result = await FlutterImageCompress.compressAndGetFile(
          filePath,
          filePath,
          quality: 50, // Set the quality to 50%
        );

        if (result != null) {
          compressedImagePaths.add(result.path);
        }
      }
    } catch (e) {
      print('Error compressing image from URL $imageUrl: $e');
    }
  }

  return compressedImagePaths;
}
