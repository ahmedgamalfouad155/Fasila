import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';

const String all = 'All';
const String pots = 'pots';
const String gardenSupplies = 'gardenSupplies';
const String seeds = 'seeds';
const String fertilizer = 'fertilizer';

final Map<String, List<ProductModel>> productData = {
  all: [
    ProductModel(
      image: AppImages.productPot1Image,
      title: 'hand trowel',
      description: 'Hand trowel for gardening and landscaping',
      price: 'EGP 220.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Tomato seeds',
      description: 'Tomato seeds for planting',
      price: 'EGP 50.00',
    ),
     ProductModel(
      image: AppImages.productGardenSupplies5Image,
      title: 'wheelbarrow',
      description: 'Garden wheelbarrow for transporting soil and plants',
      price: 'EGP 299.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer1Image,
      title: 'Chelated iron',
      description: 'Chelated iron for plant nutrition',
      price: 'EGP 250.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer4Image,
      title: 'Slow-release ',
      description: 'Slow-release fertilizer for plant nutrition',
      price: 'EGP 100.00',
    ),
    ProductModel(
      image: AppImages.productPot4Image,
      title: 'Zain Fert',
      description: 'Zain Fert for plant nutrition',
      price: 'EGP 200.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer5Image,
      title: 'Liquid fertilizer',
      description: 'Liquid fertilizer for plant nutrition',
      price: 'EGP 80.00',
    ),
  ],
  pots: [
    ProductModel(
      image: AppImages.productPot1Image,
      title: 'hand trowel',
      description: 'Hand trowel for gardening and landscaping',
      price: 'EGP 220.00',
    ),
    ProductModel(
      image: AppImages.productPot2Image,
      title: 'fifi pot',
      description: 'Fifi pot for indoor and outdoor use',
      price: 'EGP 150.00',
    ),
    ProductModel(
      image: AppImages.productPot3Image,
      title: 'Chelated iron',
      description: 'Chelated iron for plant nutrition',
      price: 'EGP 250.00',
    ),
    ProductModel(
      image: AppImages.productPot4Image,
      title: 'Zain Fert',
      description: 'Zain Fert for plant nutrition',
      price: 'EGP 200.00',
    ),
    ProductModel(
      image: AppImages.productPot5Image,
      title: 'Agriculture tools',
      description:
          '3 tools that help in agriculture ( fork, scoop, pruning tool)',
      price: 'EGP 249.00',
    ),
  ],
  gardenSupplies: [
    ProductModel(
      image: AppImages.productGardenSupplies1Image,
      title: 'Garden hose',
      description: 'Garden hose for watering plants',
      price: 'EGP 199.00',
    ),
    ProductModel(
      image: AppImages.productGardenSupplies2Image,
      title: 'Garden rake',
      description: 'Garden rake for leveling soil',
      price: 'EGP 149.00',
    ),
    ProductModel(
      image: AppImages.productGardenSupplies3Image,
      title: 'Garden shovel',
      description: 'Garden shovel for digging and planting',
      price: 'EGP 179.00',
    ),
    ProductModel(
      image: AppImages.productGardenSupplies4Image,
      title: 'Garden hoe',
      description: 'Garden hoe for cultivating soil',
      price: 'EGP 129.00',
    ),
    ProductModel(
      image: AppImages.productGardenSupplies5Image,
      title: 'wheelbarrow',
      description: 'Garden wheelbarrow for transporting soil and plants',
      price: 'EGP 299.00',
    ),
  ],
  seeds: [
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Tomato seeds',
      description: 'Tomato seeds for planting',
      price: 'EGP 50.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Cucumber seeds',
      description: 'Cucumber seeds for planting',
      price: 'EGP 50.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Zucchini seeds',
      description: 'Zucchini seeds for planting',
      price: 'EGP 50.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Carrot seeds',
      description: 'Carrot seeds for planting',
      price: 'EGP 50.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Potato seeds',
      description: 'Potato seeds for planting',
      price: 'EGP 50.00',
    ),
    ProductModel(
      image: AppImages.productSeedImage,
      title: 'Onion seeds',
      description: 'Onion seeds for planting',
      price: 'EGP 50.00',
    ),
  ],
  fertilizer: [
    ProductModel(
      image: AppImages.productFertilizer1Image,
      title: 'Chelated iron',
      description: 'Chelated iron for plant nutrition',
      price: 'EGP 250.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer2Image,
      title: 'Zain Fert',
      description: 'Zain Fert for plant nutrition',
      price: 'EGP 200.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer3Image,
      title: 'Organic fertilizer',
      description: 'Organic fertilizer for plant nutrition',
      price: 'EGP 150.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer4Image,
      title: 'Slow-release ',
      description: 'Slow-release fertilizer for plant nutrition',
      price: 'EGP 100.00',
    ),
    ProductModel(
      image: AppImages.productFertilizer5Image,
      title: 'Liquid fertilizer',
      description: 'Liquid fertilizer for plant nutrition',
      price: 'EGP 80.00',
    ),
  ],
};
