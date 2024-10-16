import 'package:flutter/material.dart';
import '../../data/data1/modelresponses/event_model.dart';
import '../../../core/global_component/custom_button.dart'; // Pastikan mengimpor CustomButton dengan benar

class EventCard extends StatelessWidget {
  final EventModel event;

  const EventCard({super.key, required this.event}); // Gunakan const dan key

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(event.imageUrl), // Periksa URL gambar valid
          Padding(
            padding: const EdgeInsets.all(8.0), // Tambahkan padding agar konten lebih rapi
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(event.date),
                const SizedBox(height: 10),
                CustomButton(
                  text: "Book Now",
                  onPressed: () {
                    // Implementasikan logika yang sesuai saat tombol ditekan
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
