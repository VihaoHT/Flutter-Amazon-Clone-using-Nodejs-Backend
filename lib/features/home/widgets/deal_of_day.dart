import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, top: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$999',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Pu',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1526925712774-2833a7ecd0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hY2Jvb2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1526925712774-2833a7ecd0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hY2Jvb2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1526925712774-2833a7ecd0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hY2Jvb2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1526925712774-2833a7ecd0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hY2Jvb2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1526925712774-2833a7ecd0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hY2Jvb2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child:  Text(
            'See all deals',
            style:  TextStyle(
                color: Colors.cyan[800],
            ),
          ),
        ),
      ],
    );
  }
}
