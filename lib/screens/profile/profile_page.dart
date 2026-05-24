import 'package:divider_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomInput(
              controller: nameController,
              hintText: 'Digite seu nome',
              label: 'Nome',
            ),
            const SizedBox(height: 16),
            CustomInput(
              controller: emailController,
              hintText: 'Digite seu e-mail',
              label: 'E-mail',
            ),
          ],
        ),
      ),
    );
  }
}
