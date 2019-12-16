# Flutter Web Builder

Flutter Web Builder hanya digunakan untuk _build_ flutter web project dengan menggunakan serangkaian _command_ di bawah:

```
flutter create .
flutter pub run build_runner build
flutter build web
```

## How to use

1. Clone your flutter web project (e.g. `/home/project`)
2. Run: `$ docker run --rm -v /home/project:/project ren7/renseki-flutter:web-builder_${flutter_version}` OR `$ docker run --rm -v /home/project:/project ren7/renseki-flutter:latest`
3. Result: `/home/project/build/web`

Check flutter version for further information. Change all symbol to underscores (_).
