import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:vm_flutter_demo/model/food_item_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/{endpoint}")
  Future<List<FoodItem>> get(@Path("endpoint") String endpoint);

  @POST("/endpoint")
  Future<List<FoodItem>> post(
      @Path("endpoint") String endpoint, @Body() List<FoodItem> body);
}
