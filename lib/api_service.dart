import 'package:block_part2/SERVICES/api_call.dart';
import 'package:http/http.dart' as http;


class Api_Services{

   Future<List<Samijson>?> getUser_data()async{

     var response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

if(response.statusCode==200){
     return samijsonFromJson(response.body);
}

   }

}