# Charades Generator API - PHP Package

Charades Generator provides random words from curated categories perfect for playing the classic charades acting game.

## Installation

Install via Composer:

```bash
composer require apiverve/charades
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Charades\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['category' => 'all']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Charades\Client;
use APIVerve\Charades\Exceptions\APIException;
use APIVerve\Charades\Exceptions\ValidationException;

try {
    $response = $client->execute(['category' => 'all']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "Selena",
    "category": "movies"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/charades?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/charades?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/charades?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
