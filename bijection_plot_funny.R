library(ggplot2)

xmax <- 9
x <- seq(0,xmax,1)

y <- function(x) {
  p <- x %% 2
  r <- ((-1)^(p + 1)) * x
  return((p + r) / 2)
}


par(cex=1)
plot(x, y(x),
  type = "b",
  main = sprintf('Confidence as I learn new subjects'),
  # sub = '(Actually a graph of the bijection function)',
  xlab = "Time", 
  ylab = "Confidence",
  xlim = c(-0.5, xmax+1),
  ylim = c(-5, 5),
  col="navyblue",
  axes=FALSE
)

ylabs=c("-6", "-4", "-2", "0", "2", "4", "6")
xlabs=seq(from=0, to=10, by=1)
axis(side=2, 
     at=seq(from=-6, to=6, by=2), 
     tick=TRUE,
     pos=-0.25,
     labels=ylabs,
     lwd.ticks=0.5,
     family="sans", font=1, cex.lab=1, cex.axis=0.8
)
axis(side=1, 
     at=seq(from=0, to=10, by=1), 
     tick=TRUE, 
     pos=0, 
     line=0,
     labels=xlabs, 
     lwd.ticks=0.5,
     family="sans", font=1, cex.lab=1, cex.axis=0.8
)
text(x=2, 
     y=-4.0, 
     sprintf("%s %s %s", 
             "The bijection function from natural\n",
             "numbers to integers, mapping\n",
             "2n to -n and 2n - 1 to n, for n >= 0"), 
     cex=0.8)

text(x=3.0, y=2.8, cex=0.8, sprintf("%s","Dunning-Kruger"))
text(x=6.0, y=-3.75, cex=0.8, sprintf("%s","Imposter Syndrome"))
text(x=7, y=4.6, cex=0.8, sprintf("%s","Expertise"))
text(x=9.0, y=-3.5, cex=0.8, sprintf("%s","Enlightenment"))
text(x=9.6, y=4.5, cex=0.8, sprintf("%s","Wisdom"))
