import 'package:divider_app/screens/home/payment_card.dart';
import 'package:divider_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomButton(text: 'Criar um divider', onPressed: () {}),
            const SizedBox(height: 24),
            PaymentCard(
              title: 'Pagar conta de luz',
              description: 'Divida a conta de luz com seus amigos',
              onTap: () {},
            ),
            const SizedBox(height: 16),
            PaymentCard(
              title: 'Pagar Netflix',
              description: 'Divida a conta da Netflix com seus amigos',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
