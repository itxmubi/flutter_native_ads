import 'package:flutter/material.dart';

import 'package:native_ads/native_ads.dart';
import 'package:native_ads_example/native_ad_view_wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeAds.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NativeAds example app'),
        ),
        body: Center(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              if (index % 10 == 0) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: NativeAdViewWrapper(),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'this is text $index',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                );
              }
            },
            itemCount: 50,
            separatorBuilder: (BuildContext context, _) => const Divider(),
          ),
        ),
      ),
    );
  }
}
