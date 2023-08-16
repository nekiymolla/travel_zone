import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView(
      {super.key, required this.url, required this.dataSourceType});
  final String url;
  final DataSourceType dataSourceType;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    switch (widget.dataSourceType) {
      case DataSourceType.network:
        _videoPlayerController =
            VideoPlayerController.networkUrl(widget.url as Uri);
        break;
      case DataSourceType.asset:
        // TODO: Handle this case.
        break;
      case DataSourceType.file:
        // TODO: Handle this case.
        break;
      case DataSourceType.contentUri:
        // TODO: Handle this case.
        break;
    }
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController, aspectRatio: 16 / 9);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        VideoPlayerView(
            url: 'rtsp://95.183.24.19:1554/',
            dataSourceType: DataSourceType.network)
      ],
    );
  }
}
