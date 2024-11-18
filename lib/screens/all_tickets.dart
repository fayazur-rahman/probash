import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:probash_airlines/base/utils/all_json.dart';

import '../base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                    child: TicketView(ticket: singleTicket, wholeScreen: true,)
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
