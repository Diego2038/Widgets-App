import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_controls_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _uiControlsView(),
    );
  }
}

class _uiControlsView extends StatefulWidget {
  const _uiControlsView();

  @override
  State<_uiControlsView> createState() => _uiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _uiControlsViewState extends State<_uiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Controles adicionales"),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$selectedTransportation'),
          initiallyExpanded: true,
          children: [
            RadioListTile(
              title: const Text("By Car"),
              subtitle: const Text("Viajar por carro"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text("By Boat"),
              subtitle: const Text("Viajar por barco"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text("By Plane"),
              subtitle: const Text("Viajar en avión"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text("By Submarine"),
              subtitle: const Text("Viajar por submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
            title: const Text("¿Desayuno?"),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;   
            })
        ),
        CheckboxListTile(
            title: const Text("¿Almuerzo?"),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
            })
        ),
        CheckboxListTile(
            title: const Text("¿Cena?"),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
            })
        ),
      ],
    );
  }
}

/* class _RadioListTileCustomed extends StatelessWidget {

  Transportation value;
  Transportation groupValue;
  VoidCallback onChanged;

  _RadioListTileCustomed({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value, 
      groupValue: groupValue, 
      onChanged: onChanged,
    );
  }
} */