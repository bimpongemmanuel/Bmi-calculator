import 'dart:math';

import 'package:bmi_app/style.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
    bool isGenderSelected =false;

   double userHeight = 0.0;

   int userAge = 1;
   int userWeight = 1;
      
      String result = 'Result';
      String bmiInterpretation = '';

   calculateBmi(){
    if(userHeight == 0.0 || userWeight == 1){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select your height and weight'),));
    }else{}
       double bmi = userWeight/ pow(userHeight,2)*703;
       setState(() {
      
         result=bmi.toStringAsFixed(2);
         if(bmi<=18.4){
          bmiInterpretation = 'UnderWeight';
         }else if (bmi>= 18.5 && bmi <= 24.9){
          bmiInterpretation = 'Normal BMI';
         }else if (bmi>=25.0 && bmi <=39.9){
          bmiInterpretation = 'OverWeight';
         }else if (bmi>=41.0){
          bmiInterpretation = 'Obese';
         }
       });

   }
  @override
  Widget build(BuildContext context) {
    TextStyle globalTextStyle = Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 45,color:Colors.white,fontWeight:FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a3794),
        title: Text('BMI Calculator'),
        actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.settings))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        decoration: appGradient(),
        child: Column(
          children: [
            Column(
              children: [
                Text(result,style:globalTextStyle),
                Text(bmiInterpretation,
                style:globalTextStyle.copyWith(fontSize:16,color:Color(0xffb9abd2),
                 ),
                ),
                const Divider(
                  color: Color(0xffb9abd2),
                ),
                SizedBox(height: 10,)
                             ],
            ),
            Expanded(
              child: Row(
                    children: [
                      BmiCard(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Age',style: globalTextStyle.copyWith(fontSize: 20),),
                            Text(userAge.toString(),style: globalTextStyle,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff7D689F),
                                  child: IconButton(
                                    onPressed: (){
                                      if(userAge==1){
                                         setState(() {
                                        userAge=1;
                                      });
                                      }else{
                                         setState(() {
                                        userAge--;
                                      });
                                      }
                                     
                                    }, 
                                    icon: const Icon(Icons.remove)),
                                ),
                                 CircleAvatar(
                                  backgroundColor: Color(0xff7D689F),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        userAge++;
                                      });
                                    }, 
                                    icon: const Icon(Icons.add)),
                                )
                              ],),
                            )
                          ],
                        ),
                      ),
                      BmiCard(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Weight (Kg)',style: globalTextStyle.copyWith(fontSize: 20),),
                            Text(userWeight.toString(),style: globalTextStyle,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xff7D689F),
                                  child: IconButton(
                                    onPressed: (){
                                      if(userWeight==1){
                                        setState(() {
                                        userWeight=1;
                                      });
                                      }else{
                                        setState(() {
                                        userWeight--;
                                      });
                                      }
                                      
                                    }, 
                                    icon: const Icon(Icons.remove)),
                                ),
                                 CircleAvatar(
                                  backgroundColor: const Color(0xff7D689F),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        userWeight++;
                                      });
                                    },
                                     icon: const Icon(Icons.add)),
                                )
                              ],),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
            ),
            BmiCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Height',style: globalTextStyle.copyWith(fontSize: 20),),
                  Slider(
                    min: 0.0,
                    max: 100.0,
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey,
                    thumbColor: const Color(0xffE21CC8),
                    value: userHeight, 
                    onChanged: (value){
                      setState(() {
                        userHeight = value;
                      });
                    }),
                  Text('${userHeight.toStringAsFixed(1)}cm,',
                  style: globalTextStyle,)
                ],
              ),
            ),
               Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text('Female',style: globalTextStyle.copyWith(fontSize: 16)),
                      activeColor: Colors.red,
                      value: true, 
                      groupValue: isGenderSelected,
                       onChanged: (bool? value){
                        setState(() {
                          isGenderSelected = value!;
                        });
                       },
                    ),
                  ),
                   Expanded(
                    child: RadioListTile(
                      title: Text('Male',style: globalTextStyle.copyWith(fontSize: 16),),
                      activeColor: Colors.red,
                      value: false,
                       groupValue: isGenderSelected,
                        onChanged: (bool? value){
                          setState(() {
                            isGenderSelected = value!;
                          });
                        },
                    ),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(onPressed: (){
                  calculateBmi();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('CALCULATE YOUR BMI',style: globalTextStyle.copyWith(fontSize: 20),),
                ),
                color: Color(0xffC01FAC),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Container(height: 50,)
          ],
        ),
      ),
    );
  }
}

class BmiCard extends StatelessWidget {
   BmiCard({
    Key? key,this.child
  }) : super(key: key);
      Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff533282)
        ),
        child: child
      ),
    );
  }
}