import 'package:flutter/material.dart';
import 'package:without_get_x/widgets/apps/grids/column.dart';
import 'package:without_get_x/widgets/apps/grids/row.dart';

class ProductCard extends StatelessWidget {
  final String? imageURL;
  final String? title;
  final String? description;
  final void Function()? onTap;
  final bool isDetail;

  const ProductCard({
    super.key,
    this.imageURL,
    this.title,
    this.description,
    this.onTap,
    this.isDetail = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: renderBody(context),
    );
  }

  Widget renderBody(BuildContext context) {
    return BaseColumn(
      padding: EdgeInsets.only(left: 18, right: 18),
      margin: EdgeInsets.only(bottom: 8),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1.0, // Rasio 1:1 (Lebar : Tinggi)
          child: Container(
            color: Colors.transparent,
            child: Image.network(
              imageURL ??
                  'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        BaseRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 9,
              child: Text(
                title ?? 'card title',
                maxLines: 2, // Membatasi maksimal 2 baris
                overflow: TextOverflow
                    .ellipsis, // Menambahkan titik-titik (...) di akhir baris kedua
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: IconButton(
                icon: const Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
            ),
          ],
        ),
        isDetail
            ? Text(
                description!,
                style: const TextStyle(fontSize: 13, height: 1.5),
              )
            : Container(),
      ],
    );
  }
}
