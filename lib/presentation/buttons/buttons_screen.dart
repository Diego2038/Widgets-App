import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {

  const _ButtonsView( );

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            
            ElevatedButton( onPressed: () {}, child: const Text("Elevated Button") ),

            const ElevatedButton( onPressed: null, child: Text("Elevated dissabled"),  ),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm), 
              label: const Text("Elevated Icon")
            ),
    
            FilledButton(onPressed: (){}, child: const Text("Filled Button")),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.http_sharp), label: const Text("Filled button Icon")),

            OutlinedButton(onPressed: (){}, child: const Text("Outline button")),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.people_outline_sharp), label: const Text("Outline button icon")),
            
            CustomButton(),

            TextButton(onPressed: (){}, child: const Text("Text Button")),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.dark_mode), label: const Text("Text button icon"),),

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),




    
          ],
        ),
      ),
    );
  }
}



class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola mundo", style: TextStyle( color: Colors.white),),
          ),
        ),
      ),
    );
  }
}