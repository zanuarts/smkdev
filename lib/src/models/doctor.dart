class Doctor {
  int _id;
  String _name, _specialist;

  Doctor(this._name, this._specialist);
  Doctor.withId(this._id, this._name, this._specialist);

  int get id => _id;
  String get name => _name;
  String get specialist => _specialist;

  set setName(String newName) {
    if (100 >= newName.length && newName.length > 0) {
      this._name = newName;
    }
  }

  set setSpecialist(String newSpecialist) {
    if (100 >= newSpecialist.length && newSpecialist.length > 0) {
      this._specialist = newSpecialist;
    }
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = _name;
    map['specialist'] = _specialist;
    return map;
  }

  Doctor.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._specialist = map['specialist'];
  }
}
