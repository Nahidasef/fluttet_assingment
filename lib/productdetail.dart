import 'package:flutter/material.dart';
import 'package:product/buynow.dart';
import 'package:product/main.dart';

class Record extends StatelessWidget {
  const Record({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(


        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Detail product"),
        ),

        body: Center(
          child:Column(
            children: [
                Image.asset("assets/redmi.png",
                width:300,
                  height: 300,
                ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text  (
                                "Redmi Note 9",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ),
                              Container(
                                padding:const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                                child:  Text("Price :\$1000",
                                  style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                    color: Colors.redAccent,
                                    ),

                              ),
                            ),
                            ],
                          ),

                         ),
                        const SizedBox(height: 20),
                        const Text("Product deccription  :"
                                  "CPU :Octa-core 2.0 GHz"
                                  "GPU Mali-G52 MC2"
                                  "RAM (Memory) 3 GB, 4 GB"
                                  "Internal Storage 64 GB, 128 GB"
                                  "Memory Card Slot microSDXC (dedicated slot)"
                                  "Sensors Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass",
                          textAlign:TextAlign.start ,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,MaterialPageRoute(
                                builder: (context) => BuyNowPage(),
                            )
                            ); // Go back to the first page
                          },
                          child: Text('Buy now'),
                        ),

                       ],
                    ),
                  ),
              ),
            ],
          ),
        ),

      ),
    );
  }

}
