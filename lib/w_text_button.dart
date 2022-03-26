import 'package:flutter/material.dart';

class EstadoTextButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _EstadoTextButton();

}

class _EstadoTextButton extends State<EstadoTextButton>{
  String contenido="The following Yes/No are TextButtons. They are aligned to bottom right of the content";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget TextButton"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30,),
          Text("The following Yes/No are TextButtons. They are aligned to bottom right of the content"),
          SizedBox(height: 10,),
          Text(contenido),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: (){setState(() {
                contenido="Las siguientes opciones Yes/No son TextButton. Están alineados en la parte inferior derecha del contenido.";
              });}, child: Text("Yes")),
              TextButton(onPressed: (){setState(() {
                contenido="The following Yes/No are TextButtons. They are aligned to bottom right of the content";
              });}, child: Text("No")),
            ],
          ),
        ],
      ),
    );
  }
}
