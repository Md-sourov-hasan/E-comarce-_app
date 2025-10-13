import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:my_app/views/product-details/product_details.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key,});

  @override
  Widget build(BuildContext context) {
    final FireStore = FirebaseFirestore.instance;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Resent product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Text(
                'View more',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          StreamBuilder(
            stream: FireStore.collection('products').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const Center(
                  child: Text('No products'),
                );
              }

              // ✅ এখান থেকে ডেটা থাকলে GridView রিটার্ন হবে
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (_, index) {
                  final product = snapshot.data!.docs[index];
                  return InkWell(
                    onTap: () {
                      Get.to(() =>  ProductDetailsView(product:product.data(),));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                              image: NetworkImage(product['thumnail']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          product['title'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(
                              "৳${product['discount_price'] ?? product['original_price']}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (product['discount_price'] != null) ...[
                              const SizedBox(width: 5,),
                              Text(
                                '৳${product['original_price']}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 73, 72, 72),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ]
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
