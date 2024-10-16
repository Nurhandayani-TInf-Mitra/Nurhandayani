import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/event_list_controller.dart';
import '../../../core/global_component/event_card.dart';

class EventListWidget extends StatelessWidget {
  const EventListWidget({super.key}); // Tambahkan const dan key

  @override
  Widget build(BuildContext context) {
    return GetX<EventListController>(
      builder: (controller) {
        if (controller.events.isEmpty) {
          // Jika daftar event kosong, tampilkan pesan kosong atau indikator loading
          return const Center(
            child: Text("No events available"),
          );
        }

        return ListView.builder(
          itemCount: controller.events.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: EventCard(event: controller.events[index]),
            );
          },
        );
      },
    );
  }
}
