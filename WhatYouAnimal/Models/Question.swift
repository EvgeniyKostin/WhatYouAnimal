//
//  Question.swift
//  WhatYouAnimal
//
//  Created by Evgeniy Kostin on 07.04.2021.
//

struct Question {
    let title: String //будет принимать сам вопрос
    let type: ResponseType //будет определять категорию для ответов
    let answers: [Answer] //массив ответов
    
    //будет вызывать этот метод не создавая экземпляр модели. Логика должна быть инкапсулирована в модели
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .owl),
                    Answer(title: "Банан", type: .monkey),
                    Answer(title: "Капуста", type: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", type: .dog),
                    Answer(title: "Работать", type: .owl),
                    Answer(title: "Обнимать", type: .monkey),
                    Answer(title: "Есть", type: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(title: "Обожаю", type: .dog),
                    Answer(title: "Ненавижу", type: .owl),
                    Answer(title: "Не замечаю", type: .monkey),
                    Answer(title: "Нервничаю", type: .turtle)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String //будет принимать сам ответ
    let type: AnimalType //будет соотносить сам ответ с типом животного
}

enum ResponseType {
    case single //одиночные ответы
    case multiple //множественные ответы
    case ranged //ответы из диапазона
}

enum AnimalType: Character {
    case dog = "🐕"
    case owl = "🦉"
    case monkey = "🐒"
    case turtle = "🐢"
    
    //вызываем вычисляемое свойство для описания каждого кейса с животным
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые Вам нравятся и всегда готовы помочь."
        case .owl:
            return "Вы себе на уме. Любите работать по ночам. Вы цените тишину и покой."
        case .monkey:
            return "Вам нравятся приключения. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
