xlimval<-20
scalingfactor<-0.5
read.table(file="getcomp.output",header=TRUE,fill=TRUE,sep=" ",as.is=TRUE)->M
jpeg("pvk_plot.jpeg", width = 4, height = 4, units = 'in', res = 500)
species<-"species" ##change here
plot(M$K_value1[M$Foreground==species],-log(M$P_value[M$Foreground==species]),col=ifelse(M$Tree_topology[M$Foreground==species]==1,"red",ifelse(M$Tree_topology[M$Foreground==species]==2,"blue",ifelse(M$Tree_topology[M$Foreground==species]==3,"green",ifelse(M$Tree_topology[M$Foreground==species]==4,"brown",ifelse(M$Tree_topology[M$Foreground==species]==5,"darkmagenta","black"))))),pch=ifelse(M$P_value[M$Foreground==species]<0.05,15,1),xlab="K value",ylab="-log(p-value)",main=species,xlim=c(0,xlimval),ylim=c(0,7),cex.lab=1.5, cex.axis=1.5,cex=(M$Background_count*scalingfactor)/5)
abline(v=1,col="blue")
dev.off()
