import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../views/detail_view.dart';

class NavigationController {

  void openDetails(
    BuildContext context,
    Product product,
  ) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailView(
          product: product,
        ),
      ),
    );
  }
}