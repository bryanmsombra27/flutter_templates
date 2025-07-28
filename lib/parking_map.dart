import 'package:flutter/material.dart';

class ParkingMap extends StatelessWidget {
  final lista = List.generate(30, (index) => index + 1);

  ParkingMap({super.key});

  static const name = "parking_map";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(title: Text("Estacionamiento")),
      body: SingleChildScrollView(
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            _ParkingContainer(
              width: width,
              lista: lista,
              condition: 0,
              icon: Icons.car_crash,
              title: "Vehiculos Bajos",
            ),
            _ParkingContainer(
              width: width,
              lista: lista,
              condition: 1,
              icon: Icons.directions_bus_filled_rounded,
              title: "Vehiculos Medianos",
            ),
            _ParkingContainer(
              width: width,
              lista: lista,
              condition: 0,
              title: "Vehiculos Grandes",
              icon: Icons.fire_truck,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _ParkingContainer extends StatelessWidget {
  const _ParkingContainer({
    super.key,
    required this.width,
    required this.lista,
    required this.title,
    required this.condition,
    required this.icon,
  });

  final double width;
  final List<int> lista;
  final String title;
  final int condition;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width * .9,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.black12,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            Icon(icon, size: 50),

            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  ...lista.map(
                    (index) => _parkingSite(
                      wasParked: index % 2 == condition,
                      index: index,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _parkingSite extends StatelessWidget {
  final bool wasParked;
  final int index;

  const _parkingSite({super.key, required this.wasParked, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
          width: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: wasParked ? Colors.red : Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: wasParked
              ? Icon(Icons.car_crash, color: Colors.white)
              : Text("$index", textAlign: TextAlign.center),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
