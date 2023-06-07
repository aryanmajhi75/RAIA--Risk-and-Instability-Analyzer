import 'package:flutter/material.dart';
import 'package:raia/constants.dart';
import 'package:raia/customWidgets/CustomContainer.dart';

import '../customWidgets/customTextfield.dart';

class VicinityRisks extends StatefulWidget {
  const VicinityRisks({super.key});

  @override
  State<VicinityRisks> createState() => _VicinityRisksState();
}

class _VicinityRisksState extends State<VicinityRisks> {
  String location = "";
  bool isLocationActive = false;
  void findLocation() {
    setState(() {
      if (!isLocationActive) {
        isLocationActive = true;
        location = "Brahmajan Tea Estate,Pengree,Tinsukia";
      } else {
        isLocationActive = false;
        location = "Unknown Location";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: defBodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vicinity",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Risks",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Let us know your location !",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: findLocation,
                      child: isLocationActive
                          ? const Icon(
                              Icons.location_on,
                              size: 40,
                            )
                          : const Icon(
                              Icons.location_disabled_outlined,
                              size: 40,
                            ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: width * 0.7,
                      child: Text(
                        location,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: darkColor,
                          overflow: TextOverflow.clip,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Risks nearby",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 10,
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
