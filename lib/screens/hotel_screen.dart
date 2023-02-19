import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_bookings/utils/app_layout.dart';

import '../utils/style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel Price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(330),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: AppLayout.getHeight(20),
            spreadRadius: AppLayout.getHeight(5),
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
          Text(hotel['place'], style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text(hotel['destination'], style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text('\$${hotel['price']}/Night', style: Styles.headlineStyle1.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
