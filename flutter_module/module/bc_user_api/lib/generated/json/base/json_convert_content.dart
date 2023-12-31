// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:bc_user_api/model/agreement_info_entity.dart';
import 'package:bc_user_api/model/employee_detail_entity.dart';
import 'package:bc_user_api/model/login_info_entity.dart';
import 'package:bc_user_api/model/user_info_entity.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);
typedef ConvertExceptionHandler = void Function(Object error, StackTrace stackTrace);

class JsonConvert {
  static ConvertExceptionHandler? onError;

  static Map<String, JsonConvertFunction> get convertFuncMap =>
      {
        (AgreementInfoEntity).toString(): AgreementInfoEntity.fromJson,
        (AgreementInfoItem).toString(): AgreementInfoItem.fromJson,
        (EmployeeDetailEntity).toString(): EmployeeDetailEntity.fromJson,
        (EmployeeDetailEmployeeAccount)
            .toString(): EmployeeDetailEmployeeAccount.fromJson,
        (EmployeeDetailEmployeeAccountStatusPackage)
            .toString(): EmployeeDetailEmployeeAccountStatusPackage.fromJson,
        (EmployeeDetailEmployeeAuth).toString(): EmployeeDetailEmployeeAuth
            .fromJson,
        (EmployeeDetailEmployeeAuthAuthRoleList)
            .toString(): EmployeeDetailEmployeeAuthAuthRoleList.fromJson,
        (EmployeeDetailEmployeeAuthAuthRoleListSourceList)
            .toString(): EmployeeDetailEmployeeAuthAuthRoleListSourceList
            .fromJson,
        (EmployeeDetailEmployeeBase).toString(): EmployeeDetailEmployeeBase
            .fromJson,
        (EmployeeDetailEmployeeBaseEduLevelPackage)
            .toString(): EmployeeDetailEmployeeBaseEduLevelPackage.fromJson,
        (EmployeeDetailEmployeeBaseGenderPackage)
            .toString(): EmployeeDetailEmployeeBaseGenderPackage.fromJson,
        (EmployeeDetailEmployeeCommunication)
            .toString(): EmployeeDetailEmployeeCommunication.fromJson,
        (EmployeeDetailEmployeeLabour).toString(): EmployeeDetailEmployeeLabour
            .fromJson,
        (EmployeeDetailEmployeeOrg).toString(): EmployeeDetailEmployeeOrg
            .fromJson,
        (EmployeeDetailEmployeeOrgMainOrg)
            .toString(): EmployeeDetailEmployeeOrgMainOrg.fromJson,
        (EmployeeDetailEmployeeOrgMainOrgIdentityTypePackage)
            .toString(): EmployeeDetailEmployeeOrgMainOrgIdentityTypePackage
            .fromJson,
        (EmployeeDetailEmployeeOrgMainOrgOrg)
            .toString(): EmployeeDetailEmployeeOrgMainOrgOrg.fromJson,
        (EmployeeDetailEmployeeOrgMainOrgOrgParentLink)
            .toString(): EmployeeDetailEmployeeOrgMainOrgOrgParentLink.fromJson,
        (EmployeeDetailEmployeeOrgOrgList)
            .toString(): EmployeeDetailEmployeeOrgOrgList.fromJson,
        (EmployeeDetailEmployeeOrgOrgListIdentityTypePackage)
            .toString(): EmployeeDetailEmployeeOrgOrgListIdentityTypePackage
            .fromJson,
        (EmployeeDetailEmployeeOrgOrgListOrg)
            .toString(): EmployeeDetailEmployeeOrgOrgListOrg.fromJson,
        (EmployeeDetailEmployeeOrgOrgListOrgParentLink)
            .toString(): EmployeeDetailEmployeeOrgOrgListOrgParentLink.fromJson,
        (EmployeeDetailEmployeePost).toString(): EmployeeDetailEmployeePost
            .fromJson,
        (EmployeeDetailEmployeePostEmployeePost)
            .toString(): EmployeeDetailEmployeePostEmployeePost.fromJson,
        (EmployeeDetailEmployeePostEmployeePostTypePackage)
            .toString(): EmployeeDetailEmployeePostEmployeePostTypePackage
            .fromJson,
        (EmployeeDetailEmployeePractice)
            .toString(): EmployeeDetailEmployeePractice.fromJson,
        (EmployeeDetailEmployeePracticeRegisterStatusPackage)
            .toString(): EmployeeDetailEmployeePracticeRegisterStatusPackage
            .fromJson,
        (EmployeeDetailEmployeePunish).toString(): EmployeeDetailEmployeePunish
            .fromJson,
        (LoginInfoEntity).toString(): LoginInfoEntity.fromJson,
        (UserInfoEntity).toString(): UserInfoEntity.fromJson,
        (UserInfoEmployeeAccount).toString(): UserInfoEmployeeAccount.fromJson,
        (UserInfoEmployeeAccountStatusPackage)
            .toString(): UserInfoEmployeeAccountStatusPackage.fromJson,
        (UserInfoEmployeeBase).toString(): UserInfoEmployeeBase.fromJson,
        (UserInfoEmployeeBaseEduLevelPackage)
            .toString(): UserInfoEmployeeBaseEduLevelPackage.fromJson,
        (UserInfoEmployeeBaseGenderPackage)
            .toString(): UserInfoEmployeeBaseGenderPackage.fromJson,
        (UserInfoEmployeeBaseMaritalStatusPackage)
            .toString(): UserInfoEmployeeBaseMaritalStatusPackage.fromJson,
        (UserInfoEmployeeBasePoliticalOutlookPackage)
            .toString(): UserInfoEmployeeBasePoliticalOutlookPackage.fromJson,
        (UserInfoEmployeeOrg).toString(): UserInfoEmployeeOrg.fromJson,
        (UserInfoEmployeeOrgMainOrg).toString(): UserInfoEmployeeOrgMainOrg
            .fromJson,
        (UserInfoEmployeeOrgMainOrgIdentityTypePackage)
            .toString(): UserInfoEmployeeOrgMainOrgIdentityTypePackage.fromJson,
        (UserInfoEmployeeOrgMainOrgOrg)
            .toString(): UserInfoEmployeeOrgMainOrgOrg.fromJson,
        (UserInfoEmployeeOrgOrgList).toString(): UserInfoEmployeeOrgOrgList
            .fromJson,
        (UserInfoEmployeeOrgOrgListIdentityTypePackage)
            .toString(): UserInfoEmployeeOrgOrgListIdentityTypePackage.fromJson,
        (UserInfoEmployeeOrgOrgListOrg)
            .toString(): UserInfoEmployeeOrgOrgListOrg.fromJson,
      };

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e, enumConvert: enumConvert))
          .toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) =>
      _asT<T>(e, enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        if (value == null) {
          return null;
        }
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<AgreementInfoEntity>[] is M) {
      return data.map<AgreementInfoEntity>((Map<String, dynamic> e) =>
          AgreementInfoEntity.fromJson(e)).toList() as M;
    }
    if (<AgreementInfoItem>[] is M) {
      return data.map<AgreementInfoItem>((Map<String, dynamic> e) =>
          AgreementInfoItem.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEntity>[] is M) {
      return data.map<EmployeeDetailEntity>((Map<String, dynamic> e) =>
          EmployeeDetailEntity.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeAccount>[] is M) {
      return data.map<EmployeeDetailEmployeeAccount>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeeAccount.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeAccountStatusPackage>[] is M) {
      return data.map<EmployeeDetailEmployeeAccountStatusPackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeAccountStatusPackage.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeAuth>[] is M) {
      return data.map<EmployeeDetailEmployeeAuth>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeeAuth.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeAuthAuthRoleList>[] is M) {
      return data.map<EmployeeDetailEmployeeAuthAuthRoleList>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeAuthAuthRoleList.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeAuthAuthRoleListSourceList>[] is M) {
      return data.map<EmployeeDetailEmployeeAuthAuthRoleListSourceList>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeAuthAuthRoleListSourceList.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeeBase>[] is M) {
      return data.map<EmployeeDetailEmployeeBase>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeeBase.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeBaseEduLevelPackage>[] is M) {
      return data.map<EmployeeDetailEmployeeBaseEduLevelPackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeBaseEduLevelPackage.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeBaseGenderPackage>[] is M) {
      return data.map<EmployeeDetailEmployeeBaseGenderPackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeBaseGenderPackage.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeCommunication>[] is M) {
      return data.map<EmployeeDetailEmployeeCommunication>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeCommunication.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeLabour>[] is M) {
      return data.map<EmployeeDetailEmployeeLabour>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeeLabour.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrg>[] is M) {
      return data.map<EmployeeDetailEmployeeOrg>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrg.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgMainOrg>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgMainOrg>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgMainOrg.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgMainOrgIdentityTypePackage>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgMainOrgIdentityTypePackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgMainOrgIdentityTypePackage.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgMainOrgOrg>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgMainOrgOrg>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgMainOrgOrg.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgMainOrgOrgParentLink>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgMainOrgOrgParentLink>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgMainOrgOrgParentLink.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgOrgList>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgOrgList>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgOrgList.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgOrgListIdentityTypePackage>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgOrgListIdentityTypePackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgOrgListIdentityTypePackage.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgOrgListOrg>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgOrgListOrg>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgOrgListOrg.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeeOrgOrgListOrgParentLink>[] is M) {
      return data.map<EmployeeDetailEmployeeOrgOrgListOrgParentLink>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeeOrgOrgListOrgParentLink.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeePost>[] is M) {
      return data.map<EmployeeDetailEmployeePost>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeePost.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeePostEmployeePost>[] is M) {
      return data.map<EmployeeDetailEmployeePostEmployeePost>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeePostEmployeePost.fromJson(e)).toList() as M;
    }
    if (<EmployeeDetailEmployeePostEmployeePostTypePackage>[] is M) {
      return data.map<EmployeeDetailEmployeePostEmployeePostTypePackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeePostEmployeePostTypePackage.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeePractice>[] is M) {
      return data.map<EmployeeDetailEmployeePractice>((
          Map<String, dynamic> e) => EmployeeDetailEmployeePractice.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeePracticeRegisterStatusPackage>[] is M) {
      return data.map<EmployeeDetailEmployeePracticeRegisterStatusPackage>((
          Map<String, dynamic> e) =>
          EmployeeDetailEmployeePracticeRegisterStatusPackage.fromJson(e))
          .toList() as M;
    }
    if (<EmployeeDetailEmployeePunish>[] is M) {
      return data.map<EmployeeDetailEmployeePunish>((Map<String, dynamic> e) =>
          EmployeeDetailEmployeePunish.fromJson(e)).toList() as M;
    }
    if (<LoginInfoEntity>[] is M) {
      return data.map<LoginInfoEntity>((Map<String, dynamic> e) =>
          LoginInfoEntity.fromJson(e)).toList() as M;
    }
    if (<UserInfoEntity>[] is M) {
      return data.map<UserInfoEntity>((Map<String, dynamic> e) =>
          UserInfoEntity.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeAccount>[] is M) {
      return data.map<UserInfoEmployeeAccount>((Map<String, dynamic> e) =>
          UserInfoEmployeeAccount.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeAccountStatusPackage>[] is M) {
      return data.map<UserInfoEmployeeAccountStatusPackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeAccountStatusPackage.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeBase>[] is M) {
      return data.map<UserInfoEmployeeBase>((Map<String, dynamic> e) =>
          UserInfoEmployeeBase.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeBaseEduLevelPackage>[] is M) {
      return data.map<UserInfoEmployeeBaseEduLevelPackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeBaseEduLevelPackage.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeBaseGenderPackage>[] is M) {
      return data.map<UserInfoEmployeeBaseGenderPackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeBaseGenderPackage.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeBaseMaritalStatusPackage>[] is M) {
      return data.map<UserInfoEmployeeBaseMaritalStatusPackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeBaseMaritalStatusPackage.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeBasePoliticalOutlookPackage>[] is M) {
      return data.map<UserInfoEmployeeBasePoliticalOutlookPackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeBasePoliticalOutlookPackage.fromJson(e))
          .toList() as M;
    }
    if (<UserInfoEmployeeOrg>[] is M) {
      return data.map<UserInfoEmployeeOrg>((Map<String, dynamic> e) =>
          UserInfoEmployeeOrg.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeOrgMainOrg>[] is M) {
      return data.map<UserInfoEmployeeOrgMainOrg>((Map<String, dynamic> e) =>
          UserInfoEmployeeOrgMainOrg.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeOrgMainOrgIdentityTypePackage>[] is M) {
      return data.map<UserInfoEmployeeOrgMainOrgIdentityTypePackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeOrgMainOrgIdentityTypePackage.fromJson(e))
          .toList() as M;
    }
    if (<UserInfoEmployeeOrgMainOrgOrg>[] is M) {
      return data.map<UserInfoEmployeeOrgMainOrgOrg>((Map<String, dynamic> e) =>
          UserInfoEmployeeOrgMainOrgOrg.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeOrgOrgList>[] is M) {
      return data.map<UserInfoEmployeeOrgOrgList>((Map<String, dynamic> e) =>
          UserInfoEmployeeOrgOrgList.fromJson(e)).toList() as M;
    }
    if (<UserInfoEmployeeOrgOrgListIdentityTypePackage>[] is M) {
      return data.map<UserInfoEmployeeOrgOrgListIdentityTypePackage>((
          Map<String, dynamic> e) =>
          UserInfoEmployeeOrgOrgListIdentityTypePackage.fromJson(e))
          .toList() as M;
    }
    if (<UserInfoEmployeeOrgOrgListOrg>[] is M) {
      return data.map<UserInfoEmployeeOrgOrgListOrg>((Map<String, dynamic> e) =>
          UserInfoEmployeeOrgOrgListOrg.fromJson(e)).toList() as M;
    }

    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is M) {
      return json;
    }
    if (json is List) {
      return _getListChildType<M>(
          json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.convert<M>(json);
    }
  }
}