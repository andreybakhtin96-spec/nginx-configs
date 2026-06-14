# Проект NGINX для производственной практики

**Авторы:** Андрей Бахтин, Андрей Еремеев

## Описание проекта

Настройка веб-сервера NGINX с проксированием, балансировкой нагрузки, обработкой изображений и мониторингом CPU.

## Реализованные функции

| URL | Описание |
|-----|----------|
| `/` | Главная страница с навигацией |
| `/secondpage` | Вторая страница (обрабатывается тем же NGINX) |
| `/music` | Скачивание MP3 файла |
| `/redblue` | Балансировка с чередованием синей/красной страницы |
| `/cpu` | Загрузка CPU в реальном времени |
| `/info.php` | PHP-информация (прокси на Apache) |
| `/secondserver` | Прокси на внешний сервер (httpbin.org) |
| `/image1/test.jpg` | JPG изображение, перевёрнутое на 180° |
| `/image2/test.png` | PNG изображение (без изменений) |

## Установка и запуск

```bash
# Клонирование репозитория
git clone https://github.com/ВАШ_ЛОГИН/nginx-configs.git
cd nginx-configs

# Копирование конфигов
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo cp sites-available/mysite /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/

# Проверка и перезапуск
sudo nginx -t && sudo systemctl reload nginx


Технологии

    NGINX 1.28.3

    Apache 2.4 (для PHP)

    Docker / Docker Compose

    Ubuntu 24.04


Структура репозитория
nginx-configs/
├── README.md
├── nginx.conf
├── sites-available/
│   └── mysite
├── Dockerfile
├── docker-compose.yml
└── scripts/
    └── log-processor.sh


