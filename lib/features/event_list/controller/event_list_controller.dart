import 'package:get/get.dart';
import '../../../data/data1/dummy/dummy_data.dart'; // Pastikan jalur import sesuai
import '../../../data/data1/modelresponses/event_model.dart';

class EventListController extends GetxController {
  // Menggunakan RxList agar perubahan daftar bisa dipantau oleh GetX
  final RxList<EventModel> events = <EventModel>[].obs; 

  @override
  void onInit() {
    super.onInit();
    fetchEvents(); // Memanggil fungsi fetch saat controller diinisialisasi
  }

  // Fungsi untuk mengambil data event dari dummyData
  void fetchEvents() {
    events.assignAll(dummyEvents); // Memasukkan dummy data ke dalam list
  }
}
