class Thyroid {
  final num T3;
  final num T4U;

  Thyroid({
    required this.T3,
    required this.T4U,
  });
  num get getT3 => T3;
  num get getT4U => T4U;

  Map<String, dynamic> toJson() {
    return {
      "T3": this.T3,
      "T4U": this.T4U,
    };
  }

  factory Thyroid.fromJson(Map<String, dynamic> parsedJson) {
    return Thyroid(
      T3: parsedJson['T3'],
      T4U: parsedJson['T4U'],
    );
  }
}
