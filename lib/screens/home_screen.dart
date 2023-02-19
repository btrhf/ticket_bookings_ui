import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_bookings/screens/hotel_screen.dart';
import 'package:ticket_bookings/screens/ticket_view.dart';
import 'package:ticket_bookings/utils/app_info_list.dart';
import 'package:ticket_bookings/widgets/double_text_widget.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/app_icon.png")
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        color: const Color(0xFFF4F6FD)
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(12),
                      vertical: AppLayout.getHeight(12)
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const DoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList.map((ticket) => TicketView(ticket: ticket)).toList(),
              ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const DoubleTextWidget(bigText: "Hotels"
                "", smallText: "View all")
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
              child: Row(
                children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList()
              ),
          ),
        ],
      ),
    );
  }
}
