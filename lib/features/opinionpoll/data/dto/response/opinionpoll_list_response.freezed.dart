// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opinionpoll_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpinionPollListResponse _$OpinionPollListResponseFromJson(
    Map<String, dynamic> json) {
  return _OpinionPollListResponse.fromJson(json);
}

/// @nodoc
mixin _$OpinionPollListResponse {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<OpinionPollResponse> get response => throw _privateConstructorUsedError;

  /// Serializes this OpinionPollListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpinionPollListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpinionPollListResponseCopyWith<OpinionPollListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpinionPollListResponseCopyWith<$Res> {
  factory $OpinionPollListResponseCopyWith(OpinionPollListResponse value,
          $Res Function(OpinionPollListResponse) then) =
      _$OpinionPollListResponseCopyWithImpl<$Res, OpinionPollListResponse>;
  @useResult
  $Res call(
      {int statusCode, String message, List<OpinionPollResponse> response});
}

/// @nodoc
class _$OpinionPollListResponseCopyWithImpl<$Res,
        $Val extends OpinionPollListResponse>
    implements $OpinionPollListResponseCopyWith<$Res> {
  _$OpinionPollListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpinionPollListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OpinionPollResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpinionPollListResponseImplCopyWith<$Res>
    implements $OpinionPollListResponseCopyWith<$Res> {
  factory _$$OpinionPollListResponseImplCopyWith(
          _$OpinionPollListResponseImpl value,
          $Res Function(_$OpinionPollListResponseImpl) then) =
      __$$OpinionPollListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode, String message, List<OpinionPollResponse> response});
}

/// @nodoc
class __$$OpinionPollListResponseImplCopyWithImpl<$Res>
    extends _$OpinionPollListResponseCopyWithImpl<$Res,
        _$OpinionPollListResponseImpl>
    implements _$$OpinionPollListResponseImplCopyWith<$Res> {
  __$$OpinionPollListResponseImplCopyWithImpl(
      _$OpinionPollListResponseImpl _value,
      $Res Function(_$OpinionPollListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpinionPollListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? response = null,
  }) {
    return _then(_$OpinionPollListResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OpinionPollResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpinionPollListResponseImpl implements _OpinionPollListResponse {
  const _$OpinionPollListResponseImpl(
      {required this.statusCode,
      required this.message,
      required final List<OpinionPollResponse> response})
      : _response = response;

  factory _$OpinionPollListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpinionPollListResponseImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;
  final List<OpinionPollResponse> _response;
  @override
  List<OpinionPollResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'OpinionPollListResponse(statusCode: $statusCode, message: $message, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpinionPollListResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_response));

  /// Create a copy of OpinionPollListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpinionPollListResponseImplCopyWith<_$OpinionPollListResponseImpl>
      get copyWith => __$$OpinionPollListResponseImplCopyWithImpl<
          _$OpinionPollListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpinionPollListResponseImplToJson(
      this,
    );
  }
}

abstract class _OpinionPollListResponse implements OpinionPollListResponse {
  const factory _OpinionPollListResponse(
          {required final int statusCode,
          required final String message,
          required final List<OpinionPollResponse> response}) =
      _$OpinionPollListResponseImpl;

  factory _OpinionPollListResponse.fromJson(Map<String, dynamic> json) =
      _$OpinionPollListResponseImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  List<OpinionPollResponse> get response;

  /// Create a copy of OpinionPollListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpinionPollListResponseImplCopyWith<_$OpinionPollListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
