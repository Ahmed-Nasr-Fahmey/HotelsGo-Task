import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo_task/constants.dart';

class SortOptionsBuilder extends StatefulWidget {
  const SortOptionsBuilder({
    super.key,
  });

  @override
  State<SortOptionsBuilder> createState() => _SortOptionsBuilderState();
}

class _SortOptionsBuilderState extends State<SortOptionsBuilder> {
  int selectedOption = 0;
  final List<String> sortOptions = const [
    'Our recommendations',
    'Rating & Recommended',
    'Price & Recommended',
    'Distance & Recommended',
    'Rating only',
    'Price only',
    'Distance only',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 180,
      child: ListView.builder(
        itemCount: sortOptions.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        sortOptions[index],
                        style: GoogleFonts.roboto(
                          color: Constants.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      selectedOption == index
                          ? const Icon(
                              Icons.check,
                              color: Constants.secondColor,
                              size: 20,
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
