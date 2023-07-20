import 'package:get/get.dart';

import '../services/http_services.dart';

class productcontrol extends GetxController
{

  var isLoading = true.obs;

  var productlist = [].obs;

  @override
  void onInit()
  {
    fetchproduct();
  }

  void fetchproduct() async
  {
   try{
     isLoading(true);
     var products = await HttpServices.fetchdataProduct();
     if(products != null)
       {
         productlist.value = products;
       }
   }catch(e){print(e);}
   finally
       {
         isLoading(false);
       }
  }

}