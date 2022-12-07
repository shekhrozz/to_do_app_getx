// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get uid => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoAvatarUrl => throw _privateConstructorUsedError;
  DateTime? get userCreatedDate => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get taskLists =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? uid,
      String? username,
      String? password,
      String? email,
      String? photoAvatarUrl,
      DateTime? userCreatedDate,
      List<Map<String, dynamic>>? taskLists});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? photoAvatarUrl = freezed,
    Object? userCreatedDate = freezed,
    Object? taskLists = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoAvatarUrl: freezed == photoAvatarUrl
          ? _value.photoAvatarUrl
          : photoAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreatedDate: freezed == userCreatedDate
          ? _value.userCreatedDate
          : userCreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskLists: freezed == taskLists
          ? _value.taskLists
          : taskLists // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uid,
      String? username,
      String? password,
      String? email,
      String? photoAvatarUrl,
      DateTime? userCreatedDate,
      List<Map<String, dynamic>>? taskLists});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? photoAvatarUrl = freezed,
    Object? userCreatedDate = freezed,
    Object? taskLists = freezed,
  }) {
    return _then(_$_User(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoAvatarUrl: freezed == photoAvatarUrl
          ? _value.photoAvatarUrl
          : photoAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreatedDate: freezed == userCreatedDate
          ? _value.userCreatedDate
          : userCreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskLists: freezed == taskLists
          ? _value._taskLists
          : taskLists // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.uid,
      this.username,
      this.password,
      this.email,
      this.photoAvatarUrl,
      this.userCreatedDate,
      final List<Map<String, dynamic>>? taskLists})
      : _taskLists = taskLists;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? uid;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? photoAvatarUrl;
  @override
  final DateTime? userCreatedDate;
  final List<Map<String, dynamic>>? _taskLists;
  @override
  List<Map<String, dynamic>>? get taskLists {
    final value = _taskLists;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(uid: $uid, username: $username, password: $password, email: $email, photoAvatarUrl: $photoAvatarUrl, userCreatedDate: $userCreatedDate, taskLists: $taskLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoAvatarUrl, photoAvatarUrl) ||
                other.photoAvatarUrl == photoAvatarUrl) &&
            (identical(other.userCreatedDate, userCreatedDate) ||
                other.userCreatedDate == userCreatedDate) &&
            const DeepCollectionEquality()
                .equals(other._taskLists, _taskLists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      username,
      password,
      email,
      photoAvatarUrl,
      userCreatedDate,
      const DeepCollectionEquality().hash(_taskLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? uid,
      final String? username,
      final String? password,
      final String? email,
      final String? photoAvatarUrl,
      final DateTime? userCreatedDate,
      final List<Map<String, dynamic>>? taskLists}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get uid;
  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get email;
  @override
  String? get photoAvatarUrl;
  @override
  DateTime? get userCreatedDate;
  @override
  List<Map<String, dynamic>>? get taskLists;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
