
all: plots

plots: sp_500_returns.png sp_500_yearly_close.png

sp_500_yearend.csv: download.R
	Rscript download.R

sp_500_returns.csv: sp_500_yearend.csv calc_returns.R
	Rscript calc_returns.R

%.png: plot-%.R sp_500_returns.csv
	Rscript $<
