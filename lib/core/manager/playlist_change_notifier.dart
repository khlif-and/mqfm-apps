import 'package:flutter/foundation.dart';

class PlaylistChangeNotifier {
  static final ValueNotifier<int> changeCounter = ValueNotifier(0);

  static void notifyChange() => changeCounter.value++;

  PlaylistChangeNotifier._();
}
