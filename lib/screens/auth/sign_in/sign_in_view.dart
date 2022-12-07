
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/auth/sign_in/sign_in_controller.dart';
import 'package:to_do_app_getx/screens/widgets/custom_animation.dart';
import 'package:to_do_app_getx/screens/widgets/custom_field.dart';
import 'package:to_do_app_getx/screens/widgets/custom_password_field.dart';


class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: SafeArea(
        child: SizedBox(
          width: 390,
          child: AnimationLimiter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyFieldAnimation(
                  index: 0,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Sign In',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                MyFieldAnimation(
                  index: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GetBuilder(
                        init: controller,
                        builder: (_) {
                          return CustomField(
                              controller: controller.emailController,
                              validator: (value) =>
                                  controller.checkEmail(value),
                              placeholder: 'email');
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyFieldAnimation(
                  index: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GetBuilder(
                        init: controller,
                        builder: (_) {
                          return CustomPasswordField(
                              isSuffix: true,
                              isObscure: controller.isObscure!,
                              validator: (value) =>
                                  controller.validPassword(value),
                              onPressed: controller.changeVisibility,
                              icon: controller.isObscure!
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_fill,
                              controller: controller.password,
                              placeholder: 'password');
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyFieldAnimation(
                  index: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: CupertinoButton.filled(
                          minSize: 40,
                          padding: const EdgeInsets.symmetric(horizontal: .0),
                          onPressed: controller.signIn,
                          child: const Text('Sign In')),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyFieldAnimation(
                  index: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                        ),
                        TextButton(
                            onPressed: controller.onSignUpButtonPressed,
                            child: const Text('Sign Up'))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}