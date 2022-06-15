import 'package:json_annotation/json_annotation.dart';

part 'table.g.dart';

@JsonSerializable()
class Table {
  final int totalCount;
  final int pageSize;
  final int currentPage;

  Table(
      {required this.totalCount,
      required this.pageSize,
      required this.currentPage});

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);
  Map<String, dynamic> toJson() => _$TableToJson(this);
}
