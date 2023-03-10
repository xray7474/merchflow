import '../database.dart';

class TemplatesTable extends SupabaseTable<TemplatesRow> {
  @override
  String get tableName => 'templates';

  @override
  TemplatesRow createRow(Map<String, dynamic> data) => TemplatesRow(data);
}

class TemplatesRow extends SupabaseDataRow {
  TemplatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TemplatesTable();

  int get templatesId => getField<int>('templates_id')!;
  set templatesId(int value) => setField<int>('templates_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get productList => getField<String>('product_list');
  set productList(String? value) => setField<String>('product_list', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
