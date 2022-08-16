import 'package:flutter/material.dart';
import 'package:trust_wallet_core/flutter_trust_wallet_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Snus Shop',
    //   theme: ThemeData(
    //       appBarTheme: const AppBarTheme(
    //     backgroundColor: Colors.black,
    //     foregroundColor: Colors.white,
    //   )),
    //   home: const Home(),
    // );
    return const MaterialApp(
      home: TestWallet(),
    );
  }
}

class TestWallet extends StatefulWidget {
  const TestWallet({Key? key}) : super(key: key);

  @override
  State<TestWallet> createState() => _TestWalletState();
}

class _TestWalletState extends State<TestWallet> {
  late HDWallet wallet;

  @override
  void initState() {
    FlutterTrustWalletCore.init();
    super.initState();
    String mnemonic =
        "horror select baby exile convince sunset outside vehicle write decade powder energy"; // 有测试币的 tron地址
    wallet = HDWallet.createWithMnemonic(mnemonic);
  }

  Widget _exampleItem({
    required String name,
    required WidgetBuilder builder,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: builder));
      },
      child: Text(name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wallet core example app'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(wallet.mnemonic()),
            // Expanded(
            //   child: ListView(
            //     padding: EdgeInsets.zero,
            //     children: [
            //       _exampleItem(
            //         name: 'Ethereum',
            //         builder: (_) {
            //           return EthereumExample(wallet);
            //         },
            //       ),
            //       _exampleItem(
            //         name: 'Bitcoin Address',
            //         builder: (_) {
            //           return BitcoinAddressExample(wallet);
            //         },
            //       ),
            //       _exampleItem(
            //         name: 'Bitcoin Transaction',
            //         builder: (_) {
            //           return BitcoinTransactionExample(wallet);
            //         },
            //       ),
            //       _exampleItem(
            //         name: 'Tron',
            //         builder: (_) {
            //           return TronExample(wallet);
            //         },
            //       ),
            //       _exampleItem(
            //         name: 'PrivateKey.isValid(a,b)',
            //         builder: (_) {
            //           return PrivateKeyIsValidExample(wallet);
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            ElevatedButton(
              onPressed: () async {
                wallet.delete();
                wallet = HDWallet();
                setState(() {});
              },
              child: const Text("gen"),
            ),
          ],
        ),
      ),
    );
  }
}
