library("ape")
jpeg("tree.jpeg", width = 12, height = 6, units = 'in', res = 500) ##change here
par(mfrow=c(1,2))
tree.owls <- read.tree("tree.txt") #tree file
plot(tree.owls,edge.color="red",edge.width=5,label.offset=0.5,main="Topology 1",cex=1)
dev.off()
