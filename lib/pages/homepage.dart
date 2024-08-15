
import 'package:design_system/src/DesignSystem/Buttons/action_button.dart';
import 'package:design_system/src/DesignSystem/Buttons/action_button_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ActionButton(viewModel: 
          ActionButtonViewModel(
            size: ActionButtonSize.large,
            style: ActionButtonStyle.primary,
            text: 'Hello World',
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}