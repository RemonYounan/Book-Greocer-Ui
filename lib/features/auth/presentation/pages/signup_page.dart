import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/core/widgets/button_widget.dart';
import 'package:book_greocer/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:book_greocer/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _checkBox = true;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      // TODO  SignUp
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormFieldWidget(
                  hintText: 'First & Last Name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Name Can\'t be empty';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormFieldWidget(
                  hintText: 'Email',
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
                TextFormFieldWidget(
                  hintText: 'Mobile Phone',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Mobile phone can\'t be empty';
                    } else if (value.characters.length < 11) {
                      return 'Mobile phone must be 11 characters';
                    } else {
                      return null;
                    }
                  },
                ),
                const TextFormFieldWidget(
                  hintText: 'Group Special Code (optional)',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return TextFormFieldWidget(
                      hintText: 'Password',
                      keyboardType: TextInputType.text,
                      controller: _passwordController,
                      obscure: context.read<AuthCubit>().obscure,
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
                      'Please sign me up for the monthly newsletter.',
                      style: Theme.of(context).textTheme.titleSmall,
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
                        title: 'Sign up',
                        color: _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty
                            ? primaryColor
                            : null,
                        onPressed: _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty
                            ? null
                            : _submit),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
