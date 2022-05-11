import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                FlutterMap(
                  options: MapOptions(
                    center: LatLng(-26.899912, -51.853951),
                    zoom: 6.2,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "http://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                      attributionBuilder: (_) {
                        return const Text(
                          "Fonte: Climatos",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Positioned(
                  right: 10.0,
                  top: 70.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.notifications_none_sharp),
                                Text(
                                  "Alertas",
                                  style: TextStyle(fontSize: 9.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.65,
                          width: 58,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.settings_outlined),
                                Text(
                                  "Config",
                                  style: TextStyle(fontSize: 9.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 200.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.search),
                                Text(
                                  "Busca",
                                  style: TextStyle(fontSize: 9.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.65,
                          width: 58,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.gps_not_fixed),
                                Text(
                                  "Meu local",
                                  style: TextStyle(fontSize: 8.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 30.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.layers_outlined),
                                Text(
                                  "Camadas",
                                  style: TextStyle(fontSize: 9.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.65,
                          width: 58,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.details),
                                Text(
                                  "Busca",
                                  style: TextStyle(fontSize: 9.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.65,
                          width: 58,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.bolt),
                                Text(
                                  "Descarga\natmosférica",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 7,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hoje, 10 de maio",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Última atualização: 16:12",
                      style: TextStyle(fontSize: 11.0),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Row(
                        children: const [
                          ButtonFooter(
                            icon: Icons.play_arrow,
                          ),
                          ButtonFooter(
                            icon: Icons.pause,
                          ),
                        ],
                      ),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(left: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("10h"),
                            Text("11h"),
                            Text("12h"),
                            Text("13h"),
                            Text("Agora")
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonFooter extends StatelessWidget {
  final IconData icon;

  const ButtonFooter({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
          child: InkWell(
        onTap: () {
          debugPrint('ok');
        },
        child: Icon(
          icon,
          color: Colors.white,
        ),
      )),
      //color: Colors.black,
    );
  }
}
