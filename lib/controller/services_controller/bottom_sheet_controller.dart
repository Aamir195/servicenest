import 'package:get/get.dart';

class ImageController extends GetxController {
  var selectedImageUrl = ''.obs;
  var serviceDescription = ''.obs;
  var estimatedTime = ''.obs;
  var price = 0.0.obs;
  var image_title =''.obs;

  void setSelectedImage(String imageUrl, String title,String description, String time, double price) {
    selectedImageUrl.value = imageUrl;
    image_title.value = title;
    serviceDescription.value = description;
    estimatedTime.value = time;
    this.price.value = price;
  }
}
