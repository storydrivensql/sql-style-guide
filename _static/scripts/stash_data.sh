

# congressmembers data
# https://github.com/unitedstates/congress-legislators
curl -o _static/data/stashed/congress_legislators.csv \
    https://theunitedstates.io/congress-legislators/legislators-current.csv


curl -Lo _static/data/stashed/white_house_salaries.csv \
    https://github.com/storydrivendatasets/white_house_salaries/raw/master/data/wrangled/white_house_salaries.csv


curl -Lo _static/data/stashed/fec_independent_expenditures_2018.csv \
    https://www.fec.gov/files/bulk-downloads/2018/independent_expenditure_2018.csv


mkdir -p _static/data/stashed/faa

curl -Lo _static/data/stashed/faa/airport_passengers_2018.xlsx \
    https://www.faa.gov/airports/planning_capacity/passenger_allcargo_stats/passenger/media/cy18-commercial-service-enplanements.xlsx


curl -Lo _static/data/stashed/faa/airport_passengers_2010.xls \
    https://www.faa.gov/airports/planning_capacity/passenger_allcargo_stats/passenger/media/cy10_primary_enplanements.xls


curl -Lo _static/data/stashed/faa/airport_passengers_2002.xls \
    https://www.faa.gov/airports/planning_capacity/passenger_allcargo_stats/passenger/media/cy02_commercial.xls



