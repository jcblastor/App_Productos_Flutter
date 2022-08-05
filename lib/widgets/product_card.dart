import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      width: double.infinity,
      height: 400,
      decoration: _cardBorders(),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          _BackgroundImage(),
          _ProductDetails(),
          Positioned(
            top: 0,
            right: 0,
            child: _PriceTag(),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: _NotAvailable(),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 7),
            blurRadius: 10,
          )
        ],
      );
}

class _NotAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'No disponible',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class _PriceTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          '\$10.99',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 50),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 60,
      decoration: _buidBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Disco duro',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Id del disco duro',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }

  BoxDecoration _buidBoxDecoration() => const BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      );
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: const SizedBox(
        width: double.infinity,
        height: 400,
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://cdn.shopify.com/s/files/1/0533/2089/files/placeholder-images-product-5_large.png?format=jpg&quality=90&v=1530129458'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
