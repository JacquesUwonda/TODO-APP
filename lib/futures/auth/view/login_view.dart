import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jack_tips_todo/core/routes/route_names.dart';
import 'package:jack_tips_todo/core/theme/app_color.dart';
import 'package:jack_tips_todo/core/utils/app_images_url.dart';
import 'package:jack_tips_todo/core/utils/app_string.dart';
import 'package:jack_tips_todo/core/utils/validationsRules.dart';
import 'package:jack_tips_todo/core/widgets/custom_text_form_field.dart';
import 'package:jack_tips_todo/core/widgets/logo.dart';
import 'package:jack_tips_todo/core/widgets/rounded_elevated_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _LoginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Form(
              key: _LoginFormKey,
              child: Column(
                children: [
                  Logo.logo_image,
                  Logo.logo_text,
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                    controller: _emailController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return AppString.required;
                      } else if (!ValidationRules.emailValidation
                          .hasMatch(val)) {
                        return AppString.provideValidEmail;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    suffix: null,
                    hintText: AppString.email,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    controller: _passwordController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return AppString.required;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !isPasswordVisible,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColor.greyColor,
                      ),
                    ),
                    hintText: AppString.password,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedElevatedButton(
                    buttonText: AppString.login,
                    onPressed: () {
                      if (_LoginFormKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(RouteNames.register);
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: AppString.newUser,
                        style: TextStyle(color: AppColor.greyColor),
                        children: [
                          TextSpan(
                            text: AppString.register,
                            style: TextStyle(
                              color: AppColor.appColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
