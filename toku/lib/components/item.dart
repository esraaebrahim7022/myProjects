import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class Item  extends StatelessWidget {
   Item ({Key? key,required this.number, required this.color}) : super(key: key);
final Color color;
final Number number;
  @override
  Widget build(BuildContext context) {
    return 
        Container(
    
      height: 100,
    
       color:color,
    
      child: Row(
    
        children: [
    
          Container(color: Color(0xffFFF6DC),
    
            child:Image.asset(number.image)),
    
        Padding(
    
           padding:  EdgeInsets.only(left:16),
    
           child:  Column(
    
              mainAxisAlignment: MainAxisAlignment.center,
    
              children: [
    
                Text(number.jpName,style: TextStyle(color: Colors.white,
    
                fontSize: 18),),
    
                Text(number.enName,
    
                  style: TextStyle(color: Colors.white,
    
                fontSize: 18),),
    
              ],
    
            ),
    
         ),
    
          const Spacer(flex: 1,),
    
         Padding(
    
            padding:  const EdgeInsets.only(right: 16),
    
            child:IconButton( 
              splashColor: Colors.black,
              onPressed: (){
                final player = AudioPlayer();
                 player.play(AssetSource(number.sound)); 
              },
              
               icon: const Icon(
    
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
    
            ),)
    
          ),
    
        ],
    
      ),
    
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.number, required this.color}) : super(key: key);
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color:color,
      child: Row(
        children: [
           Padding(
      
             padding:  EdgeInsets.only(left:16),
      
             child:  Column(
      
                mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
      
                  Text(number.jpName,style: TextStyle(color: Colors.white,
      
                  fontSize: 18),),
      
                  Text(number.enName,
      
                    style: TextStyle(color: Colors.white,
      
                  fontSize: 18),),
      
                ],
      
              ),
      
           ),
      
            const Spacer(flex: 1,),
      
           Padding(
      
              padding:  const EdgeInsets.only(right: 16),
      
              child:IconButton( 
                splashColor: Colors.black,
                onPressed: (){
                  final player = AudioPlayer();
                   player.play(AssetSource(number.sound)); 
                },
                
                 icon: const Icon(
      
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
      
              ),)
      
            ),
        ],
      ),
    );
  }
}