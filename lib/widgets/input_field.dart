import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  String hint;
  IconData? prefix, suffix;
  bool obscure;
  TextInputType type;
  InputForm(this.hint,
      {this.suffix,
      this.prefix,
      this.obscure = false,
      this.type = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
          obscureText: obscure,
          cursorColor: const Color.fromARGB(255, 101, 48, 248),
          keyboardType: type,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[400]),
            prefixIcon: prefix != null
                ? Icon(
                    prefix,
                    color: Colors.grey[400],
                  )
                : null,
            suffixIcon: suffix != null
                ? Icon(
                    suffix,
                    color: Colors.grey[400],
                  )
                : null,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15.0),
            ),
          )),
    );
  }
}
