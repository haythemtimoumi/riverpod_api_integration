// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerResponseImpl _$$AnswerResponseImplFromJson(Map<String, dynamic> json) =>
    _$AnswerResponseImpl(
      userId: json['userId'] as String,
      questionAnsweerId: json['questionAnsweerId'] as String,
      userCustomAnswer: json['userCustomAnswer'] as String?,
    );

Map<String, dynamic> _$$AnswerResponseImplToJson(
        _$AnswerResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'questionAnsweerId': instance.questionAnsweerId,
      'userCustomAnswer': instance.userCustomAnswer,
    };
