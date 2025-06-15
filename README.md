<h1 align="center">GEOMISIS</h1>
<p align="center">
  Навигация по кампусу НИТУ МИСИС<br/>
  <i>Mobile Campus Navigation App</i>
</p>

![GitHub repo size](https://img.shields.io/github/repo-size/ИМЯ_ОРГ/geomisis-app?style=flat-square)
![GitHub license](https://img.shields.io/github/license/ИМЯ_ОРГ/geomisis-app?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/ИМЯ_ОРГ/geomisis-app?style=flat-square)

---

## О проекте
**GEOMISIS** — мобильное приложение, которое помогает студентам, преподавателям и гостям быстро находить нужные аудитории, столовые и зоны отдыха на территории кампуса НИТУ МИСИС.  

> MVP ⬇️  
> • Kартографическая основа кампуса  
> • Интеллектуальный поиск (аудитория, корпус, точка интереса)  
> • Построение оптимального маршрута с учётом этажей  
> • Интеграция с расписанием и push-напоминаниями

## ЦА
| Группа | Проблема | Как решаем |
| ------ | -------- | ---------- |
| Первокурсники | Сложно ориентироваться в корпусах | Пошаговые маршруты + привязка к расписанию |
| Преподаватели | Перемещения между корпусами | Оптимальный маршрут + время в пути |
| Абитуриенты/родители | Найти аудиторию на Дне открытых дверей | QR-код на стенде → маршрут |
| Гости мероприятий | Навигация внутри кампуса | Каталог POI с фильтрами |

## Архитектура (план)
```mermaid
graph LR
  subgraph Mobile App
    UI --> Logic
    Logic --> API
  end
  subgraph Backend
    API --> Auth
    API --> MapsDB[(PostGIS)]
    API --> Schedule[(Schedule Service)]
  end
  MapsDB --> {OpenStreetMap data}
```

### Быстрый старт

```bash
# Запуск backend
docker-compose up --build

# Запуск Flutter (требуется установленный Flutter SDK)
cd frontend
flutter run
```

API будет доступно по адресу `http://localhost:8000/api/v1`.
