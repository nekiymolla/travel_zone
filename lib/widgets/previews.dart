import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewButton extends StatelessWidget {
  PreviewButton({
    super.key,
    this.onPressed,
    this.image,
    required this.title,
    required this.description,
  });

  Function()? onPressed;
  Image? image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 7,
                spreadRadius: 3.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 47,
                width: 49,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100), child: image),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget imagesContainer(Image image) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 7,
          spreadRadius: 1.0,
        ),
      ],
    ),
    width: 260,
    child: ClipRRect(borderRadius: BorderRadius.circular(40), child: image),
  );
}
