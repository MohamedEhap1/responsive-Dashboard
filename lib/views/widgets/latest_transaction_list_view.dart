import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.assetsImagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail.com",
    ),
    UserInfoModel(
      image: Assets.assetsImagesAvatar2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.assetsImagesAvatar3,
      title: "Lekan Okeowo",
      subtitle: "demo@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
