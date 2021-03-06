setwd("~/Documents/Wicked_Problems")

x <- 1:1000
y <- 1:1000

east <- sample(x, size = 50, replace = TRUE)
north <- sample(y, size = 50, replace = TRUE)

symbols(east, north, squares = rep(30,50), inches = FALSE)

symbols(sample(x, 40, replace = TRUE), 
        sample(y, 40, replace = TRUE), 
        circles = rep(15,40), 
        inches = FALSE,
        fg = "green",
        add = TRUE)

symbols(sample(x, 12, replace = TRUE), 
        sample(y, 12, replace = TRUE), 
        circles = rep(30,12), 
        inches = FALSE,
        fg = "green4",
        bg = "beige",
        add = TRUE)

dwellings <- cbind.data.frame(id = 1:50, east, north)

locs <- sample(1:50, 7, replace = FALSE)

# lines(x = dwellings[locs, 2],
#       y = dwellings[locs, 3],
#       lty = 2,
#       lwd = .75,
#       col = "blue")

text(x = dwellings[locs, ]$east, 
     y = dwellings[locs, ]$north + 50,
     labels = dwellings[locs, ]$id)

xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3],
        shape = -1,
        lty = 2)

title(main="A Salesman's path between Homes")
