import 'package:flutter/material.dart';

// CircleAvatar Widget
CircleAvatar profileCircleAvatar() {
  return CircleAvatar(
    radius: 100,
    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1693711941978-b7dadd0f002b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2024&q=80"),
  );
}

// ProfileOrientationBuilder Widget
GridView profileOrientationBuilder(BuildContext context) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
    ),
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 6,
    itemBuilder: (context, index) {
      return Image.network(
        "https://images.unsplash.com/photo-1693711941978-b7dadd0f002b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2024&q=80",
        fit: BoxFit.cover,
      );
    },
  );
}

// Portrait Mode UI
Padding portraitMode(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 5),
          Center(
            child: profileCircleAvatar(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "John Doe",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Wrap(
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          SizedBox(height: 8),
          profileOrientationBuilder(context),
        ],
      ),
    ),
  );
}

// Landscape Mode UI
SingleChildScrollView landScapeMode(BuildContext context) {
  return SingleChildScrollView(
    child: Row(
      children: [
        Expanded(
          child: profileCircleAvatar(),
        ),
        Expanded(
          child: Column(
            children: [
              Wrap(
                children: [
                  Text(
                    "John Doe",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              SizedBox(height: 8),
              profileOrientationBuilder(context),
            ],
          ),
        ),
      ],
    ),
  );
}



// import 'package:flutter/material.dart';

// final image =
//     "https://images.unsplash.com/photo-1695754190190-f348b84f66d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1976&q=80";

// //=====CIRCLE_AVATAR=====
// CircleAvatar profileCircleAvatar() {
//   return CircleAvatar(
//     radius: 100,
//     backgroundImage: NetworkImage(
//         image.toString()),
//   );
// }

// //=====PROFILE_ORIENTATION_BUILDER=====
// GridView profileOrientationBuilder(context) {
//   return GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       mainAxisSpacing: 3,
//       crossAxisSpacing: 3,
//     ),
//     physics: const NeverScrollableScrollPhysics(),
//     shrinkWrap: true,
//     itemCount: 6,
//     itemBuilder: (context, index) {
//       return Image.network(
//         image.toString(),
//         fit: BoxFit.cover,
//       );
//     },
//   );
// }

// //====HOME_SCREEN_UI_PORTRAIT_MODE======
// Padding portraitMode(context) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         children: [
//           SizedBox(height: 5),
//           Center(
//             child: profileCircleAvatar(),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5),
//             child: Text(
//               "John Doe",
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//           ),
//           Wrap(
//             children: [
//               Text(
//                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
//                 style: Theme.of(context).textTheme.bodySmall,
//               )
//             ],
//           ),
//           SizedBox(height: 8),
//           profileOrientationBuilder(context)
//         ],
//       ),
//     ),
//   );
// }

// //====HOME_SCREEN_UI_LANDSCAPE_MODE======
// SingleChildScrollView landScapeMode(context) {
//   return SingleChildScrollView(
//     child: Row(
//       children: [
//         Expanded(
//           child: profileCircleAvatar(),
//         ),
//         Expanded(
//             child: Column(
//           children: [
//             Wrap(
//               children: [
//                 Text(
//                   "Jhon Deo",
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//                 Text(
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
//                   style: Theme.of(context).textTheme.bodySmall,
//                 )
//               ],
//             ),
//             SizedBox(height: 8),
//             profileOrientationBuilder(context),
//           ],
//         )),
//       ],
//     ),
//   );
// }
