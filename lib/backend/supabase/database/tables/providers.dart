import '../database.dart';

class ProvidersTable extends SupabaseTable<ProvidersRow> {
  @override
  String get tableName => 'providers';

  @override
  ProvidersRow createRow(Map<String, dynamic> data) => ProvidersRow(data);
}

class ProvidersRow extends SupabaseDataRow {
  ProvidersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProvidersTable();

  int get providersId => getField<int>('providers_id')!;
  set providersId(int value) => setField<int>('providers_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get address1 => getField<String>('address1');
  set address1(String? value) => setField<String>('address1', value);

  String? get address2 => getField<String>('address2');
  set address2(String? value) => setField<String>('address2', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get zip => getField<String>('zip');
  set zip(String? value) => setField<String>('zip', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
