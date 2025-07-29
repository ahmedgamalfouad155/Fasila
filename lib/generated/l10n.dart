// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log in`
  String get signin {
    return Intl.message(
      'Log in',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get orContinueWith {
    return Intl.message(
      'Or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back you’ve been missed!`
  String get welcomeBackYouveBeenMissed {
    return Intl.message(
      'Welcome back you’ve been missed!',
      name: 'welcomeBackYouveBeenMissed',
      desc: '',
      args: [],
    );
  }

  /// `Login here`
  String get loginHere {
    return Intl.message(
      'Login here',
      name: 'loginHere',
      desc: '',
      args: [],
    );
  }

  /// `Create New account`
  String get createAccount {
    return Intl.message(
      'Create New account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, sign up to get started`
  String get welcomSignUpToGetStarted {
    return Intl.message(
      'Welcome, sign up to get started',
      name: 'welcomSignUpToGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account ?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `The password must be at least 8 characters long and must include:`
  String get thePasswordMustBeAtLeast8CharactersLongAndMustInclude {
    return Intl.message(
      'The password must be at least 8 characters long and must include:',
      name: 'thePasswordMustBeAtLeast8CharactersLongAndMustInclude',
      desc: '',
      args: [],
    );
  }

  /// `• Capital letter (A-Z)`
  String get capitalLetter {
    return Intl.message(
      '• Capital letter (A-Z)',
      name: 'capitalLetter',
      desc: '',
      args: [],
    );
  }

  /// `• One lowercase letter (a-z)`
  String get lowercaseLetter {
    return Intl.message(
      '• One lowercase letter (a-z)',
      name: 'lowercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `• 1 number (0-9)`
  String get number {
    return Intl.message(
      '• 1 number (0-9)',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `• 1 special character (@#+/$%^&*_-+=,.?/) `
  String get specialCharacter {
    return Intl.message(
      '• 1 special character (@#+/\$%^&*_-+=,.?/) ',
      name: 'specialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `• At least 8 characters`
  String get atLeast8Characters {
    return Intl.message(
      '• At least 8 characters',
      name: 'atLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your`
  String get pleaseEnterYour {
    return Intl.message(
      'Please enter your',
      name: 'pleaseEnterYour',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgote Password`
  String get forgotePassword {
    return Intl.message(
      'Forgote Password',
      name: 'forgotePassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop {
    return Intl.message(
      'Shop',
      name: 'shop',
      desc: '',
      args: [],
    );
  }

  /// `My Planet`
  String get myPlanet {
    return Intl.message(
      'My Planet',
      name: 'myPlanet',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Explore your plants`
  String get explore {
    return Intl.message(
      'Explore your plants',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Vegetables`
  String get vegetables {
    return Intl.message(
      'Vegetables',
      name: 'vegetables',
      desc: '',
      args: [],
    );
  }

  /// `Fruits`
  String get fruits {
    return Intl.message(
      'Fruits',
      name: 'fruits',
      desc: '',
      args: [],
    );
  }

  /// `Leavy plant`
  String get leavyPlant {
    return Intl.message(
      'Leavy plant',
      name: 'leavyPlant',
      desc: '',
      args: [],
    );
  }

  /// `Ornamental`
  String get ornamental {
    return Intl.message(
      'Ornamental',
      name: 'ornamental',
      desc: '',
      args: [],
    );
  }

  /// `Track your crop`
  String get trackYourCrop {
    return Intl.message(
      'Track your crop',
      name: 'trackYourCrop',
      desc: '',
      args: [],
    );
  }

  /// `Treat your crop and help it recover`
  String get treatYortCropAndHelpItRecover {
    return Intl.message(
      'Treat your crop and help it recover',
      name: 'treatYortCropAndHelpItRecover',
      desc: '',
      args: [],
    );
  }

  /// `Take a Picture`
  String get TakePicuture {
    return Intl.message(
      'Take a Picture',
      name: 'TakePicuture',
      desc: '',
      args: [],
    );
  }

  /// `See Diagnosis`
  String get seeDiagnosis {
    return Intl.message(
      'See Diagnosis',
      name: 'seeDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Get Medicine`
  String get getMedicine {
    return Intl.message(
      'Get Medicine',
      name: 'getMedicine',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture`
  String get takePicture {
    return Intl.message(
      'Take a picture',
      name: 'takePicture',
      desc: '',
      args: [],
    );
  }

  /// `Get Advice`
  String get getAdvice {
    return Intl.message(
      'Get Advice',
      name: 'getAdvice',
      desc: '',
      args: [],
    );
  }

  /// `Talk to an expert to your problem`
  String get talkToAnExpertToYourProblem {
    return Intl.message(
      'Talk to an expert to your problem',
      name: 'talkToAnExpertToYourProblem',
      desc: '',
      args: [],
    );
  }

  /// `Lastest products`
  String get lastestProducts {
    return Intl.message(
      'Lastest products',
      name: 'lastestProducts',
      desc: '',
      args: [],
    );
  }

  /// `Search for your plats`
  String get searchForYourplats {
    return Intl.message(
      'Search for your plats',
      name: 'searchForYourplats',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Water`
  String get water {
    return Intl.message(
      'Water',
      name: 'water',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message(
      'Temperature',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `The Soil`
  String get soil {
    return Intl.message(
      'The Soil',
      name: 'soil',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get humidity {
    return Intl.message(
      'Humidity',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `Fertilizer`
  String get fertilizer {
    return Intl.message(
      'Fertilizer',
      name: 'fertilizer',
      desc: '',
      args: [],
    );
  }

  /// `Planting`
  String get planting {
    return Intl.message(
      'Planting',
      name: 'planting',
      desc: '',
      args: [],
    );
  }

  /// `Care`
  String get care {
    return Intl.message(
      'Care',
      name: 'care',
      desc: '',
      args: [],
    );
  }

  /// `Diseases`
  String get diseases {
    return Intl.message(
      'Diseases',
      name: 'diseases',
      desc: '',
      args: [],
    );
  }

  /// `Add to my garden`
  String get addToyGarden {
    return Intl.message(
      'Add to my garden',
      name: 'addToyGarden',
      desc: '',
      args: [],
    );
  }

  /// `Posts & Planters`
  String get potsAndPlaners {
    return Intl.message(
      'Posts & Planters',
      name: 'potsAndPlaners',
      desc: '',
      args: [],
    );
  }

  /// `Garden Supplies`
  String get gardenSupplies {
    return Intl.message(
      'Garden Supplies',
      name: 'gardenSupplies',
      desc: '',
      args: [],
    );
  }

  /// `Seeds`
  String get seeds {
    return Intl.message(
      'Seeds',
      name: 'seeds',
      desc: '',
      args: [],
    );
  }

  /// `Search for your Products`
  String get searchForYourProducts {
    return Intl.message(
      'Search for your Products',
      name: 'searchForYourProducts',
      desc: '',
      args: [],
    );
  }

  /// `Add To Card`
  String get addToCard {
    return Intl.message(
      'Add To Card',
      name: 'addToCard',
      desc: '',
      args: [],
    );
  }

  /// `Q T Y`
  String get qty {
    return Intl.message(
      'Q T Y',
      name: 'qty',
      desc: '',
      args: [],
    );
  }

  /// `My Garden`
  String get myGarden {
    return Intl.message(
      'My Garden',
      name: 'myGarden',
      desc: '',
      args: [],
    );
  }

  /// `First Week`
  String get firstWeek {
    return Intl.message(
      'First Week',
      name: 'firstWeek',
      desc: '',
      args: [],
    );
  }

  /// `Second Week`
  String get secondWeek {
    return Intl.message(
      'Second Week',
      name: 'secondWeek',
      desc: '',
      args: [],
    );
  }

  /// `Third Week`
  String get thirdWeek {
    return Intl.message(
      'Third Week',
      name: 'thirdWeek',
      desc: '',
      args: [],
    );
  }

  /// `Fourth Week`
  String get fourthWeek {
    return Intl.message(
      'Fourth Week',
      name: 'fourthWeek',
      desc: '',
      args: [],
    );
  }

  /// `Fifth Week`
  String get fifthWeek {
    return Intl.message(
      'Fifth Week',
      name: 'fifthWeek',
      desc: '',
      args: [],
    );
  }

  /// `Sixth Week`
  String get sixthWeek {
    return Intl.message(
      'Sixth Week',
      name: 'sixthWeek',
      desc: '',
      args: [],
    );
  }

  /// `Seventh Week`
  String get seventhWeek {
    return Intl.message(
      'Seventh Week',
      name: 'seventhWeek',
      desc: '',
      args: [],
    );
  }

  /// `Sat`
  String get sat {
    return Intl.message(
      'Sat',
      name: 'sat',
      desc: '',
      args: [],
    );
  }

  /// `Sun`
  String get sun {
    return Intl.message(
      'Sun',
      name: 'sun',
      desc: '',
      args: [],
    );
  }

  /// `Mon`
  String get mon {
    return Intl.message(
      'Mon',
      name: 'mon',
      desc: '',
      args: [],
    );
  }

  /// `Tue`
  String get tue {
    return Intl.message(
      'Tue',
      name: 'tue',
      desc: '',
      args: [],
    );
  }

  /// `Wed`
  String get wed {
    return Intl.message(
      'Wed',
      name: 'wed',
      desc: '',
      args: [],
    );
  }

  /// `Thu`
  String get thu {
    return Intl.message(
      'Thu',
      name: 'thu',
      desc: '',
      args: [],
    );
  }

  /// `Fri`
  String get fri {
    return Intl.message(
      'Fri',
      name: 'fri',
      desc: '',
      args: [],
    );
  }

  /// `Plant Info`
  String get plantInfo {
    return Intl.message(
      'Plant Info',
      name: 'plantInfo',
      desc: '',
      args: [],
    );
  }

  /// `Reminders`
  String get reminders {
    return Intl.message(
      'Reminders',
      name: 'reminders',
      desc: '',
      args: [],
    );
  }

  /// `Add Note`
  String get addNote {
    return Intl.message(
      'Add Note',
      name: 'addNote',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Add Alarm`
  String get addAlarm {
    return Intl.message(
      'Add Alarm',
      name: 'addAlarm',
      desc: '',
      args: [],
    );
  }

  /// `Choose the lable`
  String get chooseTheLable {
    return Intl.message(
      'Choose the lable',
      name: 'chooseTheLable',
      desc: '',
      args: [],
    );
  }

  /// `Vibrate when alarm Sound`
  String get vibrateWhenAlarmSound {
    return Intl.message(
      'Vibrate when alarm Sound',
      name: 'vibrateWhenAlarmSound',
      desc: '',
      args: [],
    );
  }

  /// `Delet after goes off`
  String get deletAfterGoesOff {
    return Intl.message(
      'Delet after goes off',
      name: 'deletAfterGoesOff',
      desc: '',
      args: [],
    );
  }

  /// `Alarm Volume`
  String get alarmVolume {
    return Intl.message(
      'Alarm Volume',
      name: 'alarmVolume',
      desc: '',
      args: [],
    );
  }

  /// `Delete Alarm`
  String get deleteAlarm {
    return Intl.message(
      'Delete Alarm',
      name: 'deleteAlarm',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `My Plants`
  String get myPlants {
    return Intl.message(
      'My Plants',
      name: 'myPlants',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Fasila Pro`
  String get fasilaPro {
    return Intl.message(
      'Fasila Pro',
      name: 'fasilaPro',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Mode`
  String get mode {
    return Intl.message(
      'Mode',
      name: 'mode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Plants`
  String get plants {
    return Intl.message(
      'Plants',
      name: 'plants',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `No matching results found.`
  String get noMatchingResultsFound {
    return Intl.message(
      'No matching results found.',
      name: 'noMatchingResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get addProduct {
    return Intl.message(
      'Add Product',
      name: 'addProduct',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subTotal {
    return Intl.message(
      'Subtotal',
      name: 'subTotal',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `You Have No Products In Your Cart`
  String get youHaveNoProductsInYourCart {
    return Intl.message(
      'You Have No Products In Your Cart',
      name: 'youHaveNoProductsInYourCart',
      desc: '',
      args: [],
    );
  }

  /// `Browse and add new products`
  String get prowseAndAddNewProducts {
    return Intl.message(
      'Browse and add new products',
      name: 'prowseAndAddNewProducts',
      desc: '',
      args: [],
    );
  }

  /// `Add Products To Your Cart`
  String get addProductsToYourCart {
    return Intl.message(
      'Add Products To Your Cart',
      name: 'addProductsToYourCart',
      desc: '',
      args: [],
    );
  }

  /// `Add to my garden`
  String get addToMyGarden {
    return Intl.message(
      'Add to my garden',
      name: 'addToMyGarden',
      desc: '',
      args: [],
    );
  }

  /// `Choose Week`
  String get chooseWeek {
    return Intl.message(
      'Choose Week',
      name: 'chooseWeek',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Logging in....`
  String get loggingn {
    return Intl.message(
      'Logging in....',
      name: 'loggingn',
      desc: '',
      args: [],
    );
  }

  /// `Signing up....`
  String get signupLoading {
    return Intl.message(
      'Signing up....',
      name: 'signupLoading',
      desc: '',
      args: [],
    );
  }

  /// `You have no care plants`
  String get youHaveNoCarePlants {
    return Intl.message(
      'You have no care plants',
      name: 'youHaveNoCarePlants',
      desc: '',
      args: [],
    );
  }

  /// `Browse and add new plants`
  String get prowseAndAddNewPlants {
    return Intl.message(
      'Browse and add new plants',
      name: 'prowseAndAddNewPlants',
      desc: '',
      args: [],
    );
  }

  /// `You have no favorite plants`
  String get youHaveNoFavoritePlants {
    return Intl.message(
      'You have no favorite plants',
      name: 'youHaveNoFavoritePlants',
      desc: '',
      args: [],
    );
  }

  /// `Browse and add new favorite plants`
  String get prowseAndAddNewFavoritePlants {
    return Intl.message(
      'Browse and add new favorite plants',
      name: 'prowseAndAddNewFavoritePlants',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
