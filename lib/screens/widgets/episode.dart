import 'package:flutter/material.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.icon,
      required this.description});
  final String image;
  final String title;
  final IconData icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff26233e),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Apply border radius
                child: Image.asset(
                  image,
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Icon(icon, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
