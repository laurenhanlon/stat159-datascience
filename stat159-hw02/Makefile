.PHONY: all clean data

all: report.pdf eda-output.txt regression.RData

report.pdf: ./report/report.Rmd ./data/regression.RData ./images/*.png
	cd ./report; Rscript -e "rmarkdown::render('report.Rmd')"

regression.RData: ./code/regression-script.R ./data/Advertising.csv
	cd ./code; Rscript regression-script.R

eda-output.txt: ./code/eda-script.R ./data/Advertising.csv
	cd ./code; Rscript eda-script.R

Advertising.csv: 
	cd ./data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	rm -f report.pdf eda-output.txt regression.RData