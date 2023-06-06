import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/code_view.dart';

class CRUDPage extends StatelessWidget {
  const CRUDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CodeView(
            text: '''
## Create, Read, Update and Delete items from backend service

- To Create, Read, Update and Delete (CRUD) from backend or DataBase,

  ```dart
  final products = RM.injectCRUD<Product, Param>(
      ()=> MyProductRepository(), // Implements ICRUD<Product, Param>
      readOnInitialization: true, // Optional (Default is false)
  );
  ```

  ```dart
  // READ
  products.crud.read(param: (param)=> NewParam());
  // CREATE
  products.crud.create(NewProduct());
  // UPDATE
  products.crud.update(
    where: (product) => product.id == 1,
    set: (product)=> product.copyWith(...),
  );
  // DELETE
  products.crud.delete(
    where: (product) => product.id == 1,
    isOptimistic: false, // Optional (Default is true)
  );
  ```

  - [🔍 See more detailed information about `InjectCRUD`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_crud_api).

  - [**Here is a working example of a CRUD app**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/ex005_00_crud_operations).

''',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
