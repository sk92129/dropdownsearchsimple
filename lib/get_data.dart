//import 'package:dio/dio.dart';

import 'dropdown_item_model.dart';



// Future<List<DropdownItemModel>> getData(filter) async {
//   var response = await Dio().get(
//     "https://63c1210999c0a15d28e1ec1d.mockapi.io/users",
//     queryParameters: {"filter": filter},
//   );

//   final data = response.data;
//   if (data != null) {
//     return DropdownItemModel.fromJsonList(data);
//   }

//   return [];
// }



// Define a static list of DropdownItemModel objects with createdAt timestamp
// Define a static list of DropdownItemModel objects with unique names and createdAt timestamp
final List<DropdownItemModel> staticData = [
  DropdownItemModel(id: '1', name: 'Unique Item 1', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '2', name: 'Unique Item 2', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '3', name: 'Unique Item 3', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '4', name: 'Unique Item 4', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '5', name: 'Unique Item 5', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '6', name: 'Unique Item 6', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '7', name: 'Unique Item 7', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '8', name: 'Unique Item 8', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '9', name: 'Unique Item 9', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '10', name: 'Unique Item 10', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '11', name: 'Unique Item 11', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '12', name: 'Unique Item 12', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '13', name: 'Unique Item 13', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '14', name: 'Unique Item 14', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '15', name: 'Unique Item 15', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '16', name: 'Frank Item 16', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '17', name: 'John Item 17', createdAt: DateTime.now(), avatar: ""),
  DropdownItemModel(id: '18', name: 'Sam Item 18', createdAt: DateTime.now(), avatar: ""),
];



Future<List<DropdownItemModel>> getDataStatic(String filter) async {
  // Filter the static list based on the filter string
  return staticData.where((item) => item.name.contains(filter)).toList();
}