// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    String? name,
    String? description,
    LocationStruct? location,
    String? start,
    String? end,
    int? capacity,
    List<String>? image,
    String? video,
    String? pricingModel,
    String? currency,
    int? price,
    String? source,
    bool? requireApproval,
    String? mode,
    String? maskedId,
    String? createdBy,
    CategoryStruct? category,
    StatsStruct? stats,
  })  : _name = name,
        _description = description,
        _location = location,
        _start = start,
        _end = end,
        _capacity = capacity,
        _image = image,
        _video = video,
        _pricingModel = pricingModel,
        _currency = currency,
        _price = price,
        _source = source,
        _requireApproval = requireApproval,
        _mode = mode,
        _maskedId = maskedId,
        _createdBy = createdBy,
        _category = category,
        _stats = stats;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  set start(String? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  set end(String? val) => _end = val;

  bool hasEnd() => _end != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  set capacity(int? val) => _capacity = val;

  void incrementCapacity(int amount) => capacity = capacity + amount;

  bool hasCapacity() => _capacity != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  set image(List<String>? val) => _image = val;

  void updateImage(Function(List<String>) updateFn) {
    updateFn(_image ??= []);
  }

  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;

  bool hasVideo() => _video != null;

  // "pricingModel" field.
  String? _pricingModel;
  String get pricingModel => _pricingModel ?? '';
  set pricingModel(String? val) => _pricingModel = val;

  bool hasPricingModel() => _pricingModel != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "requireApproval" field.
  bool? _requireApproval;
  bool get requireApproval => _requireApproval ?? false;
  set requireApproval(bool? val) => _requireApproval = val;

  bool hasRequireApproval() => _requireApproval != null;

  // "mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  set mode(String? val) => _mode = val;

  bool hasMode() => _mode != null;

  // "maskedId" field.
  String? _maskedId;
  String get maskedId => _maskedId ?? '';
  set maskedId(String? val) => _maskedId = val;

  bool hasMaskedId() => _maskedId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "category" field.
  CategoryStruct? _category;
  CategoryStruct get category => _category ?? CategoryStruct();
  set category(CategoryStruct? val) => _category = val;

  void updateCategory(Function(CategoryStruct) updateFn) {
    updateFn(_category ??= CategoryStruct());
  }

  bool hasCategory() => _category != null;

  // "stats" field.
  StatsStruct? _stats;
  StatsStruct get stats => _stats ?? StatsStruct();
  set stats(StatsStruct? val) => _stats = val;

  void updateStats(Function(StatsStruct) updateFn) {
    updateFn(_stats ??= StatsStruct());
  }

  bool hasStats() => _stats != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        location: LocationStruct.maybeFromMap(data['location']),
        start: data['start'] as String?,
        end: data['end'] as String?,
        capacity: castToType<int>(data['capacity']),
        image: getDataList(data['image']),
        video: data['video'] as String?,
        pricingModel: data['pricingModel'] as String?,
        currency: data['currency'] as String?,
        price: castToType<int>(data['price']),
        source: data['source'] as String?,
        requireApproval: data['requireApproval'] as bool?,
        mode: data['mode'] as String?,
        maskedId: data['maskedId'] as String?,
        createdBy: data['createdBy'] as String?,
        category: CategoryStruct.maybeFromMap(data['category']),
        stats: StatsStruct.maybeFromMap(data['stats']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'location': _location?.toMap(),
        'start': _start,
        'end': _end,
        'capacity': _capacity,
        'image': _image,
        'video': _video,
        'pricingModel': _pricingModel,
        'currency': _currency,
        'price': _price,
        'source': _source,
        'requireApproval': _requireApproval,
        'mode': _mode,
        'maskedId': _maskedId,
        'createdBy': _createdBy,
        'category': _category?.toMap(),
        'stats': _stats?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'start': serializeParam(
          _start,
          ParamType.String,
        ),
        'end': serializeParam(
          _end,
          ParamType.String,
        ),
        'capacity': serializeParam(
          _capacity,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
          isList: true,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'pricingModel': serializeParam(
          _pricingModel,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'requireApproval': serializeParam(
          _requireApproval,
          ParamType.bool,
        ),
        'mode': serializeParam(
          _mode,
          ParamType.String,
        ),
        'maskedId': serializeParam(
          _maskedId,
          ParamType.String,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
        'stats': serializeParam(
          _stats,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.String,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.String,
          false,
        ),
        capacity: deserializeParam(
          data['capacity'],
          ParamType.int,
          false,
        ),
        image: deserializeParam<String>(
          data['image'],
          ParamType.String,
          true,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        pricingModel: deserializeParam(
          data['pricingModel'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        requireApproval: deserializeParam(
          data['requireApproval'],
          ParamType.bool,
          false,
        ),
        mode: deserializeParam(
          data['mode'],
          ParamType.String,
          false,
        ),
        maskedId: deserializeParam(
          data['maskedId'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.String,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        stats: deserializeStructParam(
          data['stats'],
          ParamType.DataStruct,
          false,
          structBuilder: StatsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataStruct &&
        name == other.name &&
        description == other.description &&
        location == other.location &&
        start == other.start &&
        end == other.end &&
        capacity == other.capacity &&
        listEquality.equals(image, other.image) &&
        video == other.video &&
        pricingModel == other.pricingModel &&
        currency == other.currency &&
        price == other.price &&
        source == other.source &&
        requireApproval == other.requireApproval &&
        mode == other.mode &&
        maskedId == other.maskedId &&
        createdBy == other.createdBy &&
        category == other.category &&
        stats == other.stats;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        description,
        location,
        start,
        end,
        capacity,
        image,
        video,
        pricingModel,
        currency,
        price,
        source,
        requireApproval,
        mode,
        maskedId,
        createdBy,
        category,
        stats
      ]);
}

DataStruct createDataStruct({
  String? name,
  String? description,
  LocationStruct? location,
  String? start,
  String? end,
  int? capacity,
  String? video,
  String? pricingModel,
  String? currency,
  int? price,
  String? source,
  bool? requireApproval,
  String? mode,
  String? maskedId,
  String? createdBy,
  CategoryStruct? category,
  StatsStruct? stats,
}) =>
    DataStruct(
      name: name,
      description: description,
      location: location ?? LocationStruct(),
      start: start,
      end: end,
      capacity: capacity,
      video: video,
      pricingModel: pricingModel,
      currency: currency,
      price: price,
      source: source,
      requireApproval: requireApproval,
      mode: mode,
      maskedId: maskedId,
      createdBy: createdBy,
      category: category ?? CategoryStruct(),
      stats: stats ?? StatsStruct(),
    );
