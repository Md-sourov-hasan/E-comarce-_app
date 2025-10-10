import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_app/views/cart.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ProductSliderSection(),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('calvin clein regular fit slim fit shirt',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(height: 3,),
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
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        SizedBox(height: 5,),
                        Text('Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, justo vel tincidunt tempor, libero enim laoreet eros, in sollicitudin nunc lacus sit amet nibh. Curabitur blandit, orci nec dictum facilisis, urna tortor tincidunt nisl, non elementum odio felis nec nulla. Suspendisse bibendum, erat at tristique interdum, magna ipsum laoreet justo, in viverra libero risus ac velit. Quisque ultricies ex id nibh facilisis, sed dapibus turpis facilisis. Nullam finibus risus et orci tincidunt, vitae facilisis justo volutpat. Sed et sapien fringilla, vehicula velit non, gravida purus.',
                        textAlign: TextAlign.justify,
                        ),
              ],
             ),
           )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            ElevatedButton(
              onPressed:(){
                CartView();
              },
               child: Text('Add to card')
              )
           ],
        ),
      ),
    );
  }
}

class ProductSliderSection extends StatefulWidget {
  const ProductSliderSection({super.key});

  @override
  State<ProductSliderSection> createState() => _ProductSliderSectionState();
}

class _ProductSliderSectionState extends State<ProductSliderSection> {
  List<String>sliders=[
      'https://xcdn.next.co.uk/common/items/default/default/itemimages/3_4Ratio/product/lge/C83639s6.jpg?im=Resize,width=750',
      'https://rlv.zcache.com/um_the_element_of_confusion_funny_chemistry_t_shirt-rf2fd988342b74336aac9ba5efabddbf6_jg9db_644.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShLFhQVf8SpKWPMu8wBUqfI5w6gHM5DHCMS4bweECvva5wxNgCifpSBI_9PSIcpWqIgiQ&usqp=CAU',
    ];
    int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    
    return  Stack(
      children: [
        CarouselSlider.builder(
                itemCount: sliders.length,
                 itemBuilder:(context,index,pageIndex){
                  return Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image:NetworkImage(sliders[index]),
                        fit: BoxFit.cover,
                        ),
                    ),
                  );
                 },
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: false,
                    viewportFraction: 1,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentIndex=index;
                      });
                    }
                  )
                  ),
                  Positioned(
                    bottom: 10,
                    child: PageViewDotIndicator(
                      currentItem: currentIndex,
                       count: sliders.length,
                         unselectedColor: Colors.white.withOpacity(0.2),
                         selectedColor: Colors.white,
                         ),
                  ),
      ]
    );
  }
}