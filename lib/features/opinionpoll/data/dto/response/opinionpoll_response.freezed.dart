// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opinionpoll_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpinionPollResponse _$OpinionPollResponseFromJson(Map<String, dynamic> json) {
  return _OpinionPollResponse.fromJson(json);
}

/// @nodoc
mixin _$OpinionPollResponse {
  String get id => throw _privateConstructorUsedError;
  String get opinionPollName => throw _privateConstructorUsedError;
  List<QuestionResponse> get questionList => throw _privateConstructorUsedError;

  /// Serializes this OpinionPollResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpinionPollResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpinionPollResponseCopyWith<OpinionPollResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpinionPollResponseCopyWith<$Res> {
  factory $OpinionPollResponseCopyWith(
          OpinionPollResponse value, $Res Function(OpinionPollResponse) then) =
      _$OpinionPollResponseCopyWithImpl<$Res, OpinionPollResponse>;
  @useResult
  $Res call(
      {String id, String opinionPollName, List<QuestionResponse> questionList});
}

/// @nodoc
class _$OpinionPollResponseCopyWithImpl<$Res, $Val extends OpinionPollResponse>
    implements $OpinionPollResponseCopyWith<$Res> {
  _$OpinionPollResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpinionPollResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinionPollName = null,
    Object? questionList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinionPollName: null == opinionPollName
          ? _value.opinionPollName
          : opinionPollName // ignore: cast_nullable_to_non_nullable
              as String,
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpinionPollResponseImplCopyWith<$Res>
    implements $OpinionPollResponseCopyWith<$Res> {
  factory _$$OpinionPollResponseImplCopyWith(_$OpinionPollResponseImpl value,
          $Res Function(_$OpinionPollResponseImpl) then) =
      __$$OpinionPollResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String opinionPollName, List<QuestionResponse> questionList});
}

/// @nodoc
class __$$OpinionPollResponseImplCopyWithImpl<$Res>
    extends _$OpinionPollResponseCopyWithImpl<$Res, _$OpinionPollResponseImpl>
    implements _$$OpinionPollResponseImplCopyWith<$Res> {
  __$$OpinionPollResponseImplCopyWithImpl(_$OpinionPollResponseImpl _value,
      $Res Function(_$OpinionPollResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpinionPollResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinionPollName = null,
    Object? questionList = null,
  }) {
    return _then(_$OpinionPollResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinionPollName: null == opinionPollName
          ? _value.opinionPollName
          : opinionPollName // ignore: cast_nullable_to_non_nullable
              as String,
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpinionPollResponseImpl implements _OpinionPollResponse {
  const _$OpinionPollResponseImpl(
      {required this.id,
      required this.opinionPollName,
      required final List<QuestionResponse> questionList})
      : _questionList = questionList;

  factory _$OpinionPollResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpinionPollResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String opinionPollName;
  final List<QuestionResponse> _questionList;
  @override
  List<QuestionResponse> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  String toString() {
    return 'OpinionPollResponse(id: $id, opinionPollName: $opinionPollName, questionList: $questionList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpinionPollResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.opinionPollName, opinionPollName) ||
                other.opinionPollName == opinionPollName) &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, opinionPollName,
      const DeepCollectionEquality().hash(_questionList));

  /// Create a copy of OpinionPollResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpinionPollResponseImplCopyWith<_$OpinionPollResponseImpl> get copyWith =>
      __$$OpinionPollResponseImplCopyWithImpl<_$OpinionPollResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpinionPollResponseImplToJson(
      this,
    );
  }
}

abstract class _OpinionPollResponse implements OpinionPollResponse {
  const factory _OpinionPollResponse(
          {required final String id,
          required final String opinionPollName,
          required final List<QuestionResponse> questionList}) =
      _$OpinionPollResponseImpl;

  factory _OpinionPollResponse.fromJson(Map<String, dynamic> json) =
      _$OpinionPollResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get opinionPollName;
  @override
  List<QuestionResponse> get questionList;

  /// Create a copy of OpinionPollResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpinionPollResponseImplCopyWith<_$OpinionPollResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
