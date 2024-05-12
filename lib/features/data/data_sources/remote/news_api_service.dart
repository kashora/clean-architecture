import 'package:clean_arch_learning/core/constant/constants.dart';
import 'package:clean_arch_learning/features/data/models/article.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'news_api_service.g.dart';

// Specify the type of the api
@RestApi(baseUrl:newsApiBaseURL)
abstract class NewsApiService{

  factory NewsApiService(Dio dio) = _NewsApiService;

  // GET request
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    // parameters for the API request
    @Query("apiKey") String ? apiKey,
    @Query('country') String ? country,
    @Query('category') String ? category,
  });


}