import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _homeFamily = 'Home';
  static const String _chatFamily = 'Chat';
  static const String _groupWorkFamily = 'GroupWork';
  static const String _savedFamily = 'Saved';
  static const String _notificationFamily = 'Notification';
  static const String _profileFamily = 'Profile';
  static const String _commentAndShareFamily = 'CommentAndShare';

  // Home
  static const IconData khome21 = IconData(0xe900, fontFamily: _homeFamily);

  // Chat
  static const IconData kcommentAdd1 =
      IconData(0xe900, fontFamily: _chatFamily);

  // group-work
  static const IconData kgroupWork11 =
      IconData(0xe900, fontFamily: _groupWorkFamily);

  // saved
  static const IconData ksavedItems1 =
      IconData(0xe900, fontFamily: _savedFamily);

  // notification
  static const IconData kbell11 =
      IconData(0xe900, fontFamily: _notificationFamily);

  // profile
  static const IconData kframe1 = IconData(0xe900, fontFamily: _profileFamily);

  // Comment-and-Share
  static const IconData kshareNetwork51 =
      IconData(0xe900, fontFamily: _commentAndShareFamily);
  static const IconData kcomments51 =
      IconData(0xe901, fontFamily: _commentAndShareFamily);
}
