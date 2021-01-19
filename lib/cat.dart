class Cat {
  List<Breeds> _breeds;
  String _id;
  String _url;
  int _width;
  int _height;

  Cat({List<Breeds> breeds, String id, String url, int width, int height}) {
    this._breeds = breeds;
    this._id = id;
    this._url = url;
    this._width = width;
    this._height = height;
  }

  List<Breeds> get breeds => _breeds;
  set breeds(List<Breeds> breeds) => _breeds = breeds;
  String get id => _id;
  set id(String id) => _id = id;
  String get url => _url;
  set url(String url) => _url = url;
  int get width => _width;
  set width(int width) => _width = width;
  int get height => _height;
  set height(int height) => _height = height;

  Cat.fromJson(Map<String, dynamic> json) {
    if (json['breeds'] != null) {
      _breeds = new List<Breeds>();
      json['breeds'].forEach((v) {
        _breeds.add(new Breeds.fromJson(v));
      });
    }
    _id = json['id'];
    _url = json['url'];
    _width = json['width'];
    _height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._breeds != null) {
      data['breeds'] = this._breeds.map((v) => v.toJson()).toList();
    }
    data['id'] = this._id;
    data['url'] = this._url;
    data['width'] = this._width;
    data['height'] = this._height;
    return data;
  }
}

class Breeds {
  Weight _weight;
  String _id;
  String _name;
  String _cfaUrl;
  String _vetstreetUrl;
  String _vcahospitalsUrl;
  String _temperament;
  String _origin;
  String _countryCodes;
  String _countryCode;
  String _description;
  String _lifeSpan;
  int _indoor;
  int _lap;
  String _altNames;
  int _adaptability;
  int _affectionLevel;
  int _childFriendly;
  int _dogFriendly;
  int _energyLevel;
  int _grooming;
  int _healthIssues;
  int _intelligence;
  int _sheddingLevel;
  int _socialNeeds;
  int _strangerFriendly;
  int _vocalisation;
  int _experimental;
  int _hairless;
  int _natural;
  int _rare;
  int _rex;
  int _suppressedTail;
  int _shortLegs;
  String _wikipediaUrl;
  int _hypoallergenic;
  String _referenceImageId;

  Breeds(
      {Weight weight,
        String id,
        String name,
        String cfaUrl,
        String vetstreetUrl,
        String vcahospitalsUrl,
        String temperament,
        String origin,
        String countryCodes,
        String countryCode,
        String description,
        String lifeSpan,
        int indoor,
        int lap,
        String altNames,
        int adaptability,
        int affectionLevel,
        int childFriendly,
        int dogFriendly,
        int energyLevel,
        int grooming,
        int healthIssues,
        int intelligence,
        int sheddingLevel,
        int socialNeeds,
        int strangerFriendly,
        int vocalisation,
        int experimental,
        int hairless,
        int natural,
        int rare,
        int rex,
        int suppressedTail,
        int shortLegs,
        String wikipediaUrl,
        int hypoallergenic,
        String referenceImageId}) {
    this._weight = weight;
    this._id = id;
    this._name = name;
    this._cfaUrl = cfaUrl;
    this._vetstreetUrl = vetstreetUrl;
    this._vcahospitalsUrl = vcahospitalsUrl;
    this._temperament = temperament;
    this._origin = origin;
    this._countryCodes = countryCodes;
    this._countryCode = countryCode;
    this._description = description;
    this._lifeSpan = lifeSpan;
    this._indoor = indoor;
    this._lap = lap;
    this._altNames = altNames;
    this._adaptability = adaptability;
    this._affectionLevel = affectionLevel;
    this._childFriendly = childFriendly;
    this._dogFriendly = dogFriendly;
    this._energyLevel = energyLevel;
    this._grooming = grooming;
    this._healthIssues = healthIssues;
    this._intelligence = intelligence;
    this._sheddingLevel = sheddingLevel;
    this._socialNeeds = socialNeeds;
    this._strangerFriendly = strangerFriendly;
    this._vocalisation = vocalisation;
    this._experimental = experimental;
    this._hairless = hairless;
    this._natural = natural;
    this._rare = rare;
    this._rex = rex;
    this._suppressedTail = suppressedTail;
    this._shortLegs = shortLegs;
    this._wikipediaUrl = wikipediaUrl;
    this._hypoallergenic = hypoallergenic;
    this._referenceImageId = referenceImageId;
  }

  Weight get weight => _weight;
  set weight(Weight weight) => _weight = weight;
  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get cfaUrl => _cfaUrl;
  set cfaUrl(String cfaUrl) => _cfaUrl = cfaUrl;
  String get vetstreetUrl => _vetstreetUrl;
  set vetstreetUrl(String vetstreetUrl) => _vetstreetUrl = vetstreetUrl;
  String get vcahospitalsUrl => _vcahospitalsUrl;
  set vcahospitalsUrl(String vcahospitalsUrl) =>
      _vcahospitalsUrl = vcahospitalsUrl;
  String get temperament => _temperament;
  set temperament(String temperament) => _temperament = temperament;
  String get origin => _origin;
  set origin(String origin) => _origin = origin;
  String get countryCodes => _countryCodes;
  set countryCodes(String countryCodes) => _countryCodes = countryCodes;
  String get countryCode => _countryCode;
  set countryCode(String countryCode) => _countryCode = countryCode;
  String get description => _description;
  set description(String description) => _description = description;
  String get lifeSpan => _lifeSpan;
  set lifeSpan(String lifeSpan) => _lifeSpan = lifeSpan;
  int get indoor => _indoor;
  set indoor(int indoor) => _indoor = indoor;
  int get lap => _lap;
  set lap(int lap) => _lap = lap;
  String get altNames => _altNames;
  set altNames(String altNames) => _altNames = altNames;
  int get adaptability => _adaptability;
  set adaptability(int adaptability) => _adaptability = adaptability;
  int get affectionLevel => _affectionLevel;
  set affectionLevel(int affectionLevel) => _affectionLevel = affectionLevel;
  int get childFriendly => _childFriendly;
  set childFriendly(int childFriendly) => _childFriendly = childFriendly;
  int get dogFriendly => _dogFriendly;
  set dogFriendly(int dogFriendly) => _dogFriendly = dogFriendly;
  int get energyLevel => _energyLevel;
  set energyLevel(int energyLevel) => _energyLevel = energyLevel;
  int get grooming => _grooming;
  set grooming(int grooming) => _grooming = grooming;
  int get healthIssues => _healthIssues;
  set healthIssues(int healthIssues) => _healthIssues = healthIssues;
  int get intelligence => _intelligence;
  set intelligence(int intelligence) => _intelligence = intelligence;
  int get sheddingLevel => _sheddingLevel;
  set sheddingLevel(int sheddingLevel) => _sheddingLevel = sheddingLevel;
  int get socialNeeds => _socialNeeds;
  set socialNeeds(int socialNeeds) => _socialNeeds = socialNeeds;
  int get strangerFriendly => _strangerFriendly;
  set strangerFriendly(int strangerFriendly) =>
      _strangerFriendly = strangerFriendly;
  int get vocalisation => _vocalisation;
  set vocalisation(int vocalisation) => _vocalisation = vocalisation;
  int get experimental => _experimental;
  set experimental(int experimental) => _experimental = experimental;
  int get hairless => _hairless;
  set hairless(int hairless) => _hairless = hairless;
  int get natural => _natural;
  set natural(int natural) => _natural = natural;
  int get rare => _rare;
  set rare(int rare) => _rare = rare;
  int get rex => _rex;
  set rex(int rex) => _rex = rex;
  int get suppressedTail => _suppressedTail;
  set suppressedTail(int suppressedTail) => _suppressedTail = suppressedTail;
  int get shortLegs => _shortLegs;
  set shortLegs(int shortLegs) => _shortLegs = shortLegs;
  String get wikipediaUrl => _wikipediaUrl;
  set wikipediaUrl(String wikipediaUrl) => _wikipediaUrl = wikipediaUrl;
  int get hypoallergenic => _hypoallergenic;
  set hypoallergenic(int hypoallergenic) => _hypoallergenic = hypoallergenic;
  String get referenceImageId => _referenceImageId;
  set referenceImageId(String referenceImageId) =>
      _referenceImageId = referenceImageId;

  Breeds.fromJson(Map<String, dynamic> json) {
    _weight =
    json['weight'] != null ? new Weight.fromJson(json['weight']) : null;
    _id = json['id'];
    _name = json['name'];
    _cfaUrl = json['cfa_url'];
    _vetstreetUrl = json['vetstreet_url'];
    _vcahospitalsUrl = json['vcahospitals_url'];
    _temperament = json['temperament'];
    _origin = json['origin'];
    _countryCodes = json['country_codes'];
    _countryCode = json['country_code'];
    _description = json['description'];
    _lifeSpan = json['life_span'];
    _indoor = json['indoor'];
    _lap = json['lap'];
    _altNames = json['alt_names'];
    _adaptability = json['adaptability'];
    _affectionLevel = json['affection_level'];
    _childFriendly = json['child_friendly'];
    _dogFriendly = json['dog_friendly'];
    _energyLevel = json['energy_level'];
    _grooming = json['grooming'];
    _healthIssues = json['health_issues'];
    _intelligence = json['intelligence'];
    _sheddingLevel = json['shedding_level'];
    _socialNeeds = json['social_needs'];
    _strangerFriendly = json['stranger_friendly'];
    _vocalisation = json['vocalisation'];
    _experimental = json['experimental'];
    _hairless = json['hairless'];
    _natural = json['natural'];
    _rare = json['rare'];
    _rex = json['rex'];
    _suppressedTail = json['suppressed_tail'];
    _shortLegs = json['short_legs'];
    _wikipediaUrl = json['wikipedia_url'];
    _hypoallergenic = json['hypoallergenic'];
    _referenceImageId = json['reference_image_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._weight != null) {
      data['weight'] = this._weight.toJson();
    }
    data['id'] = this._id;
    data['name'] = this._name;
    data['cfa_url'] = this._cfaUrl;
    data['vetstreet_url'] = this._vetstreetUrl;
    data['vcahospitals_url'] = this._vcahospitalsUrl;
    data['temperament'] = this._temperament;
    data['origin'] = this._origin;
    data['country_codes'] = this._countryCodes;
    data['country_code'] = this._countryCode;
    data['description'] = this._description;
    data['life_span'] = this._lifeSpan;
    data['indoor'] = this._indoor;
    data['lap'] = this._lap;
    data['alt_names'] = this._altNames;
    data['adaptability'] = this._adaptability;
    data['affection_level'] = this._affectionLevel;
    data['child_friendly'] = this._childFriendly;
    data['dog_friendly'] = this._dogFriendly;
    data['energy_level'] = this._energyLevel;
    data['grooming'] = this._grooming;
    data['health_issues'] = this._healthIssues;
    data['intelligence'] = this._intelligence;
    data['shedding_level'] = this._sheddingLevel;
    data['social_needs'] = this._socialNeeds;
    data['stranger_friendly'] = this._strangerFriendly;
    data['vocalisation'] = this._vocalisation;
    data['experimental'] = this._experimental;
    data['hairless'] = this._hairless;
    data['natural'] = this._natural;
    data['rare'] = this._rare;
    data['rex'] = this._rex;
    data['suppressed_tail'] = this._suppressedTail;
    data['short_legs'] = this._shortLegs;
    data['wikipedia_url'] = this._wikipediaUrl;
    data['hypoallergenic'] = this._hypoallergenic;
    data['reference_image_id'] = this._referenceImageId;
    return data;
  }
}

class Weight {
  String _imperial;
  String _metric;

  Weight({String imperial, String metric}) {
    this._imperial = imperial;
    this._metric = metric;
  }

  String get imperial => _imperial;
  set imperial(String imperial) => _imperial = imperial;
  String get metric => _metric;
  set metric(String metric) => _metric = metric;

  Weight.fromJson(Map<String, dynamic> json) {
    _imperial = json['imperial'];
    _metric = json['metric'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imperial'] = this._imperial;
    data['metric'] = this._metric;
    return data;
  }
}