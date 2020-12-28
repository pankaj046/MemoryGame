class TileModel{
  String imagePath;
  bool isSelected;
  TileModel(this.imagePath, this.isSelected);
  void setImagePath(String imagePath){
    this.imagePath = imagePath;
  }
  void setIsSelected(bool isSelected){
    this.isSelected = isSelected;
  }

  String getImagePath(){
    return imagePath;
  }
  bool getIsSelected(){
    return isSelected;
  }
}