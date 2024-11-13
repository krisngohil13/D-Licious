import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_delivery/create_food_page.dart';
import 'package:food_delivery/product_details_page.dart';
import 'package:http/http.dart' as http;

class FoodListApi extends StatefulWidget {
  FoodListApi({super.key});

  @override
  _FoodListApiState createState() => _FoodListApiState();
}

class _FoodListApiState extends State<FoodListApi> {
  List<dynamic> foodList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food List"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateFoodPage(onCreate: _createFood),
                ),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: getFoodListFromApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  final item = foodList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            item: item,
                            onDelete: (id) async {
                              final response = await http.delete(
                                Uri.parse('https://63ef0a394d5eb64db0c228ac.mockapi.io/Food/$id'),
                              );
                              if (response.statusCode == 200) {
                                setState(() {
                                  foodList.removeWhere((element) => element['id'] == id);
                                });
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Item deleted successfully!')),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Failed to delete item!')),
                                );
                              }
                            },
                            onUpdate: (updatedItem) async {
                              final response = await http.put(
                                Uri.parse('https://63ef0a394d5eb64db0c228ac.mockapi.io/Food/${updatedItem['id']}'),
                                body: jsonEncode(updatedItem),
                                headers: {'Content-Type': 'application/json'},
                              );
                              if (response.statusCode == 200) {
                                setState(() {
                                  final index = foodList.indexWhere((item) => item['id'] == updatedItem['id']);
                                  if (index != -1) {
                                    foodList[index] = updatedItem;
                                  }
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Item updated successfully!')),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Failed to update item!')),
                                );
                              }
                            },
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                              child: Image.network(
                                item['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'] ?? 'No Name',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  'Price: \$${item['price']}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(child: Text('No data Found'));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<dynamic>> getFoodListFromApi() async {
    final response = await http.get(Uri.parse('https://63ef0a394d5eb64db0c228ac.mockapi.io/Food'));
    if (response.statusCode == 200) {
      foodList = jsonDecode(response.body);
    } else {
      foodList = [];
    }
    return foodList;
  }

  _createFood(Map<String, dynamic> newFood) async {
    final response = await http.post(
      Uri.parse('https://63ef0a394d5eb64db0c228ac.mockapi.io/Food'),
      body: jsonEncode(newFood),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201) {
      final addedFood = jsonDecode(response.body);
      setState(() {
        foodList.add(addedFood);
      });
      Navigator.pop(context); // Close the create food page
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('New food item added!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to add food item!')),
      );
    }
  }
}
