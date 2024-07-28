// sealedは直和型を作るためのclass 特定の型の集合を定義
sealed class AppState {
  const AppState();
}

class Input extends AppState {
  const Input() : super();
}

class Loading extends AppState {
  const Loading() : super();
}

class Data extends AppState {
  const Data(this.sentence);

  final String sentence;
}
