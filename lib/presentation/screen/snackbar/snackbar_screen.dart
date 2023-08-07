import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const name = "snackbar_screen";
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(
        label: 'Ok!', 
        onPressed: (){},
      ),
      duration: const Duration( seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar( snackbar);
  }

  void openDialog ( BuildContext context ) {

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text("Estás seguro?"),
        content: const Text("Pepep el peep a s dqw e qwe qowe qwpeo qwo"),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: const Text("Cancelar")),
          FilledButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text("Aceptar")),
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Snackbars y diágolos"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            FilledButton(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text("Lorem impus von dal melr er werwek rwke rwe rkwe rkwe rkwe rkw qweqwe qpwe qw eqwp eqwe qpweqpwoek")
                ]
              );
            }, child: const Text("Licencias usadas")),

            FilledButton.tonal(onPressed: () => openDialog( context ), child: const Text("Mostrar licencias")),

          ],
        ),
      ),

      floatingActionButton:  FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar( context ),
      ),
    );
  }
}