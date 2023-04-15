// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
//
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       throw UnsupportedError(
//         'DefaultFirebaseOptions have not been configured for web - '
//             'you can reconfigure this by running the FlutterFire CLI again',
//       );
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for web - '
//               'you can reconfigure this by running the FlutterFire CLI again',
//         );
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for web - '
//               'you can reconfigure this by running the FlutterFire CLI again',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for web - '
//               'you can reconfigure this by running the FlutterFire CLI again',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform',
//         );
//     }
//   }
//
//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyBzpIhlILWtb91Gyh4_u3HPW2IXfjN8B4w',
//     appId: '1:635719250389:android:e465b51e6fd39e3395cd5c',
//     messagingSenderId: '',
//     projectId: '',
//   );
// }