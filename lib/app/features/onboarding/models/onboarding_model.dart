class OnboardingModel {
  String pathImage;
  String textImage;

  OnboardingModel({
    required this.pathImage,
    required this.textImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathImage': pathImage,
      'textImage': textImage,
    };
  }

  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      pathImage: map['pathImage'] as String,
      textImage: map['textImage'] as String,
    );
  }
}
