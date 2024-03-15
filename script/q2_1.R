cows = c(48, 52, 59, 71, 64, 50, 35, 49)
bp = barplot(height=cows,
        names.arg=c('1 to 2', '2 to 3', '3 to 4', '4 to 5', '5 to 6', '6 to 7', '7 to 8', '8 to 1'),
        xlab='moon phase',
        ylab='number of deliveries',
        )
text(x=bp, y=cows, labels=cows, pos=3, xpd=NA)