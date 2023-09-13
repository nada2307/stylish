import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/my_icons_icons.dart';

// ignore: must_be_immutable
class AuthTextFormFieldWidget extends StatefulWidget {
  final IconData icon;
  final String label;
  bool isPassword;
  bool isObscure;
  final Function(String) onChange;
  String? Function(String?)? validation;
  final TextEditingController controller;

  AuthTextFormFieldWidget({
    super.key,
    required this.icon,
    required this.label,
    this.isPassword = false,
    this.isObscure = false,
    this.validation,
    required this.onChange,
    required this.controller,
  });

  @override
  State<AuthTextFormFieldWidget> createState() =>
      _AuthTextFormFieldWidgetState();
}

class _AuthTextFormFieldWidgetState extends State<AuthTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validation ??
          (value) {
            if (value!.isEmpty) {
              return '${widget.label} is required';
            } else {
              return null;
            }
          },
      onChanged: widget.onChange,
      decoration: InputDecoration(
        labelText: widget.label,
        filled: true,
        labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: ColorManager.darkGrey,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.isObscure = !widget.isObscure;
                  });
                },
                icon: Icon(
                  widget.isObscure
                      ? MyIcons.eye_outline
                      : Icons.visibility_off_outlined,
                  color: ColorManager.darkGrey,
                ),
              )
            : null,
        prefixIcon: Icon(
          widget.icon,
          color: ColorManager.darkGrey,
        ),
        fillColor: ColorManager.textFormColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            color: ColorManager.grey1,
          ),
        ),
      ),
    );
  }
}
