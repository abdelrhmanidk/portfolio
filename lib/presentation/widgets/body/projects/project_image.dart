import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Image.asset(
        image,
        
        width: double.infinity,
        fit: BoxFit.cover,
        // errorWidget: (context, url, error) {
        //   return Icon(
        //     Icons.error,
        //     color: AppColors.darkColor,
        //     size: 50,
        //   );
        // },
      ),
    );
  }
}
