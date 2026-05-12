import 'package:signals/signals_flutter.dart';
import 'package:without_get_x/apps/api/product.api.dart';
import 'package:without_get_x/apps/utils/error.util.dart';

class ProductStore {
  ProductStore._internal();
  static final ProductStore _instance = ProductStore._internal();
  factory ProductStore() => _instance;

  // API
  final productAPI = ProductApi();

  // --- State (Signals) ---
  final _data = signal<List<dynamic>>([]);
  final _detail = signal<Map<String, dynamic>>({});
  final pagination = signal<Map<String, dynamic>>({
    "limit": 30,
    "page": 1,
    "skip": 0,
  });
  final totalData = signal<int>(0);
  final isLoading = signal<bool>(false);
  final error = signal<String?>(null);

  // --- Computed ---
  late final data = computed(() => _data.value);
  late final detail = computed(() => _detail.value);

  // --- Actions (Functions) ---
  Future<void> browse({Map? payload}) async {
    isLoading.value = true;
    error.value = null;
    try {
      final resp = await productAPI.browse(
        params: payload as Map<String, dynamic>,
      );

      totalData.value = resp['total'];
      _data.value = [..._data.value, ...resp['products']];
    } catch (e) {
      AppError.showError(e, 'Failed to browse products');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getById(String? id) async {
    isLoading.value = true;
    error.value = null;
    try {
      final resp = await productAPI.getById(id);
      _detail.value = resp;
    } catch (e) {
      AppError.showError(e, 'Failed to get product');
    } finally {
      isLoading.value = false;
    }
  }

  void dispose() {
    clearPagination();
    _data.value = [];
    _detail.value = {};
    error.value = null;
  }

  void clearPagination() {
    pagination.value = {"limit": 30, "page": 1, "skip": 0};
  }
}
