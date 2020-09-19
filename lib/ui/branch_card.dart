import 'package:flutter/material.dart';

class branch_card extends StatefulWidget {
  @override
  _branch_cardState createState() => _branch_cardState();
}

class _branch_cardState extends State<branch_card> {

  var recent_cafe = [
    {
      "name": "carlos1",
      "title": "green blaza",
    },
    {
      "name": "carlos2",
      "title": "green blaza",
    },
    {
      "name": "carlos3",
      "title": "green blaza",
    },
    {
      "name": "carlos4",
      "title": "green blaza",
    },
    {
      "name": "carlos5",
      "title": "green blaza",
    },
    {
      "name": "carlos6",
      "title": "green blaza",
    },
    {
      "name": "carlos7",
      "title": "green blaza",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: recent_cafe.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return single_cafe(
          name: recent_cafe[index]["name"],
          title: recent_cafe[index]["title"],
        );
      },
    );;
  }
}


class single_cafe extends StatelessWidget {
  final name ;
  final title ;

  single_cafe({this.name,this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      title: Text(
                        "$name",
                        style: new TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                          fontSize: 20.0
                        ),
                      ),
                      subtitle: Text(
                        "$title",
                        style: new TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,),
                      ),
                      //leading: Text(name , style: new TextStyle( fontWeight: FontWeight.bold),),

                    ),
                  ),
                  /*child: Image.asset(
                  pic,
                  fit: BoxFit.contain,
                ),*/
                  child: Icon(Icons.fastfood,size: 100.0,)
              ),
            ),
          )),
    );
  }
}

