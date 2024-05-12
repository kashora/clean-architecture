import 'package:clean_arch_learning/core/resources/data_state.dart';
import 'package:clean_arch_learning/features/data/models/article.dart';
import 'package:clean_arch_learning/features/domain/entities/article.dart';

abstract class ArticleRepository {
  // the function return a list of articleModel instead of articleEntity because the data layer should not depend on the domain layer
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
