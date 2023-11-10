class ProfileModel {
  String name_li = '';

  ProfileModel(String name_li) {
    this.name_li = name_li;
  }

  // Named constructor
  ProfileModel.empty() {
    this.name_li = '';
  }
}
