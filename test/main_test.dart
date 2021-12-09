// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab1/main.dart';

void main() {
    group('tests for add component', () {
      CalculatorState? calculator;
      setUp(() {
        calculator = CalculatorState();
      });
      test('should return a + b when a and b are two positives.', () {
        // arrange
        int numOne = 10;
        int numTwo = 20;
        int expectedResult = numOne + numTwo;

        calculator!.calculation("1");
        calculator!.calculation("0");
        calculator!.calculation("+");
        calculator!.calculation("2");
        calculator!.calculation("0");
        String res = calculator!.calculation("=");

        // assert
        expect(res, expectedResult.toString());
      });
    });
}