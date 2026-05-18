import 'package:flutter/material.dart';

void main() {
  runApp(VentusPOS());
}

class VentusPOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ventus Spa POS',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: POSHome(),
    );
  }
}

class POSHome extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {"name": "Traditional Massage", "price": 120},
    {"name": "Oil Massage", "price": 150},
    {"name": "Facial Care", "price": 180},
    {"name": "Sunburn Repair", "price": 200},
    {"name": "Borneo Herbal Massage", "price": 220},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ventus Spa POS System"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(services[index]["name"]),
              subtitle: Text("RM ${services[index]["price"]}"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Add"),
              ),
            ),
          );
        },
      ),
    );
  }
}
