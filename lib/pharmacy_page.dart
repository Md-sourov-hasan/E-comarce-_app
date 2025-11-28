import 'package:flutter/material.dart';

class Product {
  final String img;
  final String title;
  final String price;
  final String oldPrice;

  Product(this.img, this.title, this.price, this.oldPrice);
}

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------- Top Banners ----------
          // SizedBox(
          //   height: 180,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       promoCard("Cleaner, Healthier",
          //           "https://cdn-icons-png.flaticon.com/512/3075/3075977.png"),
          //       promoCard("Banglameds",
          //           "https://cdn-icons-png.flaticon.com/512/2966/2966481.png"),
          //       promoCard("Special Offer",
          //           "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
          //       promoCard("Bank Offer",
          //           "https://cdn-icons-png.flaticon.com/512/4298/4298373.png"),
          //     ],
          //   ),
          // ),

          const SizedBox(height: 20),

          // ---------- Category Grid ----------
          const Text(
            "All Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              gridCategory("Winter",
                  "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
              gridCategory("Flash Sale",
                  "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
              gridCategory("Food",
                  "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
              gridCategory("Cleaning",
                  "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
              gridCategory("Personal",
                  "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
              gridCategory("Health",
                  "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
            ],
          ),

          const SizedBox(height: 20),

          // ---------------- Product Sections ----------------

          productSection("Fresh Vegetables", [
            Product(
                "https://cdn-icons-png.flaticon.com/512/135/135695.png",
                "Fresh Tomato (1kg)",
                "৳55",
                "৳70"),
            Product(
                "https://cdn-icons-png.flaticon.com/512/415/415682.png",
                "Carrot (500gm)",
                "৳40",
                "৳55"),
            Product(
                "https://cdn-icons-png.flaticon.com/512/765/765415.png",
                "Cucumber (1kg)",
                "৳45",
                "৳60"),
          ]),

          const SizedBox(height: 20),

          productSection("Chicken Snacks", [
            Product(
                "https://cdn-icons-png.flaticon.com/512/1046/1046785.png",
                "Fried Chicken Wings",
                "৳320",
                "৳380"),
            Product(
                "https://cdn-icons-png.flaticon.com/512/590/590836.png",
                "Chicken Popcorn",
                "৳260",
                "৳300"),
            Product(
                "https://cdn-icons-png.flaticon.com/512/3075/3075970.png",
                "Chicken Samosa (6 pcs)",
                "৳120",
                "৳150"),
          ]),

          const SizedBox(height: 20),

          productSection("Daily Needs", [
            Product(
                "https://cdn-icons-png.flaticon.com/512/1046/1046857.png",
                "Pure Water (2L)",
                "৳35",
                "৳40"),
            Product(
                "https://cdn-icons-png.flaticon.com/128/991/991952.png",
                "Premium Salt (1kg)",
                "৳28",
                "৳35"),
            Product(
                "https://cdn-icons-png.flaticon.com/512/3277/3277807.png",
                "Brown Sugar (1kg)",
                "৳115",
                "৳150"),
          ]),
        ],
      ),
    );
  }

  // ---------------------- PROMO CARD ----------------------
  static Widget promoCard(String title, String imageUrl) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          opacity: 0.85,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Text(title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  // ---------------------- CATEGORY GRID ----------------------
  static Widget gridCategory(String title, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 50),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  // ---------------------- PRODUCT SECTION ----------------------
  static Widget productSection(String title, List<Product> products) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text("View More ➜",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(height: 10),

        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return productCard(
                products[index].img,
                products[index].title,
                products[index].price,
                products[index].oldPrice,
              );
            },
          ),
        ),
      ],
    );
  }

  // ---------------------- SINGLE PRODUCT CARD ----------------------
  static Widget productCard(
      String img, String title, String price, String oldPrice) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Center(child: Image.network(img, height: 90)),
              ),

              Positioned(
                right: 10,
                bottom: 10,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    mini: true,
                    child: const Icon(Icons.add,
                        color: Colors.purple, size: 18),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            children: [
              Text(price,
                  style: const TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              const SizedBox(width: 6),
              Text(oldPrice,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough,
                  )),
            ],
          ),

          const SizedBox(height: 4),
          Text(title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
