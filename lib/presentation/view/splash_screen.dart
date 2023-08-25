
import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/routes.dart';
import '../../core/widgets/base_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: Constants.splashTime,
      ),
      () {
        Navigator.pushReplacementNamed(context, Routes.mainScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ManagerColors.secondaryColor,
                ManagerColors.brown200,
                ManagerColors.white70,
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: baseText(),
        ),
      ),
    );
  }
}
