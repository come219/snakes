// screen preTrailer donation Scene
// Trailer for the game
// donation page
//
// Scene/Screen
//seb 3/6/23

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

///

import 'package:flutter/material.dart';

Future<void> makePayment() async {
  final url =
      'https://your-shopify-store.myshopify.com/admin/api/2021-07/orders.json';
  final username = 'your-api-key';
  final password = 'your-api-password';

  final body = jsonEncode({
    'order': {
      'email': 'customer@example.com',
      'financial_status': 'paid',
      'line_items': [
        {
          'title': 'Product Name',
          'price': '10.00',
          'quantity': 1,
        },
      ],
    },
  });

  final response = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
    },
    body: body,
    encoding: Encoding.getByName('utf-8'),
    // Authenticate using API credentials
    // Use Base64-encoded API key and password
    // 'Basic <base64-encoded api-key:api-password>'
    // See Shopify API documentation for details
    // Example: 'Basic YXJpYW5zOnBhc3N3b3Jk'
    // Make sure to replace <api-key> and <api-password> with your own values

    // headers: {
    //   'Authorization': 'Basic <base64-encoded api-key:api-password>',
    // },
  );

  if (response.statusCode == 201) {
    print('Payment successfully created.');
  } else {
    print('Payment creation failed with status code: ${response.statusCode}');
  }
}

class preTrailerDonationScreen extends StatefulWidget {
  @override
  _PreTrailerDonationScreenState createState() =>
      _PreTrailerDonationScreenState();
}

class _PreTrailerDonationScreenState extends State<preTrailerDonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make a Donation'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('back button - top bar'),
            SizedBox(
              height: 20,
            ),
            Text('Next update:  00:00:00:00'),
            Text('Next release: 00:00:00:00'),
            //CountdownTimer(),
            SizedBox(
              height: 20,
            ),
Text('Donation thanks image - '),
SizedBox(
              height: 20,
            ),

            DonationGoalContainer(
              currentAmount: 100.2,
              goalAmount: 5000,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                makeDonationContainer(),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                linkGOFUNDMEContainer(),
                linkGameWebsiteContainer(),
                linkGameStudioContainer(),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Text('Lemonade Stand game - '),
          ],
        ),
      ),
    );
  }

  void makeDonation() {
    // Implement your payment gateway integration logic here
    // This could involve opening a payment gateway SDK or making an API call
    // to process the payment
    // Example:
    // YourPaymentGatewaySDK.openPaymentScreen();
    // or
    // YourPaymentGatewayAPI.makePayment();
  }

  Widget makeDonationContainer() {
    return InkWell(
      onTap: () {
        // Add your onPressed logic here
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black,
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Make Donation',
          //'Share above 1000 / next level',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

Widget linkGameStudioContainer() {
  return InkWell(
    onTap: () {
      // Add your onPressed logic here
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Game Studio',
        //'Share above 1000 / next level',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget linkGameWebsiteContainer() {
  return InkWell(
    onTap: () {
      // Add your onPressed logic here
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Game Website',
        //'Share above 1000 / next level',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget linkGOFUNDMEContainer() {
  return InkWell(
    onTap: () {
      // Add your onPressed logic here
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        'GoFundMe.com',
        //'Share above 1000 / next level',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class DonationGoalContainer extends StatelessWidget {
  final double goalAmount;
  final double currentAmount;

  DonationGoalContainer(
      {required this.goalAmount, required this.currentAmount});

  @override
  Widget build(BuildContext context) {
    final progress = (currentAmount / goalAmount).clamp(0.0, 1.0);
    final progressBarColor = progress >= 1.0 ? Colors.green : Colors.blue;

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Donation Goal',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Stack(
            children: [
              Container(
                height: 10.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              FractionallySizedBox(
                widthFactor: progress,
                child: Container(
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: progressBarColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${currentAmount.toStringAsFixed(2)} raised',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${goalAmount.toStringAsFixed(2)} goal',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  DateTime _targetDate = DateTime(2025, 6, 4);
  Duration _remainingTime = Duration();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      final now = DateTime.now();
      if (now.isBefore(_targetDate)) {
        setState(() {
          _remainingTime = _targetDate.difference(now);
        });
      } else {
        timer.cancel();
      }
    });
  }

  String _formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countdown Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Countdown to June 4, 2025:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              _formatTime(_remainingTime),
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// old impl
class old_preTrailer_DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make a Donation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Call the payment gateway here
            //makeDonation();
          },
          child: Text('Make Donation'),
        ),
      ),
    );
  }
}
