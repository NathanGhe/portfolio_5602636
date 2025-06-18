import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool notifications;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    super.key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.notifications,
    required this.darkMode,
    required this.offlineMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zusammenfassung')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            const SizedBox(height: 20),

            const Text(
              'Slider-Wert',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('Wert: ${sliderValue.toStringAsFixed(0)}'),
            const SizedBox(height: 20),

            const Text(
              'Einstellungen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Benachrichtigungen: ${notifications ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "Aktiv" : "Inaktiv"}'),
            Text('Offline-Modus: ${offlineMode ? "Aktiv" : "Inaktiv"}'),
          ],
        ),
      ),
    );
  }
}