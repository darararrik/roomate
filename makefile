# Пути
PUB_BIN := $(HOME)/.pub-cache/bin

default: help

## Установка зависимостей
get:
	fvm flutter pub get

## Очистка проекта
clean:
	fvm flutter clean
	fvm flutter pub get

## Сборка apk
apk:
	fvm flutter build apk --release

## Spider (генерация констант)
spider:
	fvm spider build

## Сортировка импортов
imports:
	fvm dart run import_sorter:main

## Генерация локализации
locale:
	fvm flutter gen-l10n

## Генерация кода build_runner
runner:
	fvm dart run build_runner build --delete-conflicting-outputs

## Запуск форматирования кода
format:
	fvm dart format .

## Запуск анализа
analyze:
	fvm flutter analyze

## Обновление Pods
pods:
	cd ios && pod install --repo-update
## Помощь
help:
	@echo "Доступные команды:"
	@echo "  make get            - flutter pub get"
	@echo "  make clean          - flutter clean + pub get"
	@echo "  make apk            - собрать apk"
	@echo "  make spider         - spider build (генерация констант)"
	@echo "  make imports   	 - сортировка импортов"
	@echo "  make locale         - генерация локализации"
	@echo "  make runner  		 - build_runner build --delete-conflicting-outputs"
	@echo "  make fix-path       - добавить pub-cache/bin в PATH"
	@echo "  make format         - dart format ."
	@echo "  make analyze        - flutter analyze"
