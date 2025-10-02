import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/config/app_text_style.dart';
import 'package:movies_app/features/auth/presentation/widgets/register_page_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Text(
          'Register',
          style: AppTextStyle.semiBold16(context).copyWith(color: Colors.white),
        ),
      ),
      body: const RegisterPageBody(),
    );
  }
}
