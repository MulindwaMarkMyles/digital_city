import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  final List<String> categories = [
    'assets/agric_category.jpg',
    'assets/tourism_category.jpg',
    'assets/education_category.jpg',
    'assets/health_category.jpg',
    'assets/transport_category.jpg',
    'assets/bags_2.jpg',
    'assets/job_category.jpg',
  ];

  final List<String> categoryTitles = [
    'Agriculture',
    'Tourism',
    'Education',
    'Health',
    'Transport',
    'Ecommerce',
    'Opportunities',
  ];

  // Image categories
  late Map<String, List<String>> categoryImages = {
    'Agriculture': [
      'assets/rice.jpg',
      'assets/poultry.jpg',
      'assets/livestock.jpg',
      'assets/bananas.jpg',
      'assets/millet.jpg',
      'assets/sorghum.jpg',
      'assets/lemon.jpg',
    ],
    'Tourism': [
      'assets/arusha.jpg',
      'assets/kilimanjaro.jpg',
      'assets/nairobi.jpg',
      'assets/mombasa.jpg',
      'assets/gulu.jpg',
    ],
    'Education': [
      'assets/schools.jpg',
      'assets/colleges.jpg',
      'assets/university.jpg',
      'assets/vocational.png',
      'assets/research.jpg',
    ],
    'Health': [
      'assets/hospital.jpg',
      'assets/pDoctor.jpg',
      'assets/child.jpg',
      'assets/lab.jpg',
      'assets/dental.jpg',
      'assets/optician.jpg',
      'assets/rehabilitation.jpg',
      'assets/mental.jpg',
      'assets/maternity.jpg',
      'assets/blood.jpg',
    ],
    'Transport': [
      'assets/bus.jpg',
      'assets/taxi.jpg',
      'assets/motorcycle.jpg',
      'assets/bicycle.jpg',
      'assets/ferry.jpg',
      'assets/aeroplanes.jpg',
      'assets/canoe.jpg',
    ],
    'Ecommerce': [
      'assets/clothing.jpg',
      'assets/shoes.jpg',
      'assets/bags_2.jpg',
      'assets/jewelry.jpg',
      'assets/perfume.jpg',
    ],
    'Opportunities': [
      'assets/arusha.jpg',
      'assets/kilimanjaro.jpg',
      'assets/nairobi.jpg',
      'assets/mombasa.jpg',
      'assets/gulu.jpg',
    ],
  };

  List<String> imagesToDisplay = [];
  String? selectedCategory;

  @override
  void initState() {
    super.initState();
    setCategoryImages('Agriculture');
  }

  Future<void> setCategoryImages(String category) async {
    setState(() {
      imagesToDisplay = categoryImages[category]!;
    });
    // Pre-cache images
    for (var image in imagesToDisplay) {
      precacheImage(AssetImage(image), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        _buildHeader(),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchBox(),
                _buildCategorySection(),
                _buildRecommendedSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Ionicons.menu_outline),
              onPressed: () {},
            ),
            Text(
              'Explore EAST AFRICA',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(FluentIcons.person_12_regular),
          onPressed: () {},
        ),
      ],
    );
  }

  Padding _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {},
          ),
          hintText: "Search East Africa",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }

  Padding _buildCategorySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category', style: _sectionHeaderStyle()),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setCategoryImages(categoryTitles[index]);
                    setState(() {
                      selectedCategory = categoryTitles[index];
                    });
                  },
                  child: _CategoryItem(
                    image: categories[index],
                    title: categoryTitles[index],
                    isSelected: selectedCategory == categoryTitles[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _sectionHeaderStyle() {
    return TextStyle(
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.bold,
    );
  }

  Padding _buildRecommendedSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommended', style: _sectionHeaderStyle()),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: imagesToDisplay.length,
            itemBuilder: (context, index) {
              return _buildRecommendedCard(index);
            },
          ),
        ],
      ),
    );
  }

  Card _buildRecommendedCard(int index) {
    return Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    image: DecorationImage(
                      image: AssetImage(imagesToDisplay[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  right: 5.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.heart_12_regular,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 5.0,
                  right: 5.0,
                  child: Text(
                    imagesToDisplay[index].split('/').last.replaceAll('.jpg',
                        ''), // Assuming the filenames match the place names
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String image;
  final String title;
  final bool isSelected;

  const _CategoryItem({
    required this.image,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.blue : Colors.grey,
                width: 2,
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
