import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const_colors/const.dart';

// ignore: must_be_immutable
class TextFielddForm extends StatefulWidget {
  final String label;
  final TextEditingController controLer;
  final IconData icons;
  // final String validation;
  late bool obscuretext;
  final TextInputType keyboardType;
  final String? Function(String?)? validation;

  TextFielddForm({
    super.key,
    required this.label,
    required this.controLer,
    required this.icons,
    this.validation,
    this.obscuretext = false,
    this.keyboardType = TextInputType.number,
  });

  @override
  State<TextFielddForm> createState() => _TextFielddFormState();
}

class _TextFielddFormState extends State<TextFielddForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controLer,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscuretext,
        validator: widget.validation,
        decoration: InputDecoration(
          suffixIcon: Icon(widget.icons),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green)),
          labelText: widget.label,
        ),
      ),
    );
  }
}

// onTap: () {
//               setState(() {
//                 widget.obscuretext = !widget.obscuretext;
//               });
//             },

class BorderContainer extends StatelessWidget {
  final Image url;
  const BorderContainer({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          // boxShadow: const [
          //   BoxShadow(
          //       color: Color.fromARGB(205, 43, 42, 42),
          //       offset: Offset(3, 3),
          //       blurRadius: 7),
          //   BoxShadow(
          //       color: Color.fromARGB(205, 123, 147, 0),
          //       offset: Offset(-3, -3),
          //       blurRadius: 7),
          // ],
          border: Border.all(
            color: const Color.fromARGB(89, 27, 25, 25),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: url,
        ));
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.loading,
    required this.text,
    required this.onpress,
  });

  final bool loading;
  final String text;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onpress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Container(
          width: 270,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Colors.black,
            // gradient: LinearGradient(
            //   transform: GradientRotation(1),
            //   begin: Alignment.bottomRight,
            //   end: Alignment.topRight,
            //   colors: [
            //     Color.fromARGB(255, 212, 187, 187),
            //     Color.fromARGB(255, 166, 174, 123),
            //     Color.fromARGB(255, 229, 232, 183),
            //     Color.fromARGB(255, 132, 145, 129),
            //   ],
            // ),
          ),
          child: Center(
            child: loading
                ? const CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
          ),
        ),
      ),
    );
  }
}
