// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:quiver/core.dart'; // Keep this import for the hash function

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    super.key,
    this.width,
    this.height,
    required this.userId,
    required this.name,
    required this.color, // Font color
    required this.fontsize,
  });

  final double? width;
  final double? height;
  final String userId;
  final String name;
  final Color color; // Font color
  final int fontsize;

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    // Define a list of colors for the container
    final colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
    ];

    // Get the color for the container based on the userId
    final containerColor = UserColorUtil.getUserColor(widget.userId, colors);

    // Extract the first letter of the name
    final firstLetter =
        widget.name.isNotEmpty ? widget.name[0].toUpperCase() : '';

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: containerColor, // Container color
        shape: BoxShape.circle, // Makes the container circular
      ),
      child: Center(
        child: Text(
          firstLetter,
          style: TextStyle(
            color: widget.color, // Font color
            fontSize: widget.fontsize.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Utility class for getting user-specific colors
class UserColorUtil {
  static Color getUserColor(String userId, List<Color> colors) {
    // Remove hyphens from the userId
    final cleanId = userId.replaceAll('-', '');

    // Use Quiver's hash function to convert the entire string to a number
    final hash = hashObjects(cleanId.codeUnits);

    // Use the hash to get an index within the range of the colors list
    final index = hash.abs() % colors.length;

    // Return the color at the calculated index
    return colors[index];
  }
}
