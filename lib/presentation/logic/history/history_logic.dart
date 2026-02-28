import 'package:flutter/material.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/utils/helpers/log_helper.dart';
import 'package:mqfm_apps/utils/helpers/preferences_helper.dart';

class HistoryLogic extends ChangeNotifier {
  final AudioController _controller = AudioController();
  List<PlayHistory> histories = [];
  bool isLoading = true;
  String? errorMessage;

  HistoryLogic() {
    _fetchHistory();
  }

  Future<void> _fetchHistory() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final String? token = await PreferencesHelper.getToken();

      if (token == null) {
        errorMessage = "Silakan login terlebih dahulu";
        isLoading = false;
        notifyListeners();
        return;
      }

      LogHelper.info("HistoryLogic", "Fetching play history...");
      final response = await _controller.getPlayHistory(token);

      if (response.status == 200 && response.data != null) {
        histories = response.data!;
        isLoading = false;
        LogHelper.success(
          "HistoryLogic",
          "Fetched ${histories.length} history items",
        );
        notifyListeners();
      } else {
        errorMessage = response.message;
        isLoading = false;
        LogHelper.error(
          "HistoryLogic",
          "Failed to get history: ${response.message}",
        );
        notifyListeners();
      }
    } catch (e, stackTrace) {
      errorMessage = "Gagal memuat data. Periksa koneksi internet.";
      isLoading = false;
      LogHelper.error("HistoryLogic", "Exception fetching history", stackTrace);
      notifyListeners();
    }
  }
}
