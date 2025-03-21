CREATE TABLE cities (
  name                    VARCHAR   PRIMARY KEY,
  country_code            VARCHAR,
  city_proper_pop         REAL,
  metroarea_pop           REAL,
  urbanarea_pop           REAL
);

CREATE TABLE countries (
  code                  VARCHAR     PRIMARY KEY,
  name                  VARCHAR,
  continent             VARCHAR,
  region                VARCHAR,
  surface_area          REAL,
  indep_year            INTEGER,
  local_name            VARCHAR,
  gov_form              VARCHAR,
  capital               VARCHAR,
  cap_long              REAL,
  cap_lat               REAL
);

CREATE TABLE languages (
  lang_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  name                  VARCHAR,
  percent               REAL,
  official              BOOLEAN
);

CREATE TABLE economies (
  econ_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  year                  INTEGER,
  income_group          VARCHAR,
  gdp_percapita         REAL,
  gross_savings         REAL,
  inflation_rate        REAL,
  total_investment      REAL,
  unemployment_rate     REAL,
  exports               REAL,
  imports               REAL
);

CREATE TABLE currencies (
  curr_id               INTEGER     PRIMARY KEY,
  code                  VARCHAR,
  basic_unit            VARCHAR,
  curr_code             VARCHAR,
  frac_unit             VARCHAR,
  frac_perbasic         REAL
);

CREATE TABLE populations (
  pop_id                INTEGER     PRIMARY KEY,
  country_code          VARCHAR,
  year                  INTEGER,
  fertility_rate        REAL,
  life_expectancy       REAL,
  size                  REAL
);

CREATE TABLE economies2015 (
  code                  VARCHAR     PRIMARY KEY,
  year                  INTEGER,
  income_group          VARCHAR,
  gross_savings         REAL
);

CREATE TABLE economies2019 (
  code                  VARCHAR     PRIMARY KEY,
  year                  INTEGER,
  income_group          VARCHAR,
  gross_savings         REAL
);


-- CREATE TABLE countries_plus (
--   name                  VARCHAR,
--   continent             VARCHAR,
--   code                  VARCHAR     PRIMARY KEY,
--   surface_area          REAL,
--   geosize_group         VARCHAR
-- );

CREATE TABLE eu_countries (
  code                  VARCHAR     PRIMARY KEY,
  name                  VARCHAR
);

-- Copy over data from CSVs
COPY cities FROM 'cities.csv' DELIMITER ',' CSV HEADER;
COPY economies FROM 'economies.csv' DELIMITER ',' CSV HEADER;
COPY currencies FROM 'currencies.csv' DELIMITER ',' CSV HEADER;
COPY countries FROM 'countries.csv' DELIMITER ',' CSV HEADER;
COPY languages FROM 'languages.csv' DELIMITER ',' CSV HEADER;
COPY populations FROM 'populations.csv' DELIMITER ',' CSV HEADER;
COPY eu_countries FROM 'eu_countries.csv' DELIMITER ',' CSV HEADER;
COPY economies2015 FROM 'economies2015.csv' DELIMITER ',' CSV HEADER;
COPY economies2019 FROM 'economies2019.csv' DELIMITER ',' CSV HEADER;
