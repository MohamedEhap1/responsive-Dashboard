import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
  });
  final String image;
  final Color? imageColor, imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? const Color(0xffFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColor ?? const Color(0xff064061),
        ),
      ],
    );
  }
}
