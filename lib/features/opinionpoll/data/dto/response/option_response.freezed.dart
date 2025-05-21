// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionResponse _$OptionResponseFromJson(Map<String, dynamic> json) {
  return _OptionResponse.fromJson(json);
}

/// @nodoc
mixin _$OptionResponse {
  String get id => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  List<AnswerResponse> get userAnswerOpinionPollRequestModels =>
      throw _privateConstructorUsedError;

  /// Serializes this OptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionResponseCopyWith<OptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionResponseCopyWith<$Res> {
  factory $OptionResponseCopyWith(
          OptionResponse value, $Res Function(OptionResponse) then) =
      _$OptionResponseCopyWithImpl<$Res, OptionResponse>;
  @useResult
  $Res call(
      {String id,
      String option,
      List<AnswerResponse> userAnswerOpinionPollRequestModels});
}

/// @nodoc
class _$OptionResponseCopyWithImpl<$Res, $Val extends OptionResponse>
    implements $OptionResponseCopyWith<$Res> {
  _$OptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? option = null,
    Object? userAnswerOpinionPollRequestModels = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswerOpinionPollRequestModels: null ==
              userAnswerOpinionPollRequestModels
          ? _value.userAnswerOpinionPollRequestModels
          : userAnswerOpinionPollRequestModels // ignore: cast_nullable_to_non_nullable
              as List<AnswerResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionResponseImplCopyWith<$Res>
    implements $OptionResponseCopyWith<$Res> {
  factory _$$OptionResponseImplCopyWith(_$OptionResponseImpl value,
          $Res Function(_$OptionResponseImpl) then) =
      __$$OptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String option,
      List<AnswerResponse> userAnswerOpinionPollRequestModels});
}

/// @nodoc
class __$$OptionResponseImplCopyWithImpl<$Res>
    extends _$OptionResponseCopyWithImpl<$Res, _$OptionResponseImpl>
    implements _$$OptionResponseImplCopyWith<$Res> {
  __$$OptionResponseImplCopyWithImpl(
      _$OptionResponseImpl _value, $Res Function(_$OptionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? option = null,
    Object? userAnswerOpinionPollRequestModels = null,
  }) {
    return _then(_$OptionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswerOpinionPollRequestModels: null ==
              userAnswerOpinionPollRequestModels
          ? _value._userAnswerOpinionPollRequestModels
          : userAnswerOpinionPollRequestModels // ignore: cast_nullable_to_non_nullable
              as List<AnswerResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionResponseImpl implements _OptionResponse {
  const _$OptionResponseImpl(
      {required this.id,
      required this.option,
      required final List<AnswerResponse> userAnswerOpinionPollRequestModels})
      : _userAnswerOpinionPollRequestModels =
            userAnswerOpinionPollRequestModels;

  factory _$OptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String option;
  final List<AnswerResponse> _userAnswerOpinionPollRequestModels;
  @override
  List<AnswerResponse> get userAnswerOpinionPollRequestModels {
    if (_userAnswerOpinionPollRequestModels is EqualUnmodifiableListView)
      return _userAnswerOpinionPollRequestModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAnswerOpinionPollRequestModels);
  }

  @override
  String toString() {
    return 'OptionResponse(id: $id, option: $option, userAnswerOpinionPollRequestModels: $userAnswerOpinionPollRequestModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality().equals(
                other._userAnswerOpinionPollRequestModels,
                _userAnswerOpinionPollRequestModels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, option,
      const DeepCollectionEquality().hash(_userAnswerOpinionPollRequestModels));

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      __$$OptionResponseImplCopyWithImpl<_$OptionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionResponseImplToJson(
      this,
    );
  }
}

abstract class _OptionResponse implements OptionResponse {
  const factory _OptionResponse(
      {required final String id,
      required final String option,
      required final List<AnswerResponse>
          userAnswerOpinionPollRequestModels}) = _$OptionResponseImpl;

  factory _OptionResponse.fromJson(Map<String, dynamic> json) =
      _$OptionResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get option;
  @override
  List<AnswerResponse> get userAnswerOpinionPollRequestModels;

  /// Create a copy of OptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionResponseImplCopyWith<_$OptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
