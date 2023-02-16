// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:avatars/widgets/custom_dropDown.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight= MediaQuery.of(context).size.height;
    _deviceWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child: Container(
          //color: Colors.red,
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookTravelerWidget(),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroImageWidget())
  ]), 
      ),
    )
    );
  }
  Widget _pageTitle(){
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70.0,
        fontWeight: FontWeight.w800,
      ),
      );
  }


 Widget _astroImageWidget(){
    return Container(
      height: _deviceHeight *0.50,
      width: _deviceWidth*0.65,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("assets/images/astro_moon.png")),
        ),
      );
  }
Widget _destinationDropDown (){
    return CustomDropDownButtonClass(
      values: [
        'Thika Road Station',
        'Nanyuki Station',
      ],
      width: _deviceWidth,
    );
  }

Widget _bookTravelerWidget(){
  return Container(
    height: _deviceHeight*0.25,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _destinationDropDown(),
        _travellersInformationWidget(),
        _rideWidget(),
      ],
    ),
  );
}

Widget _travellersInformationWidget(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CustomDropDownButtonClass(
          values: [
            '1',
            '2',
            '3',
            '4'
          ],
          width: _deviceWidth * 0.45,
        ),

        CustomDropDownButtonClass(
          values: [
            'Economy',
            'Business',
            'Second Class',
            'First Class'
          ],
          width: _deviceWidth * 0.40,
        ),
    ],
  );
}

Widget _rideWidget (){
  return Container(
   margin: EdgeInsets.only(bottom: _deviceHeight*0.01),
   height: _deviceHeight*0.055,
    width: _deviceWidth,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: MaterialButton(
      onPressed: () {},
      child: const Text(
        'Book Ride!', 
        style: TextStyle(
          color: Colors.black),
      ),
  ),);
}

}