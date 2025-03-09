import 'package:flutter/material.dart';

Widget defaultButton({
  width = double.infinity,
  background = Colors.blue,
  double radius = 0.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
    );


// Widget defaultFormField({
//   required TextInputType type,
//   required String text,
//   required TextEditingController controller,
//   required IconData prefix,
//   required  Function? validate,
// }) =>
//     TextFormField(
//       validator: validate,
//       controller: controller,
//       keyboardType: type,
//       // onFieldSubmitted: onSubmit,
//       decoration: InputDecoration(
//         labelText: text,
//         border: OutlineInputBorder(),
//         prefixIcon: Icon(prefix),
// // suffixIcon: Icon(Icons.email),
//       ),
//     );
