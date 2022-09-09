import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class TextFieldSuggestionWidget extends StatefulWidget {
  const TextFieldSuggestionWidget({
    Key? key,
    this.errorMessageAsync,
    this.asyncValidate,
    this.enable,
    this.placeholder = '',
    this.controller,
    this.label = '',
    this.suffix,
    this.focus,
    this.center = false,
    this.maxLines = 1,
    this.bgColor = Colors.transparent,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.validator,
    this.inputFormatters,
    this.max,
    this.onEditingComplete,
    this.preffixIcon,
    this.onChanged, 
    this.containerPadding, 
    this.height, 
    this.readOnly = false, 
    this.margin, 
    required 
    this.suggestionsCallback, 
    required this.itemBuilder, 
    required this.onSuggestionSelected,
  }) : super(key: key);
  final bool? enable;
  final String placeholder;
  final TextEditingController? controller;
  final String label;
  final Widget? suffix;
  final FocusNode? focus;
  final int maxLines;
  final Color bgColor;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final int? max;
  final void Function()? onEditingComplete;
  final IconData? preffixIcon;
  final Function(String)? onChanged;
  final bool center;
  final String? errorMessageAsync;
  final void Function(String)? asyncValidate;
  final EdgeInsetsGeometry? containerPadding;
  final double? height;
  final bool readOnly;
  final EdgeInsetsGeometry? margin;
  final Widget Function(BuildContext, dynamic) itemBuilder;
  final void Function(String) onSuggestionSelected;
  final FutureOr<Iterable<String>> Function(String) suggestionsCallback;

  @override
  // ignore: library_private_types_in_public_api
  _TextFieldSuggestionWidgetState createState() => 
      _TextFieldSuggestionWidgetState();
}

class _TextFieldSuggestionWidgetState extends State<TextFieldSuggestionWidget> {

  @override
  Widget build(BuildContext context) => Container(
    height: widget.height,
    margin: widget.margin,
    padding: widget.containerPadding 
        ?? const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    child: TypeAheadField<String>(
      itemBuilder:  widget.itemBuilder,
      onSuggestionSelected:  widget.onSuggestionSelected,
      suggestionsCallback:  widget.suggestionsCallback,
      textFieldConfiguration: TextFieldConfiguration(
        textCapitalization: widget.textCapitalization,
      maxLength: widget.max,
      inputFormatters: widget.inputFormatters,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged,
      minLines: 1,
      textAlign: widget.center ? TextAlign.center : TextAlign.left,
      focusNode: widget.focus,
      textAlignVertical: TextAlignVertical.center,
      enabled: widget.enable ?? true,
      maxLines: widget.maxLines,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
        contentPadding: widget.height != null
            ? EdgeInsets.only(
              bottom: widget.height! * 0.16)
            : null,
        hintText: widget.placeholder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        labelText: widget.label,
        fillColor: widget.bgColor,
        filled: true,
        prefixIcon: widget.preffixIcon != null 
            ? Icon(
                widget.preffixIcon,
                size: 28,
                color: Theme.of(context).colorScheme.secondary,
              ) 
            : null,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 50
        ),
        floatingLabelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.secondary
        ),
        suffixIcon: widget.suffix,
        errorText: widget.errorMessageAsync,
      ),
      ),
    ),
  );

  OutlineInputBorder get inputBorder => OutlineInputBorder(
    borderSide: BorderSide(
      color: Theme.of(context).colorScheme.secondary,
      width: 1.5
    )
  );
}
