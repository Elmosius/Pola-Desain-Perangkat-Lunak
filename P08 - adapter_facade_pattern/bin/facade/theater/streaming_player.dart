import 'amplifier.dart';

class StreamingPlayer {
  final String description;
  final Amplifier amplifier;
  int? currentChapter;
  String? movie;

  StreamingPlayer({required this.description, required this.amplifier});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void playMovie(String movie) {
    this.movie = movie;
    currentChapter = 0;
    print("$description playing \"$movie\"");
  }

  void playChapter(int chapter) {
    if (movie == null) {
      print("$description can't play chapter $chapter no movie selected");
    } else {
      currentChapter = chapter;
      print("$description playing chapter $currentChapter of \"$movie\"");
    }
  }

   void stop() {
		currentChapter = 0;
		print("$description stopped \"movie\"");
	}
 
	 void pause() {
		print("$description paused \"movie \"");
	}

	 void setTwoChannelAudio() {
		print("$description set two channel audio");
	}
 
	 void setSurroundAudio() {
		print("$description set surround audio");
	}
 

  String toSring() {
    return description;
  }
}
