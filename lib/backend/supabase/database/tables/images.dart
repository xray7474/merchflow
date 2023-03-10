import '../database.dart';

class ImagesTable extends SupabaseTable<ImagesRow> {
  @override
  String get tableName => 'images';

  @override
  ImagesRow createRow(Map<String, dynamic> data) => ImagesRow(data);
}

class ImagesRow extends SupabaseDataRow {
  ImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImagesTable();

  int get imageId => getField<int>('image_id')!;
  set imageId(int value) => setField<int>('image_id', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get bucketReference => getField<String>('bucket_reference');
  set bucketReference(String? value) =>
      setField<String>('bucket_reference', value);

  String? get width => getField<String>('width');
  set width(String? value) => setField<String>('width', value);

  String? get height => getField<String>('height');
  set height(String? value) => setField<String>('height', value);

  String? get dpi => getField<String>('dpi');
  set dpi(String? value) => setField<String>('dpi', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
