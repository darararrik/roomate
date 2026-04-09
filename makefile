# Пути
PUB_BIN := $(HOME)/.pub-cache/bin
# Список твоих пакетов (папки в корне)
MODULES := domain data shared

default: help

## Установка зависимостей во всех модулях и корне
get:
	@echo "--- Running pub get in all modules ---"
	@for dir in $(MODULES); do \
		if [ -d "$$dir" ]; then \
			echo "In $$dir:"; \
			cd $$dir && fvm flutter pub get && cd ..; \
		fi \
	done
	fvm flutter pub get

## Полная очистка всего проекта
clean:
	@echo "--- Cleaning everything ---"
	@for dir in $(MODULES); do \
		if [ -d "$$dir" ]; then \
			echo "Cleaning $$dir:"; \
			cd $$dir && fvm flutter clean && cd ..; \
		fi \
	done
	fvm flutter clean
	$(MAKE) get

## Генерация кода (build_runner)
# Запускаем в data (для моделей) и в корне (для роутов/riverpod)
runner:
	@echo "--- Running build_runner in data layer ---"
	@if [ -d "data" ]; then \
		cd data && fvm dart run build_runner build --delete-conflicting-outputs; \
	fi
	@echo "--- Running build_runner in root project ---"
	fvm dart run build_runner build --delete-conflicting-outputs

r:
	fvm dart run build_runner build --delete-conflicting-outputs

da:
	cd data && fvm dart run build_runner build --delete-conflicting-outputs

do:
	cd domain && fvm dart run build_runner build --delete-conflicting-outputs

s:
	cd shared && fvm dart run build_runner build --delete-conflicting-outputs

## Сборка apk
apk:
	fvm flutter build apk --release

## Сортировка импортов везде
imports:
	@echo "--- Sorting imports ---"
	@for dir in $(MODULES); do \
		if [ -d "$$dir" ]; then \
			cd $$dir && fvm dart run import_sorter:main && cd ..; \
		fi \
	done
	fvm dart run import_sorter:main

## Генерация локализации
locale:
	fvm flutter gen-l10n

## Форматирование кода
format:
	@echo "--- Formatting code ---"
	fvm dart format .
	@for dir in $(MODULES); do \
		if [ -d "$$dir" ]; then \
			fvm dart format $$dir; \
		fi \
	done

## Анализ кода
analyze:
	fvm flutter analyze
# Полная очистка и переустановка подов
pods-clean:
	cd ios && rm -rf Pods Podfile.lock && pod cache clean --all && pod install --repo-update

# Обычное обновление (если изменился Podfile)
pods-install:
	cd ios && pod install --repo-update

# Обновление всех подов до последних разрешенных версий
pods-update:
	cd ios && pod update

## Помощь
help:
	@echo "Команды для проекта Roomate (Flat Structure):"
	@echo "  make get     - flutter pub get в корне и модулях (data, domain, shared)"
	@echo "  make clean   - полная очистка всего проекта"
	@echo "  make runner  - запуск генерации кода (data + root)"
	@echo "  make locale  - генерация l10n"
	@echo "  make imports - сортировка импортов везде"
	@echo "  make format  - форматирование кода"