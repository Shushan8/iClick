import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key, required this.icon});
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              onTap: () {},
              decoration: InputDecoration(
                prefixIcon: SvgPicture.asset(
                  'assetc/icons/Search.svg',
                  width: 10,
                  height: 10,
                ),
                // prefixIcon: const Icon(
                //   Icons.search,
                //   color: Colors.blue,
                // ),
                hintText: 'Search',
                filled: true,
                fillColor: const Color.fromARGB(255, 243, 245, 247),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 243, 245, 247)),
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 243, 245, 247)),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ),
        icon
            ? Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 243, 245, 247)),
                child: SvgPicture.asset(
                  'assetc/icons/send.svg',
                  width: 20,
                  height: 23,
                ),
              )
            : Container()
      ],
    );
  }
}
