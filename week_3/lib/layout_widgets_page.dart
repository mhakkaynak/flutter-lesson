import 'package:flutter/material.dart';

class LayoutWidgetsPage extends StatelessWidget {
  const LayoutWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.black),
            Container(height: 100, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.blueAccent),
          ],
        )

        /*ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Center(
                child: Text('index: $index'),
              ),
            ),
          );
        },
      ),*/

        /*ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.amber),
            Container(height: 100, width: 100, color: Colors.pink),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.deepPurple),
            Container(height: 100, width: 100, color: Colors.blueAccent),
            Container(height: 100, width: 100, color: Colors.greenAccent),
            Container(height: 100, width: 100, color: Colors.yellowAccent),
            Container(height: 100, width: 100, color: Colors.indigo),
            Container(height: 100, width: 100, color: Colors.yellowAccent),
          ],
        )*/

        /* Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            )
          ],
        ),

        /* Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Text('Kbb'),
            Text('Flutter'),
            Text('Dart'),*/
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(
                  32,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Container Widget',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Flutter'),
                Text('Dart'),
                Text('Mobil'),
              ],
            )
          ],
        ),
      */
      ),
    */
        );
  }
}
