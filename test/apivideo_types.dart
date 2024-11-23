import 'package:apivideo_player/apivideo_player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Assert no inference when type is explicit', () {
    final videoOptions =
        VideoOptions(videoId: "vi2vOdp6N7CzRKFhWm39B1gP", type: VideoType.live);
    expect(videoOptions.videoId, "vi2vOdp6N7CzRKFhWm39B1gP");
    expect(videoOptions.type, VideoType.live);
    expect(videoOptions.token, null);
  });

  test('Assert inferred type for vod', () {
    final videoOptions = VideoOptions(videoId: "vi2vOdp6N7CzRKFhWm39B1gP");
    expect(videoOptions.videoId, "vi2vOdp6N7CzRKFhWm39B1gP");
    expect(videoOptions.type, VideoType.vod);
    expect(videoOptions.token, null);
  });

  test('Assert inferred type for live', () {
    final videoOptions = VideoOptions(videoId: "vi2vOdp6N7CzRKFhWm39B1gP");
    expect(videoOptions.videoId, "vi2vOdp6N7CzRKFhWm39B1gP");
    expect(videoOptions.type, VideoType.live);
    expect(videoOptions.token, null);
  });
}
