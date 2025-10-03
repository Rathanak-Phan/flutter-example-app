import 'quiz_model.dart';

class QuizController {
  // Sample quiz data
  List<Quiz> getQuizzes() {
    return [
      Quiz(title: 'Math Quiz', description: 'Test your math skills', totalQuestions: 10),
      Quiz(title: 'Science Quiz', description: 'Explore science', totalQuestions: 8),
      Quiz(title: 'History Quiz', description: 'Learn history facts', totalQuestions: 12),
      Quiz(title: 'Geography Quiz', description: 'Explore the world', totalQuestions: 7),
      Quiz(title: 'Coding Quiz', description: 'Test coding knowledge', totalQuestions: 15),
    ];
  }
}
