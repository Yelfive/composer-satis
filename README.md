# Composer Satis -- Dockerized

## Install

```bash
docker pull composer/satis
mkdir build
```

## Config

Configuration file at `build/satis.json`

e.g.

```json
{
    "name": "mylord/packagist",
    "homepage": "http://packagist.example.com",
    "repositories": [
        { "type": "composer, "url": "https://packagist.org" }
    ]
    "require: {
        "this/package": "version"
    }
}
```

## Run

```bash
./run.sh build
./run.sh purge
```
