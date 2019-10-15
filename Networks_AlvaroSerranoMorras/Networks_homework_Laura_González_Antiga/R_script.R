library(igraph)
ER1 <- read.graph("ER_1b.net", format= "pajek")

## Representation
plot(ER1)
is.connected(ER1)

##Size distribution
y <- as.data.frame(table(clusters(ER1)$csize))

library(ggplot2)
My_Theme = theme(
  axis.text = element_text(size = 14),
  axis.title = element_text(size = 18, face = "bold"),
  plot.title = element_text(size= 20, face ="bold", colour = "cornflowerblue" ))


ggplot(y, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Size distribution") + xlab("Number of nodes per components") + ylab("Frequency") + My_Theme

## Distance distribution
s <- distance_table(ER1)$res
a <- data.frame("x" = c(1:45), "y" = s)

ggplot(a, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Distance distribution") + xlab("Path distance") + ylab("Frequency") + My_Theme

average.path.length(ER1)

## Degree distribution
ab <- degree.distribution(ER1)
b <- data.frame ("x" = c(1:8), "y" = a)
ggplot(b, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Degree distribution") + xlab("Index") + ylab("Value") + My_Theme

## Betweenness distribution
norm <- as.data.frame(table(betweenness(ER1, normalized = TRUE )))
norm$Var1=as.numeric(levels(norm$Var1))[norm$Var1]

ggplot(norm, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Betweenness distribution") + xlab("Normalized Betweenness") + ylab("Frequency") + scale_x_continuous(limits= c(0,1), breaks = c(0,1)) + My_Theme





ER2 <- read.graph("ER_2b.net", format= "pajek")

## Representation
plot(ER2)
is.connected(ER2)

##Size distribution
y2 <- as.data.frame(table(clusters(ER2)$csize))

ggplot(y2, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Size distribution") + xlab("Number of nodes per components") + ylab("Frequency") + My_Theme

## Distance distribution
s2 <- distance_table(ER2)$res
a2 <- data.frame("x" = c(1:4), "y" = s2)

ggplot(a2, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Distance distribution") + xlab("Path distance") + ylab("Frequency") + My_Theme

average.path.length(ER2)

## Degree distribution
a2b <- degree.distribution(ER2)
b2 <- data.frame ("x" = c(1:51), "y" = a2b)
ggplot(b2, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Degree distribution") + xlab("Index") + ylab("Value") + My_Theme

## Betweenness distribution
norm2 <- as.data.frame(table(betweenness(ER2, normalized = TRUE )))
norm2$Var1=as.numeric(levels(norm2$Var1))[norm2$Var1]

ggplot(norm2, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Betweenness distribution") + xlab("Normalized Betweenness") + ylab("Frequency") + scale_x_continuous(limits= c(0,1), breaks = c(0,1)) + My_Theme




BA1 <- read.graph("BA_1b.net", format= "pajek")

## Representation
plot(BA1)
edges(BA1)
is.connected(BA1)

##Size distribution
y3 <- as.data.frame(table(clusters(BA1)$csize))

ggplot(y3, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Size distribution") + xlab("Number of nodes per components") + ylab("Frequency") + My_Theme

## Distance distribution
s3 <- distance_table(BA1)$res
a3 <- data.frame("x" = c(1:18), "y" = s3)

ggplot(a3, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Distance distribution") + xlab("Path distance") + ylab("Frequency") + My_Theme

average.path.length(BA1)

## Degree distribution
a3b <- degree.distribution(BA1)
b3 <- data.frame ("x" = c(1:49), "y" = a3b)
ggplot(b3, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Degree distribution") + xlab("Index") + ylab("Value") + My_Theme

## Betweenness distribution
norm3 <- as.data.frame(table(betweenness(BA1, normalized = TRUE )))
norm3$Var1=as.numeric(levels(norm3$Var1))[norm3$Var1]

ggplot(norm3, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Betweenness distribution") + xlab("Normalized Betweenness") + ylab("Frequency") + scale_x_continuous(limits= c(0,1), breaks = c(0,1)) + My_Theme




BA2 <- read.graph("BA_2b.net", format= "pajek")

## Representation
plot(BA2)
edges(BA2)
is.connected(BA2)

##Size distribution
y4 <- as.data.frame(table(clusters(BA2)$csize))

ggplot(y4, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Size distribution") + xlab("Number of nodes per components") + ylab("Frequency") + My_Theme

## Distance distribution
s4 <- distance_table(BA2)$res
a4 <- data.frame("x" = c(1:7), "y" = s4)

ggplot(a4, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Distance distribution") + xlab("Path distance") + ylab("Frequency") + My_Theme

average.path.length(BA2)

## Degree distribution
a4b <- degree.distribution(BA2)
b4 <- data.frame ("x" = c(1:94), "y" = a4b)
ggplot(b4, aes(x, y)) + geom_point(color="cornflowerblue") + ggtitle("Degree distribution") + xlab("Index") + ylab("Value") + My_Theme

## Betweenness distribution
norm4 <- as.data.frame(table(betweenness(BA2, normalized = TRUE )))
norm4$Var1=as.numeric(levels(norm4$Var1))[norm4$Var1]

ggplot(norm4, aes(Var1, Freq)) + geom_point(color="cornflowerblue") + ggtitle("Betweenness distribution") + xlab("Normalized Betweenness") + ylab("Frequency") + scale_x_continuous(limits= c(0,1), breaks = c(0,1)) + scale_y_continuous(limits= c(0,5), breaks = c(0,1, 5)) + My_Theme
