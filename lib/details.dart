import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  const Details({
    super.key,
    required this.img,
    required this.title,
    required this.description,
  });

  static const name = "details";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Expanded(
            child: Image.asset(
              "assets/$img",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.supervised_user_circle_rounded,
                            size: 30,
                            color: colors.primary,
                          ),
                          Text("Barbero Jhon Doe"),
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 30,
                            color: colors.primary,
                          ),
                          Icon(
                            Icons.wechat_sharp,
                            size: 30,
                            color: colors.primary,
                          ),
                          Icon(Icons.search, size: 30, color: colors.primary),
                        ],
                      ),
                    ],
                  ),

                  Text(description),
                  Text(
                    "Jueves 06 de agosto de 2025",
                    style: TextStyle(
                      color: colors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Divider(color: colors.primary),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 20,
                      children: [
                        _Schedule(day: "Lunes", number: 4, isActive: true),
                        _Schedule(day: "Martes", number: 5, isSchedule: true),
                        _Schedule(
                          day: "Miercoles",
                          number: 6,
                          isSchedule: true,
                        ),
                        _Schedule(day: "Jueves", number: 7),
                        _Schedule(day: "Viernes", number: 8),
                        _Schedule(day: "Sabado", number: 9),
                        _Schedule(day: "Domingo", number: 10),
                      ],
                    ),
                  ),

                  Center(
                    child: SizedBox(
                      width: width * .9,
                      height: height * .25,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 2.5,
                        ),

                        children: [
                          _Hour(
                            colors: colors,
                            turn: "07:00 - 09:00",
                            isActive: true,
                          ),
                          _Hour(colors: colors, turn: "09:00 - 11:00"),
                          _Hour(colors: colors, turn: "11:00 - 13:00"),
                          _Hour(colors: colors, turn: "13:00 - 15:00"),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(colors.primary),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Agendar cita",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Hour extends StatelessWidget {
  final ColorScheme colors;
  final String turn;
  final bool isActive;
  const _Hour({
    super.key,
    required this.colors,
    required this.turn,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 50,
        width: 350,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isActive ? colors.primaryContainer : null,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isActive ? Colors.grey : colors.primary,
              width: 2,
            ),
          ),
          child: Text(
            turn,
            textAlign: TextAlign.center,
            style: TextStyle(color: isActive ? Colors.grey : null),
          ),
        ),
      ),
    );
  }
}

class _Schedule extends StatelessWidget {
  final String day;
  final int number;
  final bool isActive;
  final bool isSchedule;

  const _Schedule({
    super.key,
    required this.day,
    required this.number,
    this.isActive = false,
    this.isSchedule = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: 120,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isActive ? colors.primary : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isActive ? colors.primary : Colors.grey,
          width: 2,
        ),
      ),
      child: Column(
        spacing: 10,
        children: [
          Text(
            day,
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
          Text(
            number.toString(),
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: isSchedule ? Colors.red : Colors.green,
          ),
        ],
      ),
    );
  }
}
