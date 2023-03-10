import '../database.dart';

class VariantsTable extends SupabaseTable<VariantsRow> {
  @override
  String get tableName => 'variants';

  @override
  VariantsRow createRow(Map<String, dynamic> data) => VariantsRow(data);
}

class VariantsRow extends SupabaseDataRow {
  VariantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VariantsTable();

  int get variantsId => getField<int>('variants_id')!;
  set variantsId(int value) => setField<int>('variants_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  List<String> get placeholders => getListField<String>('placeholders');
  set placeholders(List<String>? value) =>
      setListField<String>('placeholders', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get blueprintId => getField<int>('blueprint_id')!;
  set blueprintId(int value) => setField<int>('blueprint_id', value);

  int get providerId => getField<int>('provider_id')!;
  set providerId(int value) => setField<int>('provider_id', value);
}
