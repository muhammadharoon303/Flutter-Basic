import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'workout_view_model.dart';

class WorkoutDetailedPage extends StatelessWidget {

  final String videoUrl;


  const WorkoutDetailedPage({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => WorkoutViewModel()..initializeYoutubeVideo(videoUrl),
      child: Consumer<WorkoutViewModel>(
        builder: (context, model, child) {
          return Scaffold(

            appBar: AppBar(
              title: const Text("Workout Video"),
            ),
            body: Column(
              children: [

                Container(

                  width: double.infinity,
                  height: 210,
                  child: model.controller != null
                      ? YoutubePlayer(
                    controller: model.controller!,
                    showVideoProgressIndicator: true,
                  )
                      : const CircularProgressIndicator(),
                ),
                Row(
                  children: [
                    const Icon(Icons.watch_later_outlined),
                    const SizedBox(width: 6),

                  ],
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}