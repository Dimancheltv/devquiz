import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question ({
    @required this.title,
    @required this.answers
  });
}

class QuestionData {
  final _data = [
    Question(
      title: 'Сколько систем контроля версий существует?',
      answers: [
        {'answer' : 'Только Git',},
        {'answer' : 'Git и SVN',},
        {'answer' : 'Git и CVS',},
        {'answer' : 'Много', 'isCorrect': 1},
      ]
    ),
    Question(
        title: 'Что такое GitHub?',
        answers: [
          {'answer' : 'Программа для работы с Git',},
          {'answer' : 'Драйвер для Git',},
          {'answer' : 'Веб-сервис для хостинга IT-проектов и их совместной разработки, основанный на Git', 'isCorrect': 1},
          {'answer' : 'UI для работы с локальной версией Git',},
        ]
    ),
    Question(
        title: 'Что делает команда git add?',
        answers: [
          {'answer' : 'Создает файл с указанным именем и сразу добавляет его в Git',},
          {'answer' : 'Добавляет локальный файл в удаленный репозиторий так, чтобы другие участники проекта могли его видеть',},
          {'answer' : 'Это алиас/синоним команды git commit', },
          {'answer' : 'Начинает отслеживать указанный файл или файлы', 'isCorrect': 1},
        ]
    ),
    Question(
        title: 'Чем отличается master и origin master?',
        answers: [
          {'answer' : 'Это просто два разных названия одной ветки',},
          {'answer' : 'master принадлежит локальному репозиторию, а origin master - удаленному', 'isCorrect': 1},
          {'answer' : 'Это две разные ветки локального репозитория', },
          {'answer' : 'Ветки origin master не существует',},
        ]
    ),
  ];

  List<Question> get questions => [..._data];

}