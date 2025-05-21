// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionResponseImpl _$$OptionResponseImplFromJson(Map<String, dynamic> json) =>
    _$OptionResponseImpl(
      id: json['id'] as String,
      option: json['option'] as String,
      userAnswerOpinionPollRequestModels:
          (json['userAnswerOpinionPollRequestModels'] as List<dynamic>)
              .map((e) => AnswerResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$OptionResponseImplToJson(
        _$OptionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'userAnswerOpinionPollRequestModels':
          instance.userAnswerOpinionPollRequestModels,
    };
