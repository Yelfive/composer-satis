# Example of build/satis.json

```json
{
    "name": "mylord/packagist",
    "homepage": "https://packagist.mylord.cn",
    "repositories": [
        { "type": "composer", "url": "https://packagist.org" }
    ],
    "require": {
        "encore/laravel-admin": ">=1.7.9",
        "doctrine/dbal": ">=2.0"
    },
    "archive": {
        "directory": "dist",
        "format": "tar",
        "skip-dev": true
    },
    "providers": true,
    "require-dependencies": true,
    "require-dev-dependencies": true
}
```
