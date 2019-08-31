import 'package:flutter/material.dart';
import './colors.dart';
import './styles.dart';

Container fryoTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container fryoEmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      keyboardType: TextInputType.emailAddress,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}


Container fryoPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: true,
      cursorColor: primaryColor,
      style: inputFieldHintPaswordTextStyle,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintPaswordTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}
