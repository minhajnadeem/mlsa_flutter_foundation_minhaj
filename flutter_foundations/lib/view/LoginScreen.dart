import 'package:flutter/material.dart';
import '../constant/dimen.dart';
import '../constant/string.dart';
import '../theme/app_color.dart';
import '../theme/app_theme.dart';
import 'DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.lblLoginTitle,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              AppMargin.marginVerticalLarge,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.lblJoinOur,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              AppMargin.marginVerticalXLarge,
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: AppString.hintEmail,
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  border: AppTheme.textFieldBorder,
                  focusedBorder: AppTheme.textFieldFocusedBorder,
                ),
              ),
              AppMargin.marginVerticalSmall,
              TextField(
                controller: passwordController,
                obscureText: isVisible,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isVisible = !isVisible;
                        },
                      );
                    },
                    child: Icon(
                      isVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  hintText: AppString.hintPassword,
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  border: AppTheme.textFieldBorder,
                  focusedBorder: AppTheme.textFieldFocusedBorder,
                ),
              ),
              AppMargin.marginVerticalXLarge,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppDimen.buttonRadius),
                      ),
                    ),
                    onPressed: () {
                      if (emailController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              AppString.errorMsgValidCredentials,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DashboardScreen();
                            },
                          ),
                        );
                      }
                    },
                    child: Text(
                      AppString.btnLblLogin,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: AppColors.onPrimaryColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
