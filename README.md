# PlotWise — GIS Plot Explorer

An interview-ready starter project demonstrating polygon-based plot mapping, GeoJSON, interactive web mapping, and a PostgreSQL/PostGIS data model.

## Features
- Interactive map powered by MapLibre GL JS
- Synthetic GeoJSON plot polygons
- Click a polygon or directory item to inspect plot attributes
- Search plots by ID/name and filter by land use
- Plot count and verification status summary
- PostGIS schema with geometry validation and a GiST spatial index

## Demo data warning
The included plot boundaries and attributes are synthetic teaching data. They are not surveyed parcels, legal boundaries, or official cadastral records. Replace them with appropriately licensed and verified data before any real-world use.

## Run locally
Because the app fetches a local GeoJSON file, serve the folder over HTTP instead of opening `index.html` directly.

### Simple Python server
If Python is installed:
```bash
python3 -m http.server 8000
```
Run that command from this project folder, then open http://localhost:8000.

## Publish on GitHub Pages
1. Create a public GitHub repository named `plotwise-gis`.
2. Upload `index.html`, `data/plots.geojson`, `sql/schema.sql`, and this README while preserving the folder structure.
3. Open repository **Settings → Pages**.
4. Choose **Deploy from a branch**, select `main` and `/ (root)`, then save.
5. Wait for the Pages deployment to finish and open the published URL shown in Settings → Pages.

GitHub Pages hosts the static front end. This demo loads GeoJSON from the repository; it does not connect directly to PostgreSQL.

## PostgreSQL + PostGIS
1. Create a PostgreSQL database.
2. Enable PostGIS on that database.
3. Run `sql/schema.sql`.
4. Import `data/plots.geojson` into `public.plots` using QGIS or an appropriate GeoJSON import workflow, mapping `plot_id`, `plot_name`, `land_use`, `status`, and geometry.
5. Run the example validity and area queries in `sql/schema.sql`.

## Architecture
- Front end: HTML, CSS, JavaScript, MapLibre GL JS
- Data exchange: GeoJSON
- Spatial database: PostgreSQL + PostGIS
- Planned production extension: a backend API that reads PostGIS and serves validated GeoJSON to the map.

## Security note
Never put a PostgreSQL password or service-role key in browser JavaScript or a public repository. A production app should use a server-side API with least-privilege database access and appropriate authentication.

## Interview talking points
- GeoJSON represents each plot as a polygon with attributes.
- MapLibre renders the polygons and supports selection interactions.
- PostGIS stores spatial geometry and supports validity checks and spatial queries.
- A GiST index improves many spatial query workloads.
- GitHub Pages deploys the static demo; a backend API is needed for a live database connection.
