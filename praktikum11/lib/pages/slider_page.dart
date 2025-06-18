import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  final void Function(double)? onValueChanged;

  const SliderPage({super.key, this.onValueChanged});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Seite'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.pop(context, _sliderValue);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Wert: ${_sliderValue.toStringAsFixed(0)}'),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.toStringAsFixed(0),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                  widget.onValueChanged?.call(value); // hier wird die Funktion ausgeführt
                });
              },
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(value: _sliderValue / 100),
            const SizedBox(height: 20),
            Container(
              width: 100 + _sliderValue,
              height: 50,
              color: Colors.blue.withOpacity(_sliderValue / 100),
              alignment: Alignment.center,
              child: const Text(
                'Veränderlich',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}