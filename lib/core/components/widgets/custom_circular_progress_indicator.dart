import 'package:flutter/material.dart';
import 'package:getx_starter/core/extension/context_extension.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey,
        color: context.colors.primary,
      ),
    );
  }
}
