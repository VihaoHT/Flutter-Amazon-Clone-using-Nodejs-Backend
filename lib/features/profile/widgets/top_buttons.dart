import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/features/profile/services/profile_services.dart';
import 'package:flutter_amazon_clone/features/profile/widgets/profile_button.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});
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
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ProfileButton(
              text: 'Log Out',
              onTap: () => ProfileServices().logOut(context),
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
