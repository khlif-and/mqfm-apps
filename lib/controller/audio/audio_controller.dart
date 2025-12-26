import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/service/audio/audio_service.dart';

class AudioController {
  final AudioService _service = AudioService();

  Future<AudioResponse> getAllAudios() async {
    return await _service.getAudios();
  }

  Future<SingleAudioResponse> getDetailAudio(int id) async {
    return await _service.getAudioById(id);
  }

  Future<AudioResponse> searchAudios(String query) async {
    return await _service.searchAudios(query);
  }
}
