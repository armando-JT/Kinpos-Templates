import 'package:flutter/material.dart';
import 'package:kinpostemplates/uiUtilities/uiUtilities.dart';

gradientButton(String text, double width, List<Color> gradient) {
  return GestureDetector(
          onTap: () {
            
          },
          child: Container(
            width: width ,
            height: 50 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: gradient,
                
                ),
            ),
            child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, color: offwhite),))
          ),
        );
}

class StoreCard extends StatelessWidget {
  final String imageLink;
  final Color offwhite;
  final Color normalText;
  final List<Color> coolGradient;

  const StoreCard({
    Key? key,
    required this.imageLink,
    this.offwhite = const Color(0xFFF5F5F5),
    this.normalText = const Color(0xFF333333),
    this.coolGradient = const [Color(0xFF00C6FF), Color(0xFF0072FF)],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: offwhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: const BoxDecoration(),
                  width: double.infinity,
                  height: 150,
                  child: Image.network(
                    imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: coolGradient,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                child: const Text(
                  'Top Choices',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Cool place to stay at",
                style: TextStyle(
                  color: normalText.withAlpha(180),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: coolGradient,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                child: const Icon(Icons.location_city, size: 22),
              ),
              const SizedBox(width: 5),
              Text(
                "City, Country",
                style: TextStyle(
                  color: normalText,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(width: 10),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: coolGradient,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                child: const Icon(Icons.star, size: 22),
              ),
              const SizedBox(width: 5),
              Text(
                "4.5",
                style: TextStyle(
                  color: normalText,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  final String imageLink;
  final String title;
  final String description;
  final bool inStock;
  final List<Color> coolGradient;
  final Color offwhite;
  final Color offblack;
  final Color goodInfo;
  final List<Color> greyGradient;

  const ShoppingCard({
    Key? key,
    required this.imageLink,
    required this.title,
    required this.description,
    this.inStock = true,
    this.coolGradient = const [Color(0xFF00C6FF), Color(0xFF0072FF)],
    this.offwhite = const Color(0xFFF5F5F5),
    this.offblack = const Color(0xFF333333),
    this.goodInfo = const Color(0xFF4CAF50),
    this.greyGradient = const [Color(0xFFE0E0E0), Color(0xFFBDBDBD)],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyleCartItemTitle = TextStyle(fontWeight: FontWeight.bold);
    final textStyleCartItemDesc = TextStyle(color: offblack.withAlpha(200));
    final textSTOCK = TextStyle(
      color: inStock ? goodInfo : Colors.red,
      fontWeight: FontWeight.bold,
    );
    const priceTagStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    );
    const textStyleGreyButtons = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    final isStock = inStock ? "IN STOCK" : "OUT OF STOCK";

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: 100,
                        height: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.network(
                          imageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: textStyleCartItemTitle),
                          Text(description, style: textStyleCartItemDesc),
                          Text(isStock, style: textSTOCK),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close, color: offblack),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: greyGradient,
                              ),
                            ),
                            child: Row(
                              children: [
                                Text("1", style: textStyleGreyButtons),
                                const SizedBox(width: 5),
                                const Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: greyGradient,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("G", style: textStyleGreyButtons),
                                const SizedBox(width: 5),
                                const Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: coolGradient,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },
                      child: const Text(
                        '\$60',
                        style: priceTagStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  final String title;
  final String imageLink;
  final Color highlightColor;

  const SmallCard({
    Key? key,
    required this.title,
    required this.imageLink,
    this.highlightColor = const Color(0xFFff00cc),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: double.infinity,
                height: 120,
                child: Image.network(
                  imageLink,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withAlpha(170),
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'View offer',
                  style: TextStyle(
                    color: highlightColor,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: highlightColor,
                  size: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final List<Color> gradient;
  final FontWeight fontWeight;

  const GradientText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.gradient = const [Colors.blue, Colors.purple],
    this.fontWeight = FontWeight.w800,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: gradient,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}