import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_bookings/screens/ticket_view.dart';
import 'package:ticket_bookings/utils/app_info_list.dart';
import 'package:ticket_bookings/utils/app_layout.dart';
import 'package:ticket_bookings/utils/style.dart';
import 'package:ticket_bookings/widgets/tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headlineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTabs(firstTab: "Upcoming", secondTab: "Previous",),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              )
            ],
          )
        ],
      )
    );
  }
}
