import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leaflet Map dans Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LeafletMapScreen(),
    );
  }
}

class LeafletMapScreen extends StatelessWidget {
  const LeafletMapScreen({super.key});

  static const LatLng _initialPosition = LatLng(
    48.683331,
    6.2,
  ); // Métropole du Grand Nancy

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Leaflet Map dans Flutter")),
      body: FlutterMap(
        options: MapOptions(initialCenter: _initialPosition, initialZoom: 12.0),
        children: [
          // Leaflet Tile Layer (OpenStreetMap by default)
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),

          // Add Markers (Example: Red Pin)
          MarkerLayer(
            markers: [
              Marker(
                point: _initialPosition,
                width: 80,
                height: 80,
                child: const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
