
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../core/view_model/view_model.dart';

class WorkoutViewModel extends BaseViewModel {

  YoutubePlayerController? controller;

  void initializeYoutubeVideo(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);

    if (videoId == null) return;

    controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    notifyListeners();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}




class VideoModel {
  final String title ;
  final String thumbnail;
  final String  duration;
  final String category ;
  final String description ;
  final String videoUrl;

  VideoModel({
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.category,
    required this.description,
    required this.videoUrl,

  });
}
final List<VideoModel> videoList = [
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "assets/static_assets/workout1.png",
    duration: "05:30 am",
    category: "bodyweight",
    description: "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",

  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "assets/static_assets/workout2.png",
    duration: "05:30 am",
    category: "bodyweight",
    description: "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",

  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "assets/static_assets/workout3.png",
    duration: "05:30 am",
    category: "bodyweight",
    description: "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",

  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "assets/static_assets/workout4.png",
    duration: "05:30 am",
    category: "bodyweight",
    description: "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",

  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "assets/static_assets/workout5.png",
    duration: "05:30 am",
    category: "bodyweight",
    description: "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",

  ),

];


// import 'package:first/core/view_model/view_model.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';
//
// class WorkoutViewModel extends BaseViewModel {
//   late FlickManager flickManager;
//
//   WorkoutViewModel() {
//     flickManager = FlickManager(
//       // ignore: deprecated_member_use
//       videoPlayerController: VideoPlayerController.networkUrl(
//         Uri.parse(
//           'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }
// }


