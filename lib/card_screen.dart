import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
      backgroundColor: Colors.green,
        actions: const [
          CircleAvatar(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('Card',style: TextStyle(color: Colors.white,fontSize: 40),),
            const SizedBox(height: 10,),
            const Text('Simple and easy to use app',style: const TextStyle(color: Colors.white,fontSize: 20),),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 170,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.book,color: Colors.yellow,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Text',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('5 Text Books',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.home,color: Colors.yellow,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Address',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('5 Text Books',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 170,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.chair,color: Colors.red,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Character',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('5 new characters',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.card_giftcard,color: Colors.black,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Bank card',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('5 bank card',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 170,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.key,color: Colors.yellow,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Password',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('new password',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Icon(Icons.handshake,color: Colors.blue,size: 70,),
                        const SizedBox(height: 10,),
                        const Text('Logistics',style: TextStyle(color: Colors.black,fontSize: 30)),
                        const SizedBox(height: 10,),
                         const Text('Your log here',style: TextStyle(color: Colors.black,fontSize: 10)),
                      ],
                    ),
                  )
                ],
              ),
            ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  color: Colors.white,
                  height: 80,
                   child: Row(
                        children: [
                        Icon(Icons.settings,size: 40,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text('Settings',style: TextStyle(fontSize: 20),),
                                Text('All your settings here',style: TextStyle(fontSize: 10),)

                              ],
                            ),
                          ),
                        )
                     ],
                   )
              ),
               )
          ],
        ),
      ),
     );
  }
}