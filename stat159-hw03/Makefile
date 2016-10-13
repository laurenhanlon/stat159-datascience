.PHONY: data tests eda regression report clean all

all: session_info eda regression report 

report: ./report/report.Rmd ./data/regression.RData ./data/correlation-matrix.RData ./images/*.png
	cd ./report; Rscript -e "rmarkdown::render('report.Rmd')"

tests: ./code/functions/regression-functions.R ./code/tests/test-regression.R
	cd ./code/tests; Rscript test-regression.R 

regression: ./code/scripts/regression-script.R ./data/Advertising.csv

eda: ./code/scripts/eda-script.R ./data/Advertising.csv
	cd ./code/scripts; Rscript eda-script.R

data:
	cd ./data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

session_info: ./code/scripts/session-info-script.R
	cd ./code/scripts; Rscript session-info-script.R

clean:
	rm -f report.pdf eda-output.txt regression.RData