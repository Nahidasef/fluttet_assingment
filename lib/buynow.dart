import 'package:flutter/material.dart';
import 'package:product/productdetail.dart';
class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:20, width: 10),
            Row(

              children: [
                Image.asset("assets/bkash.png",height:50, width: 80),
                Image.asset("assets/mcard.png",height:50, width: 120),
                Image.asset("assets/nagad.png",height:50, width: 90),
                Image.asset("assets/visa.png",height:50, width: 70),
              ],
            ),
            SizedBox(height: 210),
            DropdownButton<String>(
              items: <String>['Bkash', 'Nagad', 'Visa card', 'master card']
                  .map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {
              },
              hint: Text('Select Your Payment method'),
            ),
            SizedBox(height: 92),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,MaterialPageRoute(
                  builder: (context) => Record(),
                )
                ); // Go back to the first page
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}