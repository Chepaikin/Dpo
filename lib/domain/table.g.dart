// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Table _$TableFromJson(Map<String, dynamic> json) => Table(
      totalCount: json['totalCount'] as int,
      pageSize: json['pageSize'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$TableToJson(Table instance) => <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPage,
    };
