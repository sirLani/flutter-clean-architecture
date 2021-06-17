﻿import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;
  

  NumberTrivia({@required this.number, @required this.text})
      : super([text, number]);
}
