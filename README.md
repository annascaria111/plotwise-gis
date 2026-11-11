# PlotWise — Smart Land Plot Explorer 🗺️

An interactive GIS-based land plot exploration system built to visualize, manage, and analyze land parcel information using web mapping technologies.

## 📌 Project Overview

PlotWise is a web-based GIS application that allows users to explore land plots through an interactive map. Users can view plot boundaries, search and filter plots, inspect land information, calculate approximate plot areas, and explore nearby plots.

The project integrates MapLibre GL JS with Supabase and PostgreSQL/PostGIS.

## ✨ Features

- Interactive GIS map with plot boundary visualization
- Plot directory with search functionality
- Filter plots by land use
- Select and highlight individual plots
- View plot information and ownership attributes
- Approximate area calculation in square meters and acres
- Nearby plot discovery with distance information
- Supabase database integration
- GeoJSON-based spatial data handling

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| HTML | Application structure |
| CSS | User interface design |
| JavaScript | Application logic |
| MapLibre GL JS | Interactive map visualization |
| GeoJSON | Spatial data format |
| Supabase | Backend services and database API |
| PostgreSQL | Relational database |
| PostGIS | Spatial data support |

## 🗂️ Project Structure

```text
plotwise-gis/
│
├── data/
│   └── plots.geojson
│
├── sql/
│   └── schema.sql
│
├── index.html
├── README.md
└── .gitignore
```

## 🗺️ GIS Functionalities

- Displays polygon-based land parcels.
- Uses GeoJSON FeatureCollections for spatial features.
- Supports plot selection and map navigation.
- Calculates approximate polygon area.
- Retrieves nearby plot information through Supabase database functions.

## 🗄️ Database Integration

PlotWise uses Supabase with PostgreSQL/PostGIS.

Database functionality includes:
- Land plot attributes
- Spatial geometry storage
- `get_plots_geojson()` function
- `get_nearby_plots(text)` function
- Plot information retrieval through database views

## 🚀 Getting Started

1. Clone the repository:

```bash
git clone https://github.com/annascaria111/plotwise-gis.git
```

2. Open the project folder in VS Code.

3. Configure your Supabase project URL and publishable API key in the application configuration.

4. Ensure the required database tables, functions, views, and permissions are configured.

5. Run `index.html` using VS Code Live Server.

## 📊 Sample Dataset

The current demonstration includes four sample land plots:

- PW-001
- PW-002
- PW-003
- PW-004

**Note:** The current plot boundaries and property information are illustrative sample data, not verified cadastral or legal survey records.

## 🔮 Future Enhancements

- User authentication and role-based access
- Advanced spatial analysis
- Plot boundary editing
- Improved reporting and analytics
- Integration with verified land survey datasets

## 👩‍💻 Developer

**Anna Scaria**

B.Tech Computer Science and Design Engineering Graduate (2026)

GitHub: https://github.com/annascaria111

LinkedIn: https://www.linkedin.com/in/anna-scaria-204a8a374/

---

*PlotWise — Explore Land. Understand Space. Make Better Decisions.*