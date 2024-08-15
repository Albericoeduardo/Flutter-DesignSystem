import 'package:design_system/src/DesignSystem/Buttons/action_button_view_model.dart';
import 'package:design_system/src/shared/colors.dart';
import 'package:flutter/cupertino.dart';

class ActionButton extends StatelessWidget {
  final ActionButtonViewModel viewModel;

  const ActionButton({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    double heigth = 128;
    double width = 48;

    Color buttonColor = lightPrimaryBrandColor;

    switch (viewModel.size) {
      case ActionButtonSize.large:
        heigth = 112;
        width = 48;
        break;
      case ActionButtonSize.medium:
        heigth = 128;
        width = 48;
        break;
      case ActionButtonSize.small:
        heigth = 64;
        width = 32;
        break;
      default:
    }

    switch (viewModel.style) {
      case ActionButtonStyle.primary:
        buttonColor = lightPrimaryBrandColor;
        break;
      case ActionButtonStyle.secondary:
        buttonColor = lightSecondaryBrandColor;
        break;
      case ActionButtonStyle.tertiary:
        buttonColor = lightTertiaryBrandColor;
        break;
      default:
    }

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: heigth,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: viewModel.icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    viewModel.icon!,
                    Text(
                      viewModel.text,
                      style: const TextStyle(
                        color: lightPrimaryBaseColorLight,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : Text(
                  viewModel.text,
                  style: const TextStyle(
                    color: lightPrimaryBaseColorLight,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}