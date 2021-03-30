import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';

class ButtonPlusScreen extends StatefulWidget {
  @override
  _ButtonPlusScreenState createState() => _ButtonPlusScreenState();
}

class _ButtonPlusScreenState extends State<ButtonPlusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextPlus(
          'ButtonPlus Example',
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.red,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildExample1(),
            _buildExample2(),
            _buildExample3(),
            _buildExample4(),
          ],
        ),
      ),
    );
  }

  Widget _buildExample1() {
    return ButtonPlus(
      width: 200,
      height: 60,
      radius: RadiusPlus.all(12),
      color: Colors.blue,
      enabled: true,
      splashColor: Colors.red,
      highlightColor: Colors.yellow,
      focusColor: Colors.green,
      hoverColor: Colors.pink,
      child: TextPlus(
        'EXAMPLE 1',
        color: Colors.white,
      ),
      onPressed: () {
        print('EXAMPLE 1');
      },
    );
  }

  Widget _buildExample2() {
    return ButtonPlus(
      margin: EdgeInsets.only(top: 48),
      width: 200,
      height: 60,
      radius: RadiusPlus.bottom(20),
      color: Colors.yellow,
      splashColor: Colors.red,
      shadows: [
        ShadowPlus(
          color: Colors.red,
          moveDown: -10,
          moveRight: -10,
          blur: 5,
          spread: 1,
          opacity: 0.2,
        ),
        ShadowPlus(
          color: Colors.blue,
          moveDown: 10,
          moveRight: 10,
          blur: 10,
          spread: 5,
          opacity: 0.5,
        ),
      ],
      border: BorderPlus(
        color: Colors.black,
        width: 2,
      ),
      child: TextPlus(
        'EXAMPLE 2',
        color: Colors.white,
      ),
      onPressed: () {
        print('EXAMPLE 2');
      },
    );
  }

  Widget _buildExample3() {
    return ButtonPlus(
      margin: EdgeInsets.only(top: 48),
      width: 200,
      height: 60,
      isCircle: true,
      gradient: GradientPlus.linear(
        colors: [
          Colors.yellow,
          Colors.orange,
          Colors.pink,
        ],
        begin: Alignment.topLeft,
        end: Alignment.centerRight,
      ),
      innerShadows: [
        InnerShadowPlus(
          color: Colors.green,
          blur: 10,
        )
      ],
      child: TextPlus(
        'EXAMPLE 3',
        color: Colors.white,
      ),
      onPressed: () {
        print('EXAMPLE 3');
      },
    );
  }

  bool isLoading = false;

  Widget _buildExample4() {
    return ButtonPlus(
      margin: EdgeInsets.only(top: 48),
      width: 200,
      height: 60,
      color: Colors.black,
      radius: RadiusPlus.only(topLeft: 40, bottomRight: 10),
      skeleton: SkeletonPlus.automatic(enabled: isLoading),
      child: TextPlus(
        'EXAMPLE 4',
        color: Colors.white,
      ),
      onPressed: () {
        print('EXAMPLE 4');

        setState(() {
          isLoading = !isLoading;
        });
        Future.delayed(Duration(seconds: 5), () {
          setState(() {
            isLoading = !isLoading;
          });
        });
      },
    );
  }
}
