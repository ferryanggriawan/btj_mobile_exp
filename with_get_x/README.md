# BTJ Research project with_get_x

## Flutter dan dart SDK
- flutter SDK version 3.41.9
- dart SDK version 3.9.0

## API
menggunakan API: https://dummyjson.com/docs/products#products-all

## Run dengan mode debug
flutter run --dart-define-from-file=config/env_dev.json

## Run dengan mode release
### Untuk Android APK
flutter build apk --dart-define-from-file=config/env_prod.json

### Untuk iOS
flutter build ios --dart-define-from-file=config/env_prod.json