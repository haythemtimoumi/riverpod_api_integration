// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionResponseImpl _$$QuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      optionsList: (json['optionsList'] as List<dynamic>)
          .map((e) => OptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      openForCustomAnswer: json['openForCustomAnswer'] as bool,
    );

Map<String, dynamic> _$$QuestionResponseImplToJson(
        _$QuestionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'optionsList': instance.optionsList,
      'openForCustomAnswer': instance.openForCustomAnswer,
    };
