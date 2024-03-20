import '../../../core/routes/generator.dart';
import 'onboard_second_page.dart';
import 'widgets/onboard_description.dart';
import 'widgets/onboard_view.dart';
import '../../widgets/app_logo_text.dart';
import 'package:flutter/material.dart';

class OnboardFirstPage extends StatelessWidget {
  const OnboardFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigate.to(context, const OnboardSecondPage());
    });
    return const Scaffold(
      body: Center(
        child: OnboardView(
          children: [
            AppLogoText(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: OnboardDescription(),
      ),
    );
  }
}
