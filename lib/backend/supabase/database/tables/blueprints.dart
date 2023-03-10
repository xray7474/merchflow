import '../database.dart';

class BlueprintsTable extends SupabaseTable<BlueprintsRow> {
  @override
  String get tableName => 'blueprints';

  @override
  BlueprintsRow createRow(Map<String, dynamic> data) => BlueprintsRow(data);
}

class BlueprintsRow extends SupabaseDataRow {
  BlueprintsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BlueprintsTable();

  int get blueprintsId => getField<int>('blueprints_id')!;
  set blueprintsId(int value) => setField<int>('blueprints_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  List<String> get providers => getListField<String>('providers');
  set providers(List<String>? value) =>
      setListField<String>('providers', value);
}
