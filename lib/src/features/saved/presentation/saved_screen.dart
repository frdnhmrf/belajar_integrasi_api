import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/shared/custom_alert_dialog.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Baca Nanti',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showCustomAlertDialog(
                context,
                'Yakin ingin hapus semua',
              );
            },
            icon: const Icon(
              Icons.delete_sweep,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        children: const [
          gapH24,
          // NewsCard(
          //   image: 'assets/img_news_two.png',
          //   title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
          //   category: 'Regional',
          // ),
          // NewsCard(
          //   image: 'assets/img_news_two.png',
          //   title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
          //   category: 'Regional',
          // ),
          // NewsCard(
          //   image: 'assets/img_news_two.png',
          //   title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
          //   category: 'Regional',
          // ),
          // NewsCard(
          //   image: 'assets/img_news_two.png',
          //   title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
          //   category: 'Regional',
          // ),
          // NewsCard(
          //   image: 'assets/img_news_two.png',
          //   title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
          //   category: 'Regional',
          // ),
        ],
      ),
    );
  }
}
