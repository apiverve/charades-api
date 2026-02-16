/// Response models for the Charades Generator API.

/// API Response wrapper.
class CharadesResponse {
  final String status;
  final dynamic error;
  final CharadesData? data;

  CharadesResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CharadesResponse.fromJson(Map<String, dynamic> json) => CharadesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CharadesData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Charades Generator API.

class CharadesData {
  String? word;
  String? category;

  CharadesData({
    this.word,
    this.category,
  });

  factory CharadesData.fromJson(Map<String, dynamic> json) => CharadesData(
      word: json['word'],
      category: json['category'],
    );
}

class CharadesRequest {
  String? category;

  CharadesRequest({
    this.category,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
    };
}
