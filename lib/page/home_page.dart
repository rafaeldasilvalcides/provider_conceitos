import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Conceito d provider'),),
           body:  Center(
            child:Text(Provider.of(context, listen: false).getName())
           ),
       );
  }
}