import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// class ZoomableImage extends StatelessWidget {
//   final String imagePath;

//   const ZoomableImage({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Zoomable Image')),
//       body: GestureDetector(
//         onPanUpdate: (details) {
//           // Handle image dragging here
//         },
//         child: PhotoView(
//           imageProvider: AssetImage(imagePath),
//           minScale: PhotoViewComputedScale.contained,
//           maxScale: PhotoViewComputedScale.covered * 2.0,
//           enableRotation: true,
//         ),
//       ),
//     );
//   }
// }

class ZoomableImage extends StatelessWidget {
  final String imagePath;

  const ZoomableImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Navigation'),
      ),
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage(imagePath),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2.0,
          enableRotation: false,
        ),
      ),
    );
  }
}
