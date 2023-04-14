import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
import 'package:travel_zone/widgets/previews.dart';

import '../../../widgets/text.dart';

class SpurVillageExcursion extends StatefulWidget {
  const SpurVillageExcursion({super.key});

  @override
  State<SpurVillageExcursion> createState() => _SpurVillageExcursionState();
}

class _SpurVillageExcursionState extends State<SpurVillageExcursion> {
  late AudioPlayer _audioPlayer;

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) =>
            PositionData(position, bufferedPosition, duration ?? Duration.zero),
      );

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset('assets/audio/black_spur/spur.mp3');
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: mainText('с.Черный Отрог', Colors.black),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[
                    Color(0xFFa9ca91),
                    Color(0xFF80d0ea),
                  ]),
            ),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: mainText(
                  'Изображения: ',
                  Colors.black,
                ),
              ),
              LimitedBox(
                maxHeight: 200,
                maxWidth: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      imagesContainer(Image.asset(
                        'assets/images/black_spur/church.jpg',
                        fit: BoxFit.cover,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      imagesContainer(Image.asset(
                        'assets/images/black_spur/rzd.jpeg',
                        fit: BoxFit.cover,
                      )),
                    ],
                  ),
                ),
              ),
              LimitedBox(
                  maxHeight: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StreamBuilder<PositionData>(
                          stream: _positionDataStream,
                          builder: (context, snapshot) {
                            final positionData = snapshot.data;
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: ProgressBar(
                                barHeight: 8,
                                baseBarColor: Colors.grey,
                                bufferedBarColor: Colors.black.withOpacity(0.3),
                                progressBarColor: Colors.green,
                                thumbColor: Colors.green,
                                timeLabelTextStyle:
                                    GoogleFonts.lato(color: Colors.black),
                                progress:
                                    positionData?.position ?? Duration.zero,
                                buffered: positionData?.bufferedPosition ??
                                    Duration.zero,
                                total: positionData?.duration ?? Duration.zero,
                                onSeek: _audioPlayer.seek,
                              ),
                            );
                          }),
                      Controls(audioPlayer: _audioPlayer),
                    ],
                  )),
            ],
          ),
        ));
  }
}

class PositionData {
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration,
  );
  final Duration? position;
  final Duration? bufferedPosition;
  final Duration? duration;
}

class Controls extends StatelessWidget {
  const Controls({super.key, required this.audioPlayer});
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        AudioSource.uri(
          Uri.parse('assets/audio/black_spur/spur.mp3'),
          tag: MediaItem(
            // Specify a unique ID for each media item:
            id: '1',
            // Metadata to display in the notification:
            album: "Село Черный Отрог",
            title: "Станция Чёрный Отрог",
            artUri: Uri.parse('assets/images/black_spur/church.jpg'),
          ),
        );
        if (!(playing ?? false)) {
          return IconButton(
            onPressed: audioPlayer.play,
            icon: const Icon(Icons.play_arrow_rounded, color: Colors.green),
            iconSize: 50,
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            onPressed: audioPlayer.pause,
            icon: const Icon(Icons.pause_rounded, color: Colors.green),
            iconSize: 50,
          );
        }
        return const Icon(
          Icons.play_arrow_rounded,
          color: Colors.green,
          size: 50,
        );
      },
    );
  }
}
