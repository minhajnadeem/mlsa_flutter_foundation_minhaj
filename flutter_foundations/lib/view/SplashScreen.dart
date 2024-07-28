import 'dart:async';
import 'package:flutter/material.dart';
import '../constant/app_asset.dart';
import '../constant/dimen.dart';
import '../constant/string.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: AppDimen.mlsaLogoLargeDimen,
              height: AppDimen.mlsaLogoLargeDimen,
              child: Image.asset(AppAsset.mlsaLogoLarge),
            ),
            Text(
              AppString.lblMlsaTagLine,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
