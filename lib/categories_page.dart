// import 'package:flutter/material.dart';

// class Product {
//   final String img;
//   final String title;
//   final String price;
//   final String oldPrice;

//   Product(this.img, this.title, this.price, this.oldPrice);
// }

// class CategoriesPage extends StatelessWidget {
//   const CategoriesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ---------- Top Banners ----------
//           // SizedBox(
//           //   height: 180,
//           //   child: ListView(
//           //     scrollDirection: Axis.horizontal,
//           //     children: [
//           //       promoCard("Cleaner, Healthier",
//           //           "https://cdn-icons-png.flaticon.com/512/3075/3075977.png"),
//           //       promoCard("Banglameds",
//           //           "https://cdn-icons-png.flaticon.com/512/2966/2966481.png"),
//           //       promoCard("Special Offer",
//           //           "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
//           //       promoCard("Bank Offer",
//           //           "https://cdn-icons-png.flaticon.com/512/4298/4298373.png"),
//           //     ],
//           //   ),
//           // ),

//           const SizedBox(height: 20),

//           // ---------- Category Grid ----------
//           const Text(
//             "All Categories",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
          
//           const SizedBox(height: 10),

//           GridView.count(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             crossAxisCount: 3,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: [
//               gridCategory("Winter",
//                   "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
//               gridCategory("Flash Sale",
//                   "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
//               gridCategory("Food",
//                   "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
//               gridCategory("Cleaning",
//                   "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
//               gridCategory("Personal",
//                   "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
//               gridCategory("Health",
//                   "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
//                   gridCategory("Winter",
//                   "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
//               gridCategory("Flash Sale",
//                   "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
//               gridCategory("Food",
//                   "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
//               gridCategory("Cleaning",
//                   "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
//               gridCategory("Personal",
//                   "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
//               gridCategory("Health",
//                   "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
//             ],
//           ),

//           const SizedBox(height: 20),

//           // ---------------- Product Sections ----------------

//           // productSection("Fresh Vegetables", [
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/135/135695.png",
//           //       "Fresh Tomato (1kg)",
//           //       "৳55",
//           //       "৳70"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/415/415682.png",
//           //       "Carrot (500gm)",
//           //       "৳40",
//           //       "৳55"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/765/765415.png",
//           //       "Cucumber (1kg)",
//           //       "৳45",
//           //       "৳60"),
//           // ]),

//           // const SizedBox(height: 20),

//           // productSection("Chicken Snacks", [
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/1046/1046785.png",
//           //       "Fried Chicken Wings",
//           //       "৳320",
//           //       "৳380"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/590/590836.png",
//           //       "Chicken Popcorn",
//           //       "৳260",
//           //       "৳300"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/3075/3075970.png",
//           //       "Chicken Samosa (6 pcs)",
//           //       "৳120",
//           //       "৳150"),
//           // ]),

//           // const SizedBox(height: 20),

//           // productSection("Daily Needs", [
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/1046/1046857.png",
//           //       "Pure Water (2L)",
//           //       "৳35",
//           //       "৳40"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/128/991/991952.png",
//           //       "Premium Salt (1kg)",
//           //       "৳28",
//           //       "৳35"),
//           //   Product(
//           //       "https://cdn-icons-png.flaticon.com/512/3277/3277807.png",
//           //       "Brown Sugar (1kg)",
//           //       "৳115",
//           //       "৳150"),
//           // ]),
//         ],
//       ),
//     );
//   }

//   // ---------------------- PROMO CARD ----------------------
//   static Widget promoCard(String title, String imageUrl) {
//     return Container(
//       width: 180,
//       margin: const EdgeInsets.only(right: 15),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//           opacity: 0.85,
//         ),
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           gradient: LinearGradient(
//             colors: [Colors.black.withOpacity(0.6), Colors.transparent],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(title,
//             style: const TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//       ),
//     );
//   }

//   // ---------------------- CATEGORY GRID ----------------------
//   static Widget gridCategory(String title, String imageUrl) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(imageUrl, height: 50),
//           const SizedBox(height: 8),
//           Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
//         ],
//       ),
//     );
//   }

//   // ---------------------- PRODUCT SECTION ----------------------
//   static Widget productSection(String title, List<Product> products) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(title,
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const Text("View More ➜",
//                 style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.purple,
//                     fontWeight: FontWeight.bold))
//           ],
//         ),
//         const SizedBox(height: 10),

//         SizedBox(
//           height: 240,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               return productCard(
//                 products[index].img,
//                 products[index].title,
//                 products[index].price,
//                 products[index].oldPrice,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   // ---------------------- SINGLE PRODUCT CARD ----------------------
//   static Widget productCard(
//       String img, String title, String price, String oldPrice) {
//     return Container(
//       width: 150,
//       margin: const EdgeInsets.only(right: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 130,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.grey.shade200,
//                 ),
//                 child: Center(child: Image.network(img, height: 90)),
//               ),

//               Positioned(
//                 right: 10,
//                 bottom: 10,
//                 child: SizedBox(
//                   width: 32,
//                   height: 32,
//                   child: FloatingActionButton(
//                     onPressed: () {},
//                     backgroundColor: Colors.white,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     mini: true,
//                     child: const Icon(Icons.add,
//                         color: Colors.purple, size: 18),
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 5),

//           Row(
//             children: [
//               Text(price,
//                   style: const TextStyle(
//                       color: Colors.purple,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15)),
//               const SizedBox(width: 6),
//               Text(oldPrice,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                     decoration: TextDecoration.lineThrough,
//                   )),
//             ],
//           ),

//           const SizedBox(height: 4),
//           Text(title,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                   fontSize: 14, fontWeight: FontWeight.w500)),
//         ],
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';

// class Product {
//   final String img;
//   final String title;
//   final String price;
//   final String oldPrice;

//   Product(this.img, this.title, this.price, this.oldPrice);
// }

// class CategoriesPage extends StatelessWidget {
//   const CategoriesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ---------- Top Banners ----------
//           SizedBox(
//             height: 180,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 promoCard("Cleaner, Healthier",
//                     "https://cdn-icons-png.flaticon.com/512/3075/3075977.png"),
//                 promoCard("Banglameds",
//                     "https://cdn-icons-png.flaticon.com/512/2966/2966481.png"),
//                 promoCard("Special Offer",
//                     "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
//                 promoCard("Bank Offer",
//                     "https://cdn-icons-png.flaticon.com/512/4298/4298373.png"),
//               ],
//             ),
//           ),

//           const SizedBox(height: 20),

//           // ---------- Category Grid ----------
//           const Text(
//             "All Categories",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),

//           GridView.count(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             crossAxisCount: 3,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             children: [
//               gridCategory("Winter",
//                   "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
//               gridCategory("Flash Sale",
//                   "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
//               gridCategory("Food",
//                   "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
//               gridCategory("Cleaning",
//                   "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
//               gridCategory("Personal",
//                   "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
//               gridCategory("Health",
//                   "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
//             ],
//           ),

//           const SizedBox(height: 20),

//           // ---------------- Product Sections ----------------

//           productSection("Fresh Vegetables", [
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/135/135695.png",
//                 "Fresh Tomato (1kg)",
//                 "৳55",
//                 "৳70"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/415/415682.png",
//                 "Carrot (500gm)",
//                 "৳40",
//                 "৳55"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/765/765415.png",
//                 "Cucumber (1kg)",
//                 "৳45",
//                 "৳60"),
//           ]),

//           const SizedBox(height: 20),

//           productSection("Chicken Snacks", [
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/1046/1046785.png",
//                 "Fried Chicken Wings",
//                 "৳320",
//                 "৳380"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/590/590836.png",
//                 "Chicken Popcorn",
//                 "৳260",
//                 "৳300"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/3075/3075970.png",
//                 "Chicken Samosa (6 pcs)",
//                 "৳120",
//                 "৳150"),
//           ]),

//           const SizedBox(height: 20),

//           productSection("Daily Needs", [
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/1046/1046857.png",
//                 "Pure Water (2L)",
//                 "৳35",
//                 "৳40"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/128/991/991952.png",
//                 "Premium Salt (1kg)",
//                 "৳28",
//                 "৳35"),
//             Product(
//                 "https://cdn-icons-png.flaticon.com/512/3277/3277807.png",
//                 "Brown Sugar (1kg)",
//                 "৳115",
//                 "৳150"),
//           ]),
//         ],
//       ),
//     );
//   }

//   // ---------------------- PROMO CARD ----------------------
//   static Widget promoCard(String title, String imageUrl) {
//     return Container(
//       width: 180,
//       margin: const EdgeInsets.only(right: 15),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//           opacity: 0.85,
//         ),
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           gradient: LinearGradient(
//             colors: [Colors.black.withOpacity(0.6), Colors.transparent],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(title,
//             style: const TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//       ),
//     );
//   }

//   // ---------------------- CATEGORY GRID ----------------------
//   static Widget gridCategory(String title, String imageUrl) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(imageUrl, height: 50),
//           const SizedBox(height: 8),
//           Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
//         ],
//       ),
//     );
//   }

//   // ---------------------- PRODUCT SECTION ----------------------
//   static Widget productSection(String title, List<Product> products) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(title,
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const Text("View More ➜",
//                 style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.purple,
//                     fontWeight: FontWeight.bold))
//           ],
//         ),
//         const SizedBox(height: 10),

//         SizedBox(
//           height: 240,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               return productCard(
//                 products[index].img,
//                 products[index].title,
//                 products[index].price,
//                 products[index].oldPrice,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   // ---------------------- SINGLE PRODUCT CARD ----------------------
//   static Widget productCard(
//       String img, String title, String price, String oldPrice) {
//     return Container(
//       width: 150,
//       margin: const EdgeInsets.only(right: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 130,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.grey.shade200,
//                 ),
//                 child: Center(child: Image.network(img, height: 90)),
//               ),

//               Positioned(
//                 right: 10,
//                 bottom: 10,
//                 child: SizedBox(
//                   width: 32,
//                   height: 32,
//                   child: FloatingActionButton(
//                     onPressed: () {},
//                     backgroundColor: Colors.white,
//                     elevation: 2,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     mini: true,
//                     child: const Icon(Icons.add,
//                         color: Colors.purple, size: 18),
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 5),

//           Row(
//             children: [
//               Text(price,
//                   style: const TextStyle(
//                       color: Colors.purple,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15)),
//               const SizedBox(width: 6),
//               Text(oldPrice,
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                     decoration: TextDecoration.lineThrough,
//                   )),
//             ],
//           ),

//           const SizedBox(height: 4),
//           Text(title,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                   fontSize: 14, fontWeight: FontWeight.w500)),
//         ],
//       ),
//     );
//   }
// }

// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // class CategoriesPage extends StatefulWidget {
// //   const CategoriesPage({super.key});

// //   @override
// //   State<CategoriesPage> createState() => _GroceryPageState();
// // }

// // class _GroceryPageState extends State<CategoriesPage> {
// //   List<String> images = [];
// //   bool loading = true;

// //   // -------------------- Fetch images from NestJS --------------------
// //   Future<void> fetchImages() async {
// //     const String baseUrl = "https://api-tesing.onrender.com"; // LIVE API URL

// //     try {
// //       final response = await http.get(
// //         Uri.parse("$baseUrl/image/all"),
// //       );

// //       if (response.statusCode == 200) {
// //         final data = jsonDecode(response.body);

// //         setState(() {
// //           images = List<String>.from(
// //             data["images"].map((img) => img["url"]),
// //           );
// //           loading = false;
// //         });
// //       } else {
// //         setState(() => loading = false);
// //         print("Failed to load images: ${response.statusCode}");
// //       }
// //     } catch (e) {
// //       setState(() => loading = false);
// //       print("Error fetching images: $e");
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchImages();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("All Uploaded Images"),
// //         backgroundColor: Colors.purple,
// //       ),
// //       body: loading
// //           ? const Center(child: CircularProgressIndicator())
// //           : images.isEmpty
// //               ? const Center(child: Text("No Images Found"))
// //               : GridView.builder(
// //                   padding: const EdgeInsets.all(10),
// //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                     crossAxisCount: 3,
// //                     mainAxisSpacing: 10,
// //                     crossAxisSpacing: 10,
// //                   ),
// //                   itemCount: images.length,
// //                   itemBuilder: (context, index) {
// //                     final url = images[index];

// //                     return Container(
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(12),
// //                         color: Colors.grey.shade200,
// //                       ),
// //                       child: ClipRRect(
// //                         borderRadius: BorderRadius.circular(12),
// //                         child: Image.network(
// //                           url,
// //                           fit: BoxFit.cover,
// //                           errorBuilder: (context, error, stackTrace) =>
// //                               const Icon(Icons.broken_image, size: 40),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //     );
// //   }
// // }



// // import 'dart:convert';
// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // class CategoriesPage extends StatefulWidget {
// //   const CategoriesPage({super.key});

// //   @override
// //   State<CategoriesPage> createState() => _GroceryPageState();
// // }

// // class _GroceryPageState extends State<CategoriesPage> {
// //   List<String> images = [];
// //   bool loading = true;

// //   // -------------------- Fetch images from NestJS --------------------
// //   Future<void> fetchImages() async {
// //     const String baseUrl = "https://api-tesing.onrender.com"; // LIVE API URL

// //     try {
// //       final response = await http.get(Uri.parse("$baseUrl/image/all"));

// //       if (response.statusCode == 200) {
// //         final data = jsonDecode(response.body);

// //         setState(() {
// //           images = List<String>.from(
// //             data["images"].map((img) => img["url"]),
// //           );
// //           loading = false;
// //         });
// //       } else {
// //         setState(() => loading = false);
// //         print("Failed to load images: ${response.statusCode}");
// //       }
// //     } catch (e) {
// //       setState(() => loading = false);
// //       print("Error fetching images: $e");
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchImages();

// //     // Optional: Auto refresh every 10 seconds
// //     // Timer.periodic(const Duration(seconds: 10), (timer) {
// //     //   fetchImages();
// //     // });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("All Uploaded Images"),
// //         backgroundColor: Colors.purple,
// //       ),
// //       body: RefreshIndicator(
// //         onRefresh: fetchImages,
// //         child: loading
// //             ? const Center(child: CircularProgressIndicator())
// //             : images.isEmpty
// //                 ? const Center(child: Text("No Images Found"))
// //                 : GridView.builder(
// //                     padding: const EdgeInsets.all(10),
// //                     gridDelegate:
// //                         const SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: 3,
// //                       mainAxisSpacing: 10,
// //                       crossAxisSpacing: 10,
// //                     ),
// //                     itemCount: images.length,
// //                     itemBuilder: (context, index) {
// //                       // Cache breaker added → always fresh image
// //                       final url =
// //                           "${images[index]}?v=${DateTime.now().millisecondsSinceEpoch}";

// //                       return Container(
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(12),
// //                           color: Colors.grey.shade200,
// //                         ),
// //                         child: ClipRRect(
// //                           borderRadius: BorderRadius.circular(12),
// //                           child: Image.network(
// //                             url,
// //                             fit: BoxFit.cover,
// //                             errorBuilder: (context, error, stackTrace) =>
// //                                 const Icon(Icons.broken_image, size: 40),
// //                           ),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //       ),
// //     );
// //   }
// // }



// // import 'dart:convert';
// // import 'dart:io';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:image_picker/image_picker.dart';

// // class CategoriesPage extends StatefulWidget {
// //   const CategoriesPage({super.key});

// //   @override
// //   State<CategoriesPage> createState() => _GroceryPageState();
// // }

// // class _GroceryPageState extends State<CategoriesPage> {
// //   List<Map<String, dynamic>> images = [];
// //   bool loading = true;

// //   final String baseUrl = "https://api-tesing.onrender.com";

// //   // -------------------- Fetch images --------------------
// //   Future<void> fetchImages() async {
// //     try {
// //       final response = await http.get(Uri.parse("$baseUrl/image/all"));

// //       if (response.statusCode == 200) {
// //         final data = jsonDecode(response.body);

// //         setState(() {
// //           images = List<Map<String, dynamic>>.from(data["images"]);
// //           loading = false;
// //         });
// //       } else {
// //         loading = false;
// //         print("Failed to load images: ${response.statusCode}");
// //       }
// //     } catch (e) {
// //       loading = false;
// //       print("Error fetching images: $e");
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchImages();
// //   }

// //   // -------------------- Update Image --------------------
// //   Future<void> updateImage(String oldFile) async {
// //     final picker = ImagePicker();
// //     final picked = await picker.pickImage(source: ImageSource.gallery);

// //     if (picked == null) return;

// //     var request = http.MultipartRequest(
// //       "PUT",
// //       Uri.parse("$baseUrl/image/update/$oldFile"),
// //     );

// //     request.files.add(
// //       await http.MultipartFile.fromPath("image", picked.path),
// //     );

// //     final response = await request.send();

// //     if (response.statusCode == 200) {
// //       print("Image updated successfully");
// //       fetchImages(); // refresh UI
// //     } else {
// //       print("Failed to update image: ${response.statusCode}");
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("All Uploaded Images"),
// //         backgroundColor: Colors.purple,
// //       ),
// //       body: loading
// //           ? const Center(child: CircularProgressIndicator())
// //           : GridView.builder(
// //               padding: const EdgeInsets.all(10),
// //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 3,
// //                 mainAxisSpacing: 10,
// //                 crossAxisSpacing: 10,
// //               ),
// //               itemCount: images.length,
// //               itemBuilder: (context, index) {
// //                 final img = images[index];
// //                 final fullUrl =
// //                     "${img['url']}?v=${DateTime.now().millisecondsSinceEpoch}";

// //                 return GestureDetector(
// //                   onTap: () {
// //                     updateImage(img["filename"]);
// //                   },
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(12),
// //                       color: Colors.grey.shade200,
// //                     ),
// //                     child: ClipRRect(
// //                       borderRadius: BorderRadius.circular(12),
// //                       child: Image.network(
// //                         fullUrl,
// //                         fit: BoxFit.cover,
// //                         errorBuilder: (context, error, stackTrace) =>
// //                             const Icon(Icons.broken_image, size: 40),
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //     );
// //   }
// // }


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_app/Grocery_page.dart';
import 'package:my_app/all_store.dart';
import 'package:my_app/categories_page.dart';
import 'package:my_app/cookup_page.dart';
import 'package:my_app/customer_support.dart';
import 'package:my_app/egg_club.dart';
import 'package:my_app/help.dart';
import 'package:my_app/live_chat.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/offers.dart';
import 'package:my_app/pharmacy_page.dart';
import 'package:my_app/premium_care.dart';
import 'package:my_app/safety_center.dart';
import 'package:my_app/search-page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _HomePageState();
}

class _HomePageState extends State<CategoriesPage> {
  int bottomIndex = 0;
  int topTabIndex = 0;

  final List<String> tabs = ["Grocery", "Pharmacy", "Cookup"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),

      drawer: _buildDrawer(),   // <-- Drawer যোগ করা হলো ✔️

      body: _getBody(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.grid_outline), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.search_outline), label: "Search"),
        ],
      ),
    );
  }

// ---------------- Drawer Structure ----------------
Widget _buildDrawer() {
  return Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        
        // ----------- Drawer Header with Logo -----------
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),
              radius: 30,
              ),
              SizedBox(width: 0),
              Column(
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                 child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 136, 98, 143),fontSize: 20,fontWeight: FontWeight.bold),)
                 ),
                ],
              ),
            ],
          ),
        ),

        // --------------- Drawer Pages -----------------
        // HOME PAGE
      

        // ------------- More Pages You Want -------------
        // Example Settings Page
        ListTile(
          leading: const Icon(Icons.egg_sharp,color: Color.fromARGB(255, 202, 202, 106),),
          title: const Text("Egg Club",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EggClub()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.store,color: Colors.blueAccent),
          title: const Text("All Store",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AllStore()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.percent_outlined,color: Colors.blueAccent),
          title: const Text("All Store",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Offers()),
            );
          },
        ),
        Divider(height: 10,),
        ListTile(
          leading: const Icon(Icons.egg,color: Color.fromARGB(255, 241, 239, 79)),
          title: const Text("Premium Care",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PremiumCare()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.help_outline,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Help",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Help()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.phone_outlined,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Customer Service",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CustomerSupport()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.chat_outlined,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Live Chat",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LiveChat()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.safety_check_rounded,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Safety center",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 18,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SafetyCenter()),
            );
          },
        ),
        Divider(height: 10,),
        ListTile(
          leading: const Icon(Icons.egg,color: Color.fromARGB(240, 241, 234, 214)),
          title: const Text("Chaldal",style: TextStyle(color: Colors.black,fontStyle:FontStyle.italic)),
          // trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          // onTap: () {},
        ),
      ],
    ), 
  )
  );
}




// Widget buildDrawer() {
//   return Drawer(
//     child: Container(
//       color: Colors.white,
//       child: ListView(
//         padding: EdgeInsets.symmetric(vertical: 30),
//         children: [

//           // ---------------- Drawer Header ----------------
//           Container(
//             padding: EdgeInsets.all(20),
//             child: Row(
//               children: [

//                 // User Avatar
//                 CircleAvatar(
//                   radius: 28,
//                   backgroundColor: Colors.purple.shade100,
//                   backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png')
//                 ),

//                 SizedBox(width: 12),

//                 // Login Text + Language Switch
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Login",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.purple,
//                         ),
//                       ),

//                       SizedBox(height: 10),

//                       // Language Switch Button
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.purple.shade100,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             langButton("EN", true),
//                             langButton("বাংলা", false),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Divider(),

//           // ---------------- Menu Items ----------------
//           drawerItem(Icons.emoji_food_beverage, "Egg Club"),
//           drawerItem(Icons.store, "All Stores"),
//           drawerItem(Icons.local_offer, "Offers"),
//           drawerItem(Icons.star, "Premium Care"),
//           drawerItem(Icons.help_outline, "Help"),
//           drawerItem(Icons.support_agent, "Customer Support"),
//           drawerItem(Icons.chat, "Live Chat"),
//           drawerItem(Icons.security, "Safety Center"),

//           SizedBox(height: 30),

//           // ---------------- Footer ----------------
//           Padding(
//             padding: const EdgeInsets.only(left: 20, bottom: 20),
//             child: Row(
//               children: [
//                 Icon(Icons.egg, color: Colors.orange),
//                 SizedBox(width: 6),
//                 Text("Chaldal",
//                     style: TextStyle(
//                         fontSize: 16, color: Colors.black54)),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20),
//                   child: Text("10.4.9",
//                       style: TextStyle(color: Colors.black45)),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// // Drawer Item Builder
// Widget drawerItem(IconData icon, String title) {
//   return ListTile(
//     leading: Icon(icon, color: Colors.purple),
//     title: Text(title, style: TextStyle(fontSize: 16)),
//     trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
//     onTap: () {},
//   );
// }

// // Language Button
// Widget langButton(String text, bool active) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//     decoration: BoxDecoration(
//       color: active ? Colors.white : Colors.transparent,
//       borderRadius: BorderRadius.circular(20),
//     ),
//     child: Text(
//       text,
//       style: TextStyle(
//         color: Colors.purple,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   );
// }








  // ---------- AppBar ----------
  AppBar _buildAppBar() {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.white,
      elevation: 1,
      iconTheme: const IconThemeData(color: Colors.black), // drawer icon color
      title: Row(
        children: const [
          SizedBox(width: 5),
          Icon(Icons.location_on, color: Colors.purple),
          SizedBox(width: 5),
          Text(
            "Dhaka",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.notifications_none, color: Colors.black),
        ),
      ],
    );
  }

  // ---------- Body ----------
  Widget _getBody() {
    if (bottomIndex == 0) {
      return Column(
        children: [
          Row(
            children: List.generate(
              tabs.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      topTabIndex = index;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: topTabIndex == index
                          ? Colors.amber
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        color: topTabIndex == index
                            ? Colors.black
                            : Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: IndexedStack(
              index: topTabIndex,
              children: const [
                GroceryPage(),
                PharmacyPage(),
                CookupPage(),
              ],
            ),
          ),
        ],
      );
    } else if (bottomIndex == 1) {
      return const CategoriesPage();
    } else {
      return const SearchPage();
    }
  }
}
