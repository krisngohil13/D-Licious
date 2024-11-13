import 'dart:convert';
import 'package:flutter/material.dart';

class CreateFoodPage extends StatefulWidget {
  final Function(Map<String, dynamic>) onCreate;

  const CreateFoodPage({super.key, required this.onCreate});

  @override
  _CreateFoodPageState createState() => _CreateFoodPageState();
}

class _CreateFoodPageState extends State<CreateFoodPage> {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Food Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Food Name'),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Price'),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _imageController,
              decoration: const InputDecoration(labelText: 'Image URL'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final newFood = {
                  'name': _nameController.text,
                  'price': double.tryParse(_priceController.text) ?? 0.0,
                  'description': _descriptionController.text,
                  'image': _imageController.text,
                };

                widget.onCreate(newFood);
              },
              child: Text('Create Food Item'),
            ),
          ],
        ),
      ),
    );
  }
}
