import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> item;
  final Function(String) onDelete;
  final Function(Map<String, dynamic>) onUpdate;

  const ProductDetailsPage({
    super.key,
    required this.item,
    required this.onDelete,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    // Controllers for each text field
    TextEditingController nameController = TextEditingController(text: item['name']);
    TextEditingController priceController = TextEditingController(text: item['price'].toString());
    TextEditingController descriptionController = TextEditingController(text: item['description']);
    TextEditingController imageController = TextEditingController(text: item['image']);

    return Scaffold(
      appBar: AppBar(
        title: Text(item['name'] ?? 'Product Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                item['image'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Food Name'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Price'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: imageController,
                decoration: const InputDecoration(labelText: 'Image URL'),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => onDelete(item['id']),
                    icon: const Icon(Icons.delete),
                    label: const Text('Delete'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      final updatedItem = {
                        'id': item['id'],
                        'name': nameController.text,
                        'price': double.tryParse(priceController.text) ?? 0.0,
                        'description': descriptionController.text,
                        'image': imageController.text,
                      };

                      onUpdate(updatedItem);
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text('Update'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
