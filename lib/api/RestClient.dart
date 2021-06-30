
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'RestClient.g.dart';


@RestApi(baseUrl: "https://webhook.site/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/40114c11-c54f-435f-a2de-5c450e4aae01")
  Future getTasks();
}