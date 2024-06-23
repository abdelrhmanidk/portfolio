import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

const _basePath = 'assets/images';


abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'Mobile developer with experience in Dart and Flutter framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I craft sleek web and mobile app interfaces using Figma.',
    ),
    CustomService(
      service: 'COMPUTER VISION',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Second Brain',
      image:
          '$_basePath/secondbrain.png',
      description:
          'Enhance your productivity with our Second Brain App. Your mind is for having ideas, not holding them.',
      // githubRepoLink: 'https://github.com/radyhaggag/live_score',
      // previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    Project(
      name: 'Bounce',
      image:
          '$_basePath/Bounce.png',
      description:
          'Get ready for endless fun with our Bouncing Ball Game. Are you ready to take on the challenge and see how far you can bounce?',
      // githubRepoLink:
      //     'https://github.com/radyhaggag/Instagram-Clone-With-Clean-Architecture',
      // previewLink: 'https://youtu.be/MuuVjqrR49g',
    ),
    Project(
      name: 'Minimal Coffee Shop',
      image:
          '$_basePath/coffe.png',
      description:
          'Discover the ultimate coffee experience with our Minimal Coffee Shop app. Easy ordering, quick service, and your favorite brews just a tap away!',
      // githubRepoLink: 'https://github.com/radyhaggag/tiktok_downloader',
      // previewLink: 'https://youtu.be/mWeA625pcrI',
    ),
    Project(
      name: 'Flappy Bird',
      image:
          '$_basePath/flappy.png',
      description: 'Dive into endless fun with our classic, addictive Flappy Bird game. Simple to play, hard to put down!',
      // githubRepoLink:
      //     'https://github.com/radyhaggag/bookly_app_with_mvvm_and_bloc',
      // previewLink: 'https://youtu.be/3nU_dYjsPsg',
    ),
    Project(
      name: 'Minimal Login Page',
      image:
          '$_basePath/auth.png',
      description:
          'A streamlined and secure login experience using Firebase. Simple, fast, and efficient.',
      // githubRepoLink:
      //     'https://github.com/radyhaggag/image_processing_program_with_python_flet',
      // previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    Project(
      name: 'Minimal ToDo App',
      image:
          '$_basePath/todo.png',
      description:
          'Stay organized effortlessly with our Minimal ToDo App. Simplify your tasks and stay productive with ease.',
      // googlePlay:
      //     'https://play.google.com/store/apps/details?id=com.SJY.salataljanaza',
      // previewLink: 'https://youtu.be/wK9Y9BhP190',
    ),
    Project(
      name: 'Minimal Smart Home App UI',
      image:
          '$_basePath/ui.png',
      description:
          'Effortlessly navigate and manage your smart home devices with a minimalist and user-friendly app interface designed for seamless control and convenience.',
     // previewLink: 'https://youtu.be/gkeRSAfCZaI',
    ),
    Project(
      name: 'Second Brain Figme design',
      image:
          '$_basePath/figmadesign.png',
      description:
          'Simplify productivity with our sleek Figma-designed Second Brain app. Enjoy intuitive UI/UX for enhanced creativity and organization.',
      // previewLink: 'https://youtu.be/g92W-SmfkKc',
      // googlePlay:
      //     'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    ),
     Project(
      name: 'Bounce Figme design',
      image:
          '$_basePath/figmadesignbounce.png',
      description:
          'Even the smallest bounces deserve the best. Dive into our meticulously crafted Figma design for the Bounce Game, where simplicity meets perfection. Experience smooth UI/UX that ensures every bounce is a delight.',
      // previewLink: 'https://youtu.be/g92W-SmfkKc',
      // googlePlay:
      //     'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    ),
  ];
}
