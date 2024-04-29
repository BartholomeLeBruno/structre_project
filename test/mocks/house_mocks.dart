import 'dart:convert';

import 'package:bts/data/repositories/dto/house_dto.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/model/near_house.dart';

class HouseMocksForTest {
  static String houseListTypesJson = '["House", "Apartment", "Hotel", "Villa", "Poor", "Rich", "Shiny", "Weinstein"]';

  static List<String> houseListTypesString = ["House", "Apartment", "Hotel", "Villa", "Poor", "Rich", "Shiny", "Weinstein"];

  static const nearHouseListJson = [
    {"distancy": 1.8, "imagePath": "assets/near-you/near_you_1.jpeg", "name": "Dreamsville House", "host": "Jl. Sultan Iskandar Muda"},
    {"distancy": 2.5, "imagePath": "assets/near-you/near_you_2.jpeg", "name": "Ascot House", "host": "Jl. Cilandak Tengah"}
  ];

  static final List<HouseDTO> nearHouseListDTO = [
    HouseDTO(imageUrl: "assets/near-you/near_you_1.jpeg", name: "Dreamsville House", host: "Jl. Sultan Iskandar Muda", distancy: 1.8),
    HouseDTO(imageUrl: "assets/near-you/near_you_2.jpeg", name: "Ascot House", host: "Jl. Cilandak Tengah", distancy: 2.5),
  ];

  static final HousesDTO housesNearDTO = HousesDTO(
    houseList: [
      HouseDTO(imageUrl: "assets/near-you/near_you_1.jpeg", name: "Dreamsville House", host: "Jl. Sultan Iskandar Muda", distancy: 1.8),
      HouseDTO(imageUrl: "assets/near-you/near_you_2.jpeg", name: "Ascot House", host: "Jl. Cilandak Tengah", distancy: 2.5),
    ],
  );

  static final HousesDTO housesBestForYouDTO = HousesDTO(
    houseList: [
      HouseDTO(
          name: "Orchad House",
          priceAYear: 2500000000,
          countBathRoom: 4,
          countBedRoom: 6,
          imageUrl: "assets/best-for-you/image_best_01.png",
          host: "host"),
      HouseDTO(
          name: "The Hollies House",
          priceAYear: 2000000000,
          countBathRoom: 2,
          countBedRoom: 5,
          imageUrl: "assets/best-for-you/image_best_02.png",
          host: "host"),
      HouseDTO(
          name: "Sea Breezes House",
          priceAYear: 1000000000,
          countBathRoom: 1,
          countBedRoom: 1,
          imageUrl: "assets/best-for-you/image_best_01.png",
          host: "host"),
      HouseDTO(
          name: "Sea Breezes House",
          priceAYear: 1000000000,
          countBathRoom: 1,
          countBedRoom: 1,
          imageUrl: "assets/best-for-you/image_best_01.png",
          host: "host"),
      HouseDTO(
          name: "Sea Breezes House",
          priceAYear: 1000000000,
          countBathRoom: 1,
          countBedRoom: 1,
          imageUrl: "assets/best-for-you/image_best_01.png",
          host: "host"),
      HouseDTO(
          name: "Sea Breezes House",
          priceAYear: 1000000000,
          countBathRoom: 1,
          countBedRoom: 1,
          imageUrl: "assets/best-for-you/image_best_01.png",
          host: "host"),
    ],
  );

  static const List<NearHouse> nearHouseListEntity = [
    NearHouse(distancy: 1.8, imagePath: "assets/near-you/near_you_1.jpeg", name: "Dreamsville House", host: "Jl. Sultan Iskandar Muda"),
    NearHouse(distancy: 2.5, imagePath: "assets/near-you/near_you_2.jpeg", name: "Ascot House", host: "Jl. Cilandak Tengah"),
  ];

  static const bestHouseListJson = [
    {
      "name": "Orchad House",
      "priceAYear": 2500000000,
      "countBedRoom": 6,
      "countBathRoom": 4,
      "imagePath": "assets/best-for-you/image_best_01.png",
      "host": "host"
    },
    {
      "name": "The Hollies House",
      "priceAYear": 2000000000,
      "countBedRoom": 5,
      "countBathRoom": 2,
      "imagePath": "assets/best-for-you/image_best_02.png",
      "host": "host"
    },
    {
      "name": "Sea Breezes House",
      "priceAYear": 1000000000,
      "countBedRoom": 1,
      "countBathRoom": 1,
      "imagePath": "assets/best-for-you/image_best_01.png",
      "host": "host"
    },
    {
      "name": "Sea Breezes House",
      "priceAYear": 1000000000,
      "countBedRoom": 1,
      "countBathRoom": 1,
      "imagePath": "assets/best-for-you/image_best_01.png",
      "host": "host"
    },
    {
      "name": "Sea Breezes House",
      "priceAYear": 1000000000,
      "countBedRoom": 1,
      "countBathRoom": 1,
      "imagePath": "assets/best-for-you/image_best_01.png",
      "host": "host"
    },
    {
      "name": "Sea Breezes House",
      "priceAYear": 1000000000,
      "countBedRoom": 1,
      "countBathRoom": 1,
      "imagePath": "assets/best-for-you/image_best_01.png",
      "host": "host"
    }
  ];
  static final List<HouseDTO> bestForYouHouseListDTO = [
    HouseDTO(
        name: "Orchad House",
        priceAYear: 2500000000,
        countBathRoom: 4,
        countBedRoom: 6,
        imageUrl: "assets/best-for-you/image_best_01.png",
        host: "host"),
    HouseDTO(
        name: "The Hollies House",
        priceAYear: 2000000000,
        countBathRoom: 2,
        countBedRoom: 5,
        imageUrl: "assets/best-for-you/image_best_02.png",
        host: "host"),
    HouseDTO(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imageUrl: "assets/best-for-you/image_best_01.png",
        host: "host"),
    HouseDTO(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imageUrl: "assets/best-for-you/image_best_01.png",
        host: "host"),
    HouseDTO(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imageUrl: "assets/best-for-you/image_best_01.png",
        host: "host"),
    HouseDTO(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imageUrl: "assets/best-for-you/image_best_01.png",
        host: "host"),
  ];

  static const List<BestForYouHouse> bestForYouHouseListEntity = [
    BestForYouHouse(
        name: "Orchad House",
        priceAYear: 2500000000,
        countBathRoom: 4,
        countBedRoom: 6,
        imagePath: "assets/best-for-you/image_best_01.png",
        host: "host"),
    BestForYouHouse(
        name: "The Hollies House",
        priceAYear: 2000000000,
        countBathRoom: 2,
        countBedRoom: 5,
        imagePath: "assets/best-for-you/image_best_02.png",
        host: "host"),
    BestForYouHouse(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imagePath: "assets/best-for-you/image_best_01.png",
        host: "host"),
    BestForYouHouse(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imagePath: "assets/best-for-you/image_best_01.png",
        host: "host"),
    BestForYouHouse(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imagePath: "assets/best-for-you/image_best_01.png",
        host: "host"),
    BestForYouHouse(
        name: "Sea Breezes House",
        priceAYear: 1000000000,
        countBathRoom: 1,
        countBedRoom: 1,
        imagePath: "assets/best-for-you/image_best_01.png",
        host: "host"),
  ];

  static JsonUnsupportedObjectError exceptionThrown = JsonUnsupportedObjectError("error", partialResult: "error on json decode");
  static Failure failure = Failure(error: Error(exceptionMessage: exceptionThrown.partialResult));
}
