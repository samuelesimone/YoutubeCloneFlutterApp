import 'package:flutter/material.dart';
import 'package:flutter_first_app/video_list.dart';
import 'package:flutter_first_app/models/youtube_model.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return VideoList(
      listData: youtubeData,
    );
  }
}