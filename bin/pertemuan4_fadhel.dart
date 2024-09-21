
void main()async{
  /*final myFuture = Future((){
    print("Create future");
    return 1;
  });*/

  /*getOrder(1).then((value){
    print("Your order : $value");
  }).catchError((error){    //catch
    print("Error $error");
  }).whenComplete((){       //finally
    print("Thank You");
  });*/

  //Asyncronous
  try{
  print("Waiting user order");
  var order = await getOrder(5);
  print ("Your order is : $order");
  } catch(e){
    print("Error: $e");
  }
  // print("main() done");
}

Future<String> getOrder(int countOrder){
  return Future.delayed(Duration(seconds: 3), () {
    // var isStockAvailable = false;
    var stock = 2;
    if(stock >= countOrder){
      return "Coffe Boba";
    }else{
      throw "Our stock is not enough";
    }
  });
}