class SelectedCategoriesModel{
  late String name ;
  late String Avatar;
  late String bio;
  late String banner;
  late double rating;
  
  SelectedCategoriesModel({required this.name, required this.Avatar, required this.bio, required this.banner, required this.rating});

  factory SelectedCategoriesModel.fromJson(dynamic json) {
    return SelectedCategoriesModel(
        name: json['name'] as String,
        banner: json['banner'] as String,
        Avatar: json['Avatar'] as String,
        rating: json['rating'] as double,
        bio: json['bio'] as String);
  }

  static List<SelectedCategoriesModel> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return SelectedCategoriesModel.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'SelectedCategoriesModel{name: $name, banner: $banner, rating: $rating, Avatar: $Avatar, bio: $bio}';
  }
  
}