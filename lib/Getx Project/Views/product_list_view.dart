import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/Getx%20Project/Controllers/product_controller.dart';
import 'package:getx_complete/Getx%20Project/Theme/AppString.dart';

class ProductListView extends StatelessWidget {

  ProductListView({Key? key}) : super(key: key);

   ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppString.productList),
      ),
      body: Obx((){
        if(productController.isLoading.value){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else {
          return ListView.builder(
            //itemCount: 2,

            itemCount: productController.productList.length,
              itemBuilder: (context,index){
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    //color: Colors.yellow,
                    margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(productController.productList[index].imageLink??"",
                      height: 100,
                        width: 150,
                        fit: BoxFit.fill,
                        color: Colors.purple,
                        colorBlendMode: BlendMode.color,
                      ),
                    ),
                  ),
                  Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            productController.productList[index].name??"",
                          style: const TextStyle(
                            fontSize: 18,

                          ),
                        ),

                          Text(
                            productController.productList[index].brand??"",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),

                          Text(
                            productController.productList[index].category??"",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                            ),
                          ),





                        ],
                      ),
                  ),
                  Container(color: Colors.grey[200],),


                ],
              ),
            ],
          );
        }
        );
        }
      }
      ),
    );
  }
}
