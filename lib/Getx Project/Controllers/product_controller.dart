import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/Getx%20Project/ApiModule/api_service.dart';
import '../Models/product_model.dart';




class ProductController extends GetxController{
  var isLoading  = true.obs;

  //var productList = RxList<ProductModel>().obs;


 // var productList = Rx<List<Product>>([]).obs;



  var productList   = <Product>[].obs;


 // late  final items    =  Rx<List<ProductModel>>([]);


  //late final productList    =  RxList<String>([]).obs;

     //final productList    =  Rx<List<Product>>([]).obs;



@override
  void onInit() {
   fetchProducts();
   ApiServices.fetchProducts();
    super.onInit();
  }




  void fetchProducts()async{
      try{
        isLoading(true);
        var products= await ApiServices.fetchProducts();
        if(products!= null){
          productList.value = products;
         // productList = products as Rx<RxList<List<Product>>>;


          //productList = assignAll(products);


          //productList = products as Rx<Rx<List<Product>>>;

         // productList = products as Rx<RxList<ProductModel>>;

          //productList.assignAll(products);



        }
      }finally{
        isLoading(false);
      }
  }

}