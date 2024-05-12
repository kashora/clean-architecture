import 'package:clean_arch_learning/core/resources/data_state.dart';
import 'package:clean_arch_learning/core/usecases/usecase.dart';
import 'package:clean_arch_learning/features/domain/entities/article.dart';
import 'package:clean_arch_learning/features/domain/repository/article_repository.dart';

class GetArticlesUseCase implements UseCase<DataState<List<ArticleEntity>>, void>{

  final ArticleRepository _articleRepo;

  GetArticlesUseCase(this._articleRepo);


  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    
    return _articleRepo.getNewsArticles();
  }


}