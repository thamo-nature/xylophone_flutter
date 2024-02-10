# xylophone_flutter
Flutter Musical notes app

<h5>TextButton</h5>
<pre>

  void playSound(int noteNo) {
    final player = AudioPlayer();
    player.play(AssetSource('../note$noteNo.wav'));
  }

      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            fixedSize: const Size(double.infinity, 30.0),
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('../note2.wav'));
          },
          child: const Text('Note 2'),
        ),
      ),
</pre>

<h5>Repeated Code blocks of Expanded Widget to function</h5>
<pre>

1 ==>
  buildMusicBoard(color, int noteValue) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(double.infinity, 30.0),
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteValue);
        },
        child: Text('Note $noteValue'),
      ),
    );
  }

  buildMusicBoard(Colors.black, 1),

2 ==>
 buildMusicBoard( { Color color = Colors.red, int noteValue = 1 } ) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(double.infinity, 30.0),
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteValue);
        },
        child: Text('Note $noteValue'),
      ),
    );
  }

    buildMusicBoard(color: Colors.black, noteValue: 1),

</pre>