// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opinionpoll_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpinionPollListResponseImpl _$$OpinionPollListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpinionPollListResponseImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      response: (json['response'] as List<dynamic>)
          .map((e) => OpinionPollResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OpinionPollListResponseImplToJson(
        _$OpinionPollListResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'response': instance.response,
    };
