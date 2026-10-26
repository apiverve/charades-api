/// Response models for the Charades Generator API.

/// API Response wrapper.
class CharadesResponse {
  final String status;
  final dynamic error;
  final CharadesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CharadesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CharadesResponse.fromJson(Map<String, dynamic> json) => CharadesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CharadesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
