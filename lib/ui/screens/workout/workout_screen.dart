import 'package:first/ui/screens/workout/workout_view_model.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => WorkoutViewModel(),

      child: Consumer<WorkoutViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text('Workout Screen'),
              FlickVideoPlayer(flickManager: model.flickManager),
            ],
          ),
        ),
      ),
    );
  }
}
