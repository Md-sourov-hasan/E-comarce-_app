import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:my_app/views/product-details/product_details.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Resent product',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'View more',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: 10,),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
                ),
               itemBuilder: (_,index){
                return InkWell(
                  onTap: () {
                    Get.to(()=>ProductDetailsView());
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
                            image: NetworkImage('https://fabrilife.com/products/6465ff10c753e-square.jpg'),
                            fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, justo vel',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                           Text('\$30',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                      ),
                      SizedBox(width: 5,),
                       Text('\$35',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 73, 72, 72),
                        decoration: TextDecoration.lineThrough
                      )
                      ),
                        ],
                      )
                    ],
                  ),
                );
               }
               ),
        ],
      ),
    );
  }
}