import 'package:flutter/material.dart';
import '../../data/data1/modelresponses/event_model.dart';

class TopEventCard extends StatelessWidget {
  final EventModel event;

  const TopEventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(event.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        event.title,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
