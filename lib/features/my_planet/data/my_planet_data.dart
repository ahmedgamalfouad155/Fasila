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
      image: AppImages.myPlanetFruit1Image,
      title: 'Tomato',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable1Image,
      title: 'option',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental1Image,
      title: 'Calathea',
      type: 'Ornamental',
    ),
MyPlanetModel(
      image: AppImages.myPlanetFruit3Image,
      title: 'fig',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable2Image,
      title: 'eggplant',
      type: 'Vegetable',
    ),
    
    MyPlanetModel(
      image: AppImages.myPlanetVegetable6Image,
      title: 'potatoes',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant1Image,
      title: 'dill',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental2Image,
      title: 'Coroton',
      type: 'Ornamental',
    ),
  ],
  vegetable: [
    MyPlanetModel(
      image: AppImages.myPlanetVegetable1Image,
      title: 'Cucumber',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable2Image,
      title: 'Black eggplant',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable3Image,
      title: 'Green pepper',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable4Image,
      title: 'carrot',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable5Image,
      title: 'beetroot',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable6Image,
      title: 'potatoes',
      type: 'Vegetable',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetVegetable7Image,
      title: 'Turnip',
      type: 'Vegetable',
    ),
  ],
  fruits: [
    MyPlanetModel(
      image: AppImages.myPlanetFruit1Image,
      title: 'Tomato',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit2Image,
      title: 'Strawberry',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit3Image,
      title: 'fig',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit4Image,
      title: 'grapes',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit5Image,
      title: 'avocado',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit6Image,
      title: 'apricot',
      type: 'Fruits',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetFruit7Image,
      title: 'apples',
      type: 'Fruits',
    ),
  ],
  leavyPlant: [
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant1Image,
      title: 'dill',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant2Image,
      title: 'mint',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant3Image,
      title: 'parsley',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant4Image,
      title: 'chard',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant5Image,
      title: 'Green cabbage',
      type: 'Leavy plant',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetLeavyPlant6Image,
      title: 'basil',
      type: 'Leavy plant',
    ),
  ],
  ornamental: [
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental1Image,
      title: 'Calathea',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental2Image,
      title: 'Coroton',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental3Image,
      title: 'Coleus',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental4Image,
      title: 'Dieffenbachia',
      type: 'Ornamental',
    ),
    MyPlanetModel(
      image: AppImages.myPlanetOrnamental5Image,
      title: 'hypoestes',
      type: 'Ornamental',
    ),
  ],
};
