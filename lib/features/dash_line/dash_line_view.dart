import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/dashed_line_painter.dart';
import 'dash_line_controller.dart';

class DashLineView extends GetView<DashLineController> {
  const DashLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Dash Line')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Obx(
                () => CustomPaint(
                  size: Size.infinite,
                  painter: DashedLinePainter(
                    axis: controller.axis.value,
                    // Pass the correctly named properties
                    dashThickness: controller.dashThickness.value,
                    dashLength: controller.dashLength.value,
                    leadingPadding: controller.leadingPadding.value,
                    trailingPadding: controller.trailingPadding.value,
                    color: controller.color.value,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ... other buttons remain the same ...
                  _buildFullWidthButton(
                    onPressed: controller.toggleAxis,
                    child: Obx(() => Text(
                        '${controller.axis.value == Axis.vertical ? "vertical" : "horizontal"} dashedDivider')),
                  ),
                  const SizedBox(height: 8),
                  _buildFullWidthButton(
                    onPressed: controller.changeColor,
                    child: const Text('Change Line Color'),
                  ),
                  const SizedBox(height: 8),

                  // Update the UI labels and controller methods
                  Obx(() => _buildControlRow('Dash Thickness', controller.dashThickness.value, controller.updateDashThickness)),
                  Obx(() => _buildControlRow('Dash Length', controller.dashLength.value, controller.updateDashLength)),
                  Obx(() => _buildControlRow('leadingPadding', controller.leadingPadding.value, controller.updateLeadingPadding)),
                  Obx(() => _buildControlRow('trailingPadding', controller.trailingPadding.value, controller.updateTrailingPadding)),
                  const SizedBox(height: 8),
                  _buildFullWidthButton(
                    onPressed: controller.resetAll,
                    child: const Text('Reset All'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ... helper widgets remain the same ...
  Widget _buildFullWidthButton({required VoidCallback onPressed, required Widget child}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        backgroundColor: Colors.lightBlue[200],
        foregroundColor: Colors.black,
      ),
      child: child,
    );
  }

  Widget _buildControlRow(String label, double value, Function(double) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: const Icon(Icons.remove), onPressed: () => onChanged(-1.0)),
        Text('$label: ${value.toStringAsFixed(1)}'),
        IconButton(icon: const Icon(Icons.add), onPressed: () => onChanged(1.0)),
      ],
    );
  }
}
