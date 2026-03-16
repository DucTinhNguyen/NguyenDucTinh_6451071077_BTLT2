import '../models/photo_model.dart';

class PhotoData {
  static List<PhotoModel> getSamplePhotos() {
    return const [
      PhotoModel(id: 1, imageUrl: 'assets/images/photo1.jpg', title: ''),
      PhotoModel(id: 2, imageUrl: 'assets/images/photo2.jpg', title: ''),
      PhotoModel(id: 3, imageUrl: 'assets/images/photo3.jpg', title: ''),
      PhotoModel(id: 4, imageUrl: 'assets/images/photo4.jpg', title: ''),
      PhotoModel(id: 5, imageUrl: 'assets/images/photo5.jpg', title: ''),
      PhotoModel(id: 6, imageUrl: 'assets/images/photo6.jpg', title: ''),
      PhotoModel(id: 7, imageUrl: 'assets/images/photo7.jpg', title: ''),
      PhotoModel(id: 8, imageUrl: 'assets/images/photo8.jpg', title: ''),
    ];
  }
}
