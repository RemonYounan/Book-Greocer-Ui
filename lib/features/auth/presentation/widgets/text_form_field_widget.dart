// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_greocer/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    this.validate,
    this.controller,
    this.obscure,
  }) : super(key: key);

  final String hintText;
  final TextInputType keyboardType;
  final bool? obscure;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscure ?? false,
        keyboardType: keyboardType,
        validator: validate,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: obscure != null
              ? IconButton(
                  onPressed: () {
                    context.read<AuthCubit>().toggleObscure();
                  },
                  icon: const Icon(Icons.remove_red_eye),
                )
              : null,
        ),
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
