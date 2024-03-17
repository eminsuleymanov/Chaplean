import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {

  const ShareBottomSheet({ super.key });

   @override
   Widget build(BuildContext context) {
       return
     Column(
       mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         ListTile(
           leading: const Icon(Icons.share),
           title: const Text('Paylaş'),
           onTap: () {
             // Paylaşma işlemi
             Navigator.pop(context); // Bottom sheet'i kapat
           },
         ),
       ],
     );
      }
  }
 