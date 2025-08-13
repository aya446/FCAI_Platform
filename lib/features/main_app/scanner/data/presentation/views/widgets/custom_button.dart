import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/scanner/data/presentation/views/widgets/barcode_scanner.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showDialog(
          context: context,
          builder: (_) => const BarcodeScanner(),
        );

        if (result != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Scanned: $result')));
        }
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * .6,
        height: MediaQuery.sizeOf(context).height * .05,
        decoration: BoxDecoration(
          color: AppColors.secondColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text("Scan QR code", style: Styles.Blue14)),
      ),
    );
  }
}
