import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StoreLocatorPage extends StatefulWidget {
  const StoreLocatorPage({Key? key}) : super(key: key);

  @override
  State<StoreLocatorPage> createState() => _StoreLocatorPageState();
}

class _StoreLocatorPageState extends State<StoreLocatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();

  @override
  void dispose() {
    _stateController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Help Us Help You',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'It seems as this is your first time using our app, please enter your location so we can filter our results and stock accordingly to your local store.',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'If you choose to skip, you can change yourlocation at any time in your account settings.',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: 4.h,
                ),
                TextFormFieldWidget(
                  hintText: 'State',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: _stateController,
                ),
                TextFormFieldWidget(
                  hintText: 'City',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: _cityController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _cityController,
                      builder: (context, value, child) => TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: primaryColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              AppStrings.mainPageRouteName, (route) => false);
                        },
                        child: Text(
                          _cityController.text.isEmpty ? 'Skip' : 'Next',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
