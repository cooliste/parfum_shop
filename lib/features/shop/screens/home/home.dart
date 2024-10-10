import 'package:flutter/material.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:parfum_shop/common/widgets/texts/section_heading.dart';
import 'package:parfum_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:parfum_shop/utils/constants/colors.dart';
import 'package:parfum_shop/utils/constants/image_strings.dart';
import 'package:parfum_shop/utils/constants/sizes.dart';
import 'package:parfum_shop/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Padding(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  const PHomeAppBar(),
                  const SizedBox(height: PSizes.spaceBtwSections),

                  /// -- Search appbar
                  const PSearchContainer(text: 'Rechercher dans la boutique'),
                  const SizedBox(height: PSizes.spaceBtwSections),

                  /// -- Background Custom Shapes
                  Padding(
                    padding: const EdgeInsets.only(left: PSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        const PSectionHeading(
                            title: 'Les Catégories Populaires',
                            showActionButton: false,
                            textColor: Colors.white),
                        const SizedBox(height: PSizes.spaceBtwSections),

                        /// Categories

                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              PVerticalImageText(image: PImages.diorIcon, title: 'Dior', onTap: (){},);
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

