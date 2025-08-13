import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/features/main_app/scanner/data/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScannerBody extends StatelessWidget {
  const ScannerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 5,
                      height: 40,
                      color: AppColors.secondColor,
                    ),
                    Container(
                      width: 40,
                      height: 5,
                      color: AppColors.secondColor,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      color: AppColors.secondColor,
                    ),
                    Container(
                      width: 5,
                      height: 40,
                      color: AppColors.secondColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: AppColors.primaryColor.withAlpha(250),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SvgPicture.asset(
                'assets/icons/barcode2.svg',
                color: Colors.white,
                width: 150,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 5,
                      height: 40,
                      color: AppColors.secondColor,
                    ),
                    Container(
                      width: 40,
                      height: 5,
                      color: AppColors.secondColor,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      color: AppColors.secondColor,
                    ),
                    Container(
                      width: 5,
                      height: 40,
                      color: AppColors.secondColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .23),
          CustomButton(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
