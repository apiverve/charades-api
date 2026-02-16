# Charades Generator API - Dart/Flutter Client

Charades Generator provides random words from curated categories perfect for playing the classic charades acting game.

[![pub package](https://img.shields.io/pub/v/apiverve_charades.svg)](https://pub.dev/packages/apiverve_charades)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Charades Generator API](https://apiverve.com/marketplace/charades?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_charades: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_charades/apiverve_charades.dart';

void main() async {
  final client = CharadesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'category': 'all'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "Tom Jones",
    "category": "movies"
  }
}
```

## API Reference

- **API Home:** [Charades Generator API](https://apiverve.com/marketplace/charades?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/charades](https://docs.apiverve.com/ref/charades?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
