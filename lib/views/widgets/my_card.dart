import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.assetsImagesCardBackground)),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 41, top: 16),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.assetsImagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "0918 8124 0042 8129",
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "12/20 - 124",
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
