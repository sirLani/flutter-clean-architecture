import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterarchi/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutterarchi/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: 'sample text', number: 1);

  test(
    "should be a subclass of number trivia entity",
    () async {
      //assert
      expect(
        tNumberTriviaModel,
        isA<NumberTrivia>(),
      );
    },
  );

  group('from json', () {
    test('should return a valid model when the Json number is an integer',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      //act

      final result = NumberTriviaModel.fromJson(jsonMap);

      // assert

      expect(result, tNumberTriviaModel);
    });

    test('should return a valid model when the Json number is a double',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act

      final result = NumberTriviaModel.fromJson(jsonMap);

      // assert

      expect(result, tNumberTriviaModel);
    });
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        final result = tNumberTriviaModel.toJson();

        final expectedMap = {
          "text": "sample text",
          "number": 1,
        };

        expect(result, expectedMap);
      },
    );
  });
}
