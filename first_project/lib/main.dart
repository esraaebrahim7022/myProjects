
import 'package:flutter/material.dart';

void main(){
  runApp( BusniessCard());
}
class BusniessCard extends StatelessWidget { 
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff5E7EA5),
        body:
 Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                 child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/cartoon-children.jpg'),
                 ),
               ),
              const Text('ESRAA EBRAHIM',
               style: TextStyle(
                color: Colors.white,
               fontSize: 32,
               fontFamily: 'Pacifico',
               ),
               ),
              const Text('Flutter Devolper',
               style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
               ),
               ),
              const Divider(
               color:Colors.deepOrange ,
               thickness: 1,
               indent: 60,
               endIndent: 60,
               height: 5,
               ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.phone,
                        size: 35,
                        color: Color(0xff5E7EA5) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:16),
                      child: Text('+201090772472',
                       style: TextStyle(fontSize: 24),
                       ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: const Row(
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.email,
                        size: 35,
                        color: Color(0xff5E7EA5) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:16),
                      child: Text('esraaebrahim66@icloud.com',
                       style: TextStyle(fontSize: 20),
                       ),
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