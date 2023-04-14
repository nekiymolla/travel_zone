package com.example.travel_zone

import io.flutter.embedding.android.FlutterActivity
import com.yandex.mapkit.MapKitFactory;

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    MapKitFactory.setApiKey("8b20e26c-726b-4edc-a497-17bb78262c92") // Your generated API key
    super.configureFlutterEngine(flutterEngine)
  }
}
