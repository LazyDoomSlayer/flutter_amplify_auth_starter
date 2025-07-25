import 'package:flutter/material.dart';
import 'package:flutter_amplify_auth_starter/features/auth/footer.dart';
import 'package:flutter_amplify_auth_starter/features/auth/header.dart';
import 'package:flutter_amplify_auth_starter/features/auth/login/login_form.dart';
import 'package:flutter_amplify_auth_starter/theme/dark_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkColors.backgroundBody,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Header(), LoginForm(), Footer()],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
