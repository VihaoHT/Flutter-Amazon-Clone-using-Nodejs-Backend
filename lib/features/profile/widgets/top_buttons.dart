import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/features/profile/widgets/profile_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ProfileButton(
              text: 'Your order',
              onTap: () {},
            ),
             ProfileButton(
              text: 'Turn Seller',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            ProfileButton(
              text: 'Log Out',
              onTap: () {},
            ),
             ProfileButton(
              text: 'Your Wish List',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
