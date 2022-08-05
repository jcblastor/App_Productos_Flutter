import 'package:flutter/material.dart';
import 'package:productos_app/ui/input_decorations.dart';

import 'package:productos_app/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // imagen de fondo
                const ProductImage(),

                // icono back
                Positioned(
                  top: 30,
                  left: 15,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),

                // icono camara
                Positioned(
                  top: 30,
                  right: 35,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // Formulario
            const _ProductForm(),
            const SizedBox(height: 100)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save_outlined),
        onPressed: () {},
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  const _ProductForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: _buildBoxDecoration(),
      child: Form(
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecorations.authInputDecoration(
                hintext: 'Nombre del producto',
                labelText: 'Nombre:',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                hintext: '\$150',
                labelText: 'Precio:',
              ),
            ),
            const SizedBox(height: 30),
            SwitchListTile.adaptive(
              value: true,
              title: const Text('Disponible'),
              activeColor: Colors.indigo,
              onChanged: (bool value) {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      );
}
