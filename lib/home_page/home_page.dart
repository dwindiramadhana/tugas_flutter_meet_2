import 'package:flutter/material.dart';
import 'package:tugas_meet_2/detail_page/detail_page.dart';
import 'package:tugas_meet_2/widgets/photo_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PhotoProfile(),
            const SizedBox(
              height: 16,
            ),
            const Text('Dwindi Ramadhana'),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(),
                ));
              },
              child: const Text('Detail')
            )
          ],
        ),
      ),
    );
  }
}