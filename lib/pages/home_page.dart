import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/custom_drop_down_button.dart';

class HomePage extends StatelessWidget {
  late double _height;
  late double _width;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [_pageTitle(), _rideButton()],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: _astroImageWidget()),
                  ],
                ))));
  }

  Widget _astroImageWidget() {
    return Container(
      height: _height * 0.50,
      width: _width * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/astro_moon.png"),
            fit: BoxFit.fill),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _bookRideWidget(),
        ],
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> _items = ["James Web Station", "International Space Station"];
    return CustomDropDownButton(width: _width, values: _items);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        CustomDropDownButton(
            width: _width * 0.45, values: const ['1', '2', '3', '4']),
        CustomDropDownButton(
            width: _width * 0.40,
            values: const ['Economy', 'Business', 'First', 'private']),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _height * 0.001),
      width: _width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride!!",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
