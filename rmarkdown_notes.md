#Rmarkdown Notes
library(knitr)
##1.set global options
### (1)Set default to not echo code
	```{r setoptions, echo=FALSE}
	opts_chunk$set(echo=FALSE, results='hide')
	```
###(2) Save cache
	```{r setoptions, include=FALSE}
	knitr::opts_chunk$set(cache=TRUE)
	```
	
###(3)figure
	```{r setoptions}
	opts_chunk$set(fig.heigth:numeric, fig.width: numeric)
	```


##2.R chunk
	```{r code_name}
	Rcode
	```
##3. report without code
	```{r chunk_name, echo=FALSE}
	Rcode
	```

##4. report without output
	```{r chunk_name, results='hide'}
	Rcode
	```

##5.	Make Tables
	```{r showtable, results='asis'}
	library(xtable)
	xt=xtable(summary(fit))
	print(xt, type='html')
	```
	
##6. Graphics
	```{r scatterplot, fig.height=4}
	par(mar=c(5,4,1,1), las=1)
	plot(x, y, main='my scatterplot')
	```

##7. Inline text computations
	```{r name, echo=FALSE}
	time=format(Sys.time(), '%a %b %d %X %Y')
	rand=rnorm(1)
	```
	
	The current time is `r time`, my favorite random number is `r rand`.
	

