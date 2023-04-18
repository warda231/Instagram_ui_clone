import 'package:flutter/material.dart';

import '../screen/ADDpost_screen.dart';
import '../screen/account.dart';
import '../screen/feed_page.dart';
import '../screen/notify.dart';
import '../screen/search.dart';

const WebScreenSize = 600;

const homeScreenItems = [
  FeedPage(),
  SearchPage(),
  AddPostScreen(),
  Notify(),
  Account(),
];
