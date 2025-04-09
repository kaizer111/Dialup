import 'package:dialup/constants/color.dart';
import 'package:dialup/utils/device_size.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedCountry = 'India';
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Connect Instantly, Solve Effortlessly',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                // Container(
                //   child: DropdownButton(
                //     value: selectedCountry,
                //     dropdownColor: Colors.black,
                //     underline: const SizedBox(),
                //     iconEnabledColor: Colors.white,
                //     items: ['Delhi', 'mumbai', 'kolkata']
                //         .map((String item) => DropdownMenuItem(
                //               value: item,
                //               child: Text(
                //                 item,
                //                 style: const TextStyle(color: Colors.white),
                //               ),
                //             ))
                //         .toList(),
                //     onChanged: (value) {},
                //   ),
                // )
              ],
            )
          ],
        ),
        backgroundColor: AppColor.primary,
        toolbarHeight: displayHeight(context) * 0.1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: Column(
        children: [Text('HEllo this is theplace where yiiu wil find the best solutions')],
      ),
    );
  }
}
