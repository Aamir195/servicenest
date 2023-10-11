import 'package:carousel_slider/carousel_slider.dart';

class CustomerReviewsCarouselController {
  final CarouselController carouselController = CarouselController();

  void nextPage() {
    carouselController.nextPage();
  }

  void previousPage() {
    carouselController.previousPage();
  }
}
