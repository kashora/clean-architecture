import 'dart:io';

import 'package:clean_arch_learning/core/constant/constants.dart';
import 'package:clean_arch_learning/core/resources/data_state.dart';
import 'package:clean_arch_learning/features/data/data_sources/remote/news_api_service.dart';
import 'package:clean_arch_learning/features/data/models/article.dart';
import 'package:clean_arch_learning/features/domain/entities/article.dart';
import 'package:clean_arch_learning/features/domain/repository/article_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImplem implements ArticleRepository {
  // for the API calls
  final NewsApiService _newsApiService;

  ArticleRepositoryImplem(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final HttpResponse = await _newsApiService.getNewsArticles(
        apiKey: dotenv.env['NEWSAPI_key'],
        country: countryQuery,
        category: categoryQuery,
      );

      if (HttpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess((HttpResponse.data));
      } else {
        return DataError(DioException(
            error: HttpResponse.response.statusMessage,
            response: HttpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: HttpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }
}
