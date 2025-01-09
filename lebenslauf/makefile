# Makefile for deploying the Lebenslauf project to GitHub Pages.

BASE_HREF = '/Flutter-Lebenslauf/'
GITHUB_REPO = https://github.com/Zumselito/Flutter-Lebenslauf.git
BUILD_VERSION = $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')
FONT_RED := $(shell tput setaf 1)
FONT_GREEN := $(shell tput setaf 2)
FONT_YELLOW := $(shell tput setaf 3)
FONT_BLUE := $(shell tput setaf 4)
FONT_PURPLE := $(shell tput setaf 5)
FONT_CYAN := $(shell tput setaf 6)
FONT_GRAY := $(shell tput setaf 7)
FONT_BLACK := $(shell tput setaf 8)
FONT_BOLD := $(shell tput bold)
FONT_RESET := $(shell tput sgr0)

deploy-web:
	@echo "$(FONT_BLUE)Clean existing build...$(FONT_RESET)"
	flutter clean

	@echo "$(FONT_BLUE)Getting dependencies...$(FONT_RESET)"
	flutter pub get

	@echo "$(FONT_BLUE)Building project for web...$(FONT_RESET)"
	flutter build web --base-href=$(BASE_HREF) --release

	@echo "$(FONT_BLUE)Deploying to git repository...$(FONT_RESET)"
	cd build/web && \
	git init --initial-branch=main && \
	git add . && \
	git commit -m "Deploy $(BUILD_VERSION)" && \
	git remote add origin $(GITHUB_REPO) && \
	git push -uf origin main

	cd ../..
	@echo "$(FONT_GREEN)Finished deploying project to git repository!$(FONT_RESET)"

	@echo "$(FONT_BLUE)Clean existing build again...$(FONT_RESET)"
	flutter clean

	@echo "$(FONT_BLUE)Getting dependencies again...$(FONT_RESET)"
	flutter pub get

.PHONY: deploy-web

# Write "make deploy-web" in the terminal to deploy the project to GitHub.
