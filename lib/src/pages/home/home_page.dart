import 'package:appmath/src/pages/home/calculetor/calculate_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mathmaster",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MathMaster'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              bottom: -200,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      iconSize: 22.0 * 1.7,
                      icon: Icon(Icons.home),
                      onPressed: () {
                        // การทำงานเมื่อคลิกปุ่มบ้าน
                      },
                    ),
                    IconButton(
                      iconSize: 22.0 * 1.7,
                      icon: Icon(Icons.calculate),
                      onPressed: () {
                        
                        // การทำงานเมื่อคลิกปุ่มเลขาคณิต
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => CalculatorApp());
                        Navigator.of(context).push(materialPageRoute);
                      },
                    ),
                    IconButton(
                      iconSize: 22.0 * 2.5,
                      icon: Icon(Icons.camera),
                      color: Colors.pink,
                      onPressed: () {
                        // การทำงานเมื่อคลิกปุ่มกล้อง
                      },
                    ),
                    IconButton(
                      iconSize: 22.0 * 1.7,
                      icon: Icon(Icons.book),
                      onPressed: () {
                        // การทำงานเมื่อคลิกปุ่มหนังสือ
                      },
                    ),
                    IconButton(
                      iconSize: 22.0 * 1.7,
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {
                        // การทำงานเมื่อคลิกปุ่มกระดิ่ง
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



  // Define a function to calculate the result
void _calculateResult() {
  // Perform the calculation here
  // For example, let's assume the result is 100
  final result = 100;

  // Show the result in a dialog
  var context;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Result'),
        content: Text('The result is $result'),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}


