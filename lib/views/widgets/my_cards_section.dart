import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My card",
          style: AppStyles.styleSemiBold20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        DotsIndicator(
          currentPageIndex: currentPage,
        ),
      ],
    );
  }
}
