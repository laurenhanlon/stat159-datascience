all: report.pdf eda-output.txt regression.RData

Advertising.csv: 
	cd ./data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

eda-output.txt: eda-script.R Advertising.csv

regression.RData: regression-script.R Advertising.csv

report.pdf: report.Rmd regression.RData scatterplot-tv-sales.png

clean:
	rm -f report.pdf eda-output.txt regression.RData