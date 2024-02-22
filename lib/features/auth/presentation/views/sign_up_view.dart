import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/have_an_account.dart';
import '../widgets/terms_and_condtions.dart';
import '../widgets/welcom_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15)),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03)),
            const SliverToBoxAdapter(
                child: CustomTextField(labelText: AppStrings.fristName)),
            const SliverToBoxAdapter(
                child: CustomTextField(labelText: AppStrings.lastName)),
            const SliverToBoxAdapter(
                child: CustomTextField(labelText: AppStrings.emailAddress)),
            const SliverToBoxAdapter(
                child: CustomTextField(labelText: AppStrings.password)),
            const SliverToBoxAdapter(
              child: TermsAndCondtionsWidget(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05)),
            SliverToBoxAdapter(
              child: CustomBotton(text: AppStrings.signUp, onPressed: () {}),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02)),
            const SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
