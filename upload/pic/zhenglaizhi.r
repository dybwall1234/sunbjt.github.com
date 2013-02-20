x <- c(320, 300, 350, 300 )
z <- c(260, 280, 390, 380)
plot(x, ylim = c(200, 450), type = 'n', axes = FALSE, xlab = '', ylab = '')
lines(spline(x, n = 1000), col = 'red', lwd = 2)
lines(spline(z, n = 1000), col = 'blue', lwd = 2)
axis(1,at = 1:4, labels = paste('第',1:4,'季度',sep = ''))
axis(2, las = 1)
box()
for(i in 1:4) arrows(i , x[i], i, z[i], length = 0.15, angle = 20, lwd = 2.5, col = 'brown')
for(i in 1:4) text(i, (x[i] + z[i])/2, (z - x)[i], col = gray(0.7))
legend('topleft', c("实际", "目标"), col = c('blue','red'), lty = 1, lwd = 2)
