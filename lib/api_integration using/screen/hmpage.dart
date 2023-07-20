import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product control.dart';
import '../widget/Widget1.dart';


void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(home: homepage(),));
}
class homepage extends StatelessWidget {

  final productcontrol Productcontrol = Get.put(productcontrol());

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 20, 194, 194),
            title: Text(
              "Employee List",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Obx(() {
            if (Productcontrol.isLoading.value) {
              return SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return SliverList.builder(
                itemCount: Productcontrol.productlist.length,
                itemBuilder: (context, index) {
                  return product_tile(Productcontrol.productlist[index]);
                },
              );
            }
          }),
        ]),
      );
  }
}



