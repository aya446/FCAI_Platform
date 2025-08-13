import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScanner extends StatefulWidget {
  const BarcodeScanner({super.key});

  @override
  State<BarcodeScanner> createState() => _BarcodeScannerOverlayState();
}

class _BarcodeScannerOverlayState extends State<BarcodeScanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isDetected = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 180).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleDetect(BarcodeCapture capture) {
    if (isDetected) return;
    final Barcode barcode = capture.barcodes.first;
    final String? code = barcode.rawValue;
    if (code != null) {
      isDetected = true;
      Navigator.of(context).pop(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: MobileScanner(onDetect: _handleDetect),
            ),
            Positioned(
              top: 40,
              left: 40,
              right: 40,
              bottom: 40,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Positioned(
                  top: 40 + _animation.value,
                  left: 42,
                  right: 42,
                  child: Container(height: 2, color: AppColors.primaryColor),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
