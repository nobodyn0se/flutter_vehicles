import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class ErrorView extends StatelessWidget {
  final String parameterName;
  const ErrorView({Key? key, required this.parameterName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppConstants.ERROR_IMAGE),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            'Vehicle $parameterName not available offline. Please check your network and try again!',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
