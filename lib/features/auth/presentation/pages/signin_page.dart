import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:book_greocer/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:book_greocer/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _checkBox = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      // TODO  SignIn
      Navigator.of(context).pushNamedAndRemoveUntil(
          AppStrings.storeLocatorPageRouteName, (route) => false);
    } else {}
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset(ImageAssets.arrow),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormFieldWidget(
                  hintText: 'Optional Group Special Code',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                TextFormFieldWidget(
                  hintText: 'Email Address',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validate: (value) {
                    if (!value!.contains('@')) {
                      return 'Please enter valid email address';
                    } else if (value.isEmpty) {
                      return 'Email address can\'t be empty';
                    } else {
                      return null;
                    }
                  },
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return TextFormFieldWidget(
                      hintText: 'Password',
                      keyboardType: TextInputType.text,
                      obscure: context.read<AuthCubit>().obscure,
                      controller: _passwordController,
                      textInputAction: TextInputAction.done,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Password can\'t be empty';
                        } else if (value.characters.length <= 6) {
                          return 'Password must be more than 6 characters';
                        } else {
                          return null;
                        }
                      },
                    );
                  },
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: _checkBox,
                        onChanged: (newValue) => setState(() {
                          _checkBox = newValue!;
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                      ),
                    ),
                    Text(
                      'Stay Logged In',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Your Password?',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _emailController,
                  builder: (context, value, child) =>
                      ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _passwordController,
                    builder: (context, value, child) => ButtonWidget(
                        title: 'Sign in',
                        color: _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty
                            ? primaryColor
                            : null,
                        onPressed: _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty
                            ? null
                            : _submit),
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
