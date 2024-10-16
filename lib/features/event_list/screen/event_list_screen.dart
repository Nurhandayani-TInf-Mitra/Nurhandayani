import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/event_list_controller.dart';
import 'package:analisa/features/event_list/widgets/event_list_widgets.dart'; // Pastikan jalurnya benar

class EventListScreen extends StatelessWidget {
  // Jadikan konstruktor const dan gunakan super parameter untuk key
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Jika controller tidak digunakan langsung, bisa dihapus atau biarkan Get mengelolanya di tempat lain
    Get.put(EventListController());

    return Scaffold(
      appBar: AppBar(title: const Text("Event List")),
      body: const EventListWidget(), // Tambahkan const jika widget tidak dinamis
    );
  }
}
