import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var ftcontroller = TextEditingController();

  var wtcontroller = TextEditingController();

  var incontroller = TextEditingController();

  var result = "";

  var col = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI APP",
      home: Scaffold(
        backgroundColor: col ,
        appBar: AppBar(title: Text("BMI APP", style: TextStyle(fontSize: 15))),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI", style: TextStyle(fontSize: 35)),
                SizedBox(height: 20),
                TextField(
                  controller: wtcontroller,
                  decoration: InputDecoration(
                    label: Text("Enter your weight (in Kgs)"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    label: Text("Enter your height (in Feet)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: incontroller,
                  decoration: InputDecoration(
                    label: Text("Enter your height (in inch)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      var feet = ftcontroller.text.toString();
                      var inch = incontroller.text.toString();
                      var weight = wtcontroller.text.toString();
                  // ignore: unrelated_type_equality_checks
                  if (feet!="" && inch!="" && weight!= "" ){
                      var iwt =int.parse(weight);
                      var ift =int.parse(feet);
                      var iin =int.parse(inch);

                      var  tinch =(ift*12)+ iin;

                      var  tCm =(tinch)+ 2.54;

                      var  tm =tCm /100;

                      var  bmi =iwt/(tm*tm);

                      var msg ="";

                      if (bmi > 25){
                          msg = "your are overweight";
                          col =  Colors.orange.shade100;
                      }
                      else if (bmi <18){
                          msg = "your are underweight";
                          col =  Colors.red.shade100;

                      }
                      else{
                          msg = "     your are healthy";
                          col =  Colors.green.shade100;

                      }

                       setState((){
                      result = "$msg \n Your BMI is : ${bmi.toStringAsFixed(4)}";
                      
                      });



                  }

                  else{
                      setState((){
                    result ="Please fill all the required blank!!";     
                      });
                    
                  }

                    },
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(result, style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
