import 'package:flutter/material.dart';

class  CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;


  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if(value == null) return  'Este camo es requerido.';
        return value.length < 3 ? 'Minimo tres letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffix: suffixIcon == null ? const Icon(Icons.group_outlined) : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}