import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/my_planet/data/models/my_planet_model.dart';

const String all = 'All';
const String vegetable = 'vegetable';
const String fruits = 'Fruits';
const String leavyPlant = 'Leavy plant';
const String ornamental = 'Ornamental';


final Map<String, List<MyPlanetModel>> myPlanetData = {
  all: [
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'Tomato',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet2Image,
      title: 'option',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet3Image,
      title: 'eggplant',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet4Image,
      title: 'onion',
      type: 'Ornamental',
    ),
  ],
  vegetable: [
    MyPlanetModel(
      image: AppImages.myPlanet3Image,
      title: 'Tomato',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet2Image,
      title: 'option',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet3Image,
      title: 'Tomato',
      type: 'Tomato',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet4Image,
      title: 'option',
      type: 'option',
    ),
  ],
  fruits: [
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'eggplant',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'onion',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'Tomato',
      type: 'Tomato',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'option',
      type: 'option',
    ),
  ],
  leavyPlant: [
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'Tomato',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet2Image,
      title: 'option',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet1Image,
      title: 'Tomato',
      type: 'Tomato',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet2Image,
      title: 'option',
      type: 'option',
    ),
  ],
  ornamental: [
    MyPlanetModel(
      image: AppImages.myPlanet3Image,
      title: 'eggplant',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet4Image,
      title: 'onion',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet3Image,
      title: 'Tomato',
      type: 'Tomato',
    ),
    MyPlanetModel(
      image: AppImages.myPlanet4Image,
      title: 'option',
      type: 'option',
    ),
  ],
};
