import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<String> convertstringtoimagepath(List<String> string) {
  // return list of string as it is
  return string;
}

DateTime stringtodatetime(String? datetime) {
  // convert string to date time
  return DateTime.parse(datetime!);
}

double? fetchlatitute(LatLng currentlocation) {
  // from currentlocation just return latitude
  return currentlocation.latitude;
}

double fetchlongitude(LatLng currentlocation) {
  // return longitude from current location
  return currentlocation.longitude;
}

int countCharacter(String description) {
  // count the number of character in the string
  return description.length;
}

bool returnnulllatlang(LatLng? currentlocation) {
  // checkout if current latlang is equal to LatLng(0.0, 0.0);
  if (currentlocation == null) {
    return true;
  }
  return currentlocation.latitude == 0.0 && currentlocation.longitude == 0.0;
}

List<String> checkifimageisempty(List<String>? imagelist) {
  // check if image list is empty then add https://dummyimage.com/300.png/09f/fff and return
  if (imagelist == null || imagelist.isEmpty) {
    return ['https://dummyimage.com/300.png/09f/fff'];
  } else {
    return imagelist;
  }
}
