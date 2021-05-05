import 'dart:math';

import 'package:flutter/material.dart';
import 'product_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ProductBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();
  ProductBloc bloc = BlocProvider.of<ProductBloc>(context);

  static BuildContext get context => null;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ListView Builder"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              bloc.dispatch(r.nextInt(4) + 2);
            },
          ),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageURL: products[index].imageURL,
                      name: products[index].name,
                      price: products[index].price.toString(),
                      onAddCartTap: (){},
                      onDecTap: () {},
                      onIncTap: () {},
                    );
                  },
                ),
              );
          ),
        ],
      ),
    );
  }
}

class Product {
  String imageURL;
  String name;
  int price;

  Product({this.imageURL = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  ProductBloc(List<Product> initialState) : super(initialState);
  // List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];

    for (int i = 0; i < event; i++)
      products.add(Product(
        imageURL:
            "https://d3psifl1ixugq1.cloudfront.net/NPWRDS_HTC_42014_pic1_B420_1031202715.jpg",
        name: "Produk" + i.toString(),
        price: (i + i) * 500,
      ));

    yield products;
  }

  void dispatch(int i) {}
}
