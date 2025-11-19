import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/state/password_visibility_cubit.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.enabled = true,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.validator,
    this.onTap,
    this.readOnly = false,
    this.focusNode,
    this.style,
  });

  final bool readOnly;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
      child: BlocBuilder<PasswordVisibilityCubit, bool>(
        builder: (context, isVisible) {
          return ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, _) {
              return TextFormField(
                focusNode: focusNode,
                readOnly: readOnly,
                onTap: onTap,
                controller: controller,
                enabled: enabled,
                obscureText: isPassword ? !isVisible : false,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                onChanged: onChanged,
                style: style ?? context.textStyle.inputTextRegular,
                validator: validator,
                decoration: InputDecoration(
                  filled: filled,
                  fillColor: fillColor,
                  hintText: hintText,
                  contentPadding: contentPadding,
                  border: border,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                  suffixIcon: _buildSuffixIcon(context, isVisible),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget? _buildSuffixIcon(BuildContext context, bool isVisible) {
    // Кнопка очистки текста
    if (!isPassword && controller.text.trim().isNotEmpty) {
      return IconButton(
        padding: const P(horizontal: S.p16, vertical: S.p16),
        onPressed: controller.clear,
        icon: const AppIcon(AppIcons.xSmall, width: S.p24),
      );
    }
    //TODO: Заменить иконки
    // Глазик для пароля
    if (isPassword) {
      return IconButton(
        onPressed: () => context.read<PasswordVisibilityCubit>().toggle(),
        icon: AppIcon(isVisible ? AppIcons.sber : AppIcons.vk, color: context.colors.text400),
      );
    }

    return null;
  }
}
