-- PlotWise starter schema for PostgreSQL + PostGIS
-- Enable PostGIS in your database first, then run this script.
CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS public.plots (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    plot_id TEXT UNIQUE NOT NULL,
    plot_name TEXT NOT NULL,
    land_use TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'Draft'
        CHECK (status IN ('Draft', 'Verified', 'Needs review')),
    geom geometry(Polygon, 4326) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT plots_geom_valid CHECK (ST_IsValid(geom))
);

CREATE INDEX IF NOT EXISTS plots_geom_gix
    ON public.plots USING GIST (geom);

-- Example checks after importing polygons:
SELECT plot_id, plot_name, land_use, status, ST_IsValid(geom) AS geometry_valid
FROM public.plots ORDER BY plot_id;

SELECT COUNT(*) AS total_plots FROM public.plots;

-- Approximate area in square metres for this sample region.
-- EPSG:32643 is a UTM projected CRS example; choose an appropriate projected CRS
-- for the actual location before using area figures for real land records.
SELECT plot_id, ROUND(ST_Area(ST_Transform(geom, 32643))::numeric, 2) AS area_sq_m
FROM public.plots ORDER BY plot_id;

-- Example: query plots intersecting a supplied point (coordinates are illustrative).
-- SELECT plot_id FROM public.plots
-- WHERE ST_Covers(geom, ST_SetSRID(ST_Point(76.0005, 11.7005), 4326));
