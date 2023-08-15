import 'package:flutter/material.dart';
import 'package:instant/instant.dart';

/// Flutter code sample for [Timezone change template].

void main() {
  print(dateTimeToZone(zone: "PST", datetime: DateTime(2023)));
   print(curDateTimeByZone(zone: "PST", ));
  var SanFran =
      curDateTimeByZone(zone: 'PDT');
  print(formatTime(time: SanFran,
  divider: "/",
  format: "HHMM",
  is24hr: true

  )); //prints format time in PDT
  
  print(formatDate(date: SanFran,
  divider: "/",
  format: "DDMMYYYY"
  )); //prints format date in PDT
  runApp(const TimezoneChangeTemplate());}

class TimezoneChangeTemplate extends StatelessWidget {
  const TimezoneChangeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Convert Timezone Template",
      theme: ThemeData(
      primaryColor:Colors.green,

      appBarTheme: const AppBarTheme(backgroundColor: Colors.green)
      ),
    
      home:const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timezone Change'),
        
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
Text("Date Time Before: ${DateTime.now()}"),//Normal  Datetime text
Text("Date Time After changing: ${curDateTimeByZone(zone: "PST")}"),//Datetime text according to PST timezone entered or choosen
Text("Date Time After changing: ${curDateTimeByZone(zone: "PDT")}"),//Datetime text according to PDT timezone
])
      );
  }
}
