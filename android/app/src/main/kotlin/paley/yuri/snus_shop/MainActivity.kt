package paley.yuri.snus_shop

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    init {
        System.loadLibrary("TrustWalletCore")
    }
}
