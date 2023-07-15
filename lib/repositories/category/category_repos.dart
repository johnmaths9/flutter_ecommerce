import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/models/category_model.dart';
import 'package:ecommerce_app/repositories/category/base_category_repos.dart';

class CategoryRepos extends BaseCategoryRepository {
  final FirebaseFirestore _firebaseFirestore;

  CategoryRepos({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Category>> getAllCategories() {
    return _firebaseFirestore
        .collection('categories')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Category.fromSnapShot(doc);
      }).toList();
    });
  }
}
