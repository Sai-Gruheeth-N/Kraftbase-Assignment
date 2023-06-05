import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/widgets/custom_icon_button.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewPostScreenAppbar(),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        height: 168,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFFF6F8FC),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "What's happening?",
                    hintStyle: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: AppColors.labelTextColor,
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomIconButton(
                        icon: Image.asset('images/newPostIcons/image.png'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 16),
                      CustomIconButton(
                        icon: Image.asset('images/newPostIcons/video.png'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 16),
                      CustomIconButton(
                        icon: Image.asset('images/newPostIcons/document.png'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Flexible(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(52, 252, 127, 25),
                        borderRadius: BorderRadius.circular(65.0),
                        border: Border.all(
                          color: const Color(0xFFFC8019),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Everyone can view & reply',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.readexPro(
                            fontWeight: FontWeight.w700,
                            fontSize: 9.0,
                            color: const Color(0xFFFC8019),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPostScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const NewPostScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      shadowColor: const Color.fromARGB(230, 255, 255, 255),
      actions: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CustomIconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 16,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  width: 98,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFC8019),
                    borderRadius: BorderRadius.circular(65.0),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Share Now',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
