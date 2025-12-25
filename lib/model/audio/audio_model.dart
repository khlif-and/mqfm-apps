class AudioResponse {
  final int status;
  final String message;
  final List<Audio>? data;

  AudioResponse({required this.status, required this.message, this.data});

  factory AudioResponse.fromJson(Map<String, dynamic> json) {
    return AudioResponse(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null
          ? (json['data'] as List).map((i) => Audio.fromJson(i)).toList()
          : null,
    );
  }
}

// [BARU] Class untuk respon satu audio (Detail)
class SingleAudioResponse {
  final int status;
  final String message;
  final Audio? data;

  SingleAudioResponse({required this.status, required this.message, this.data});

  factory SingleAudioResponse.fromJson(Map<String, dynamic> json) {
    return SingleAudioResponse(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? Audio.fromJson(json['data']) : null,
    );
  }
}

class Audio {
  final int id;
  final String title;
  final String description;
  final String audioUrl;
  final String thumbnail;
  final int categoryId;
  final String createdAt;
  final String updatedAt;

  Audio({
    required this.id,
    required this.title,
    required this.description,
    required this.audioUrl,
    required this.thumbnail,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Audio.fromJson(Map<String, dynamic> json) {
    return Audio(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      audioUrl: json['audio_url'] ?? "",
      thumbnail: json['thumbnail'] ?? "",
      categoryId: json['category_id'] ?? 0,
      createdAt: json['created_at'] ?? "",
      updatedAt: json['updated_at'] ?? "",
    );
  }
}
