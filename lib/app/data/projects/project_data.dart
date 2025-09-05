import 'package:raspucat/utils/constants/exports.dart';

class EData {
  EData._();

  static final List<ProjectModel> projects = [
    ProjectModel(
      title: 'Dashing Beard Co',
      description:
          'Frontend development for a product-based business with custom animations.',
      technologies: ['HTML', 'SCSS', 'JavaScript'],
      githubUrl: 'https://github.com/yourusername/raspucat',
      liveUrl: 'https://dashingbeardco.com',
      imagePath: 'assets/images/projects/dashing_beard_co.gif',
    ),
    ProjectModel(
      title: 'Red Dot Entertainment',
      description:
          'A full-stack booking application with user authentication, payment processing, and real-time booking management.',
      technologies: ['Flutter', 'GetX', 'Firebase', 'Stripe'],
      githubUrl: 'https://github.com/yourusername/ecommerce',
      liveUrl: 'https://reddotentertainment.com',
      imagePath: 'assets/images/projects/red_dot_entertainment.png',
    ),
    // ProjectModel(
    //   title: 'Task Management Tool',
    //   description:
    //       'A collaborative task management application with real-time updates, team collaboration features, and project tracking.',
    //   technologies: ['Flutter', 'Firebase', 'Provider', 'WebRTC'],
    //   githubUrl: 'https://github.com/yourusername/taskmanager',
    //   liveUrl: null,
    //   imagePath: '',
    // ),
    // ProjectModel(
    //   title: 'Weather Dashboard',
    //   description:
    //       'A beautiful weather dashboard with location-based forecasts, interactive maps, and detailed weather analytics.',
    //   technologies: ['Flutter', 'OpenWeather API', 'Charts', 'Geolocation'],
    //   githubUrl: 'https://github.com/yourusername/weather',
    //   liveUrl: 'https://weather-dashboard.com',
    //   imagePath: '',
    // ),
  ];
}
