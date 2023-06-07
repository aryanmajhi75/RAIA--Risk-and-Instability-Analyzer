import 'package:flutter/material.dart';
import 'package:raia/constants.dart';
import 'package:raia/customWidgets/CustomContainer.dart';


class GlobalThreats extends StatelessWidget {
  const GlobalThreats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: defBodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Global",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Threats",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 40,
                ),
                const customContainer(),
                const SizedBox(
                  height: 30,
                ),
                const customContainer(),
                const SizedBox(
                  height: 30,
                ),
                const customContainer(),
                const SizedBox(
                  height: 30,
                ),
                const customContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
