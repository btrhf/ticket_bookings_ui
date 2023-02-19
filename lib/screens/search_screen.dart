import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_bookings/utils/app_layout.dart';
import 'package:ticket_bookings/widgets/icon_text_widget.dart';

import '../utils/style.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headlineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              child: Row(
                children: [
                  /*
                Airline Tickets
                 */
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white
                    ),
                    child: Center(child: Text("Airline Tickets")),
                  ),
                  /*
                Hotels
                 */
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD)
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(color: Colors.white,)
              ),
            )
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )],
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("20% Discount on international flights", style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                            color: Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the survey about our services and get discount", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      )),

                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    width: size.width*0.44,
                    height:  AppLayout.getHeight(174),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
