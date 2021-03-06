######################## Scenario 1 

	rm(list=ls())
	ct_data1a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1a_pset_0_Events.out", header=TRUE, sep="")
        
	a1 <- table(ct_data1a$Day,ct_data1a$Event)/10
	ct_data1b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1b_pset_0_Events.out", header=TRUE, sep="")
	b1 <- table(ct_data1b$Day,ct_data1b$Event)/10
	ct_data1c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1c_pset_0_Events.out", header=TRUE, sep="")
	c1<- table(ct_data1c$Day,ct_data1c$Event)/10

        par(mfrow=c(2,1))
	#plot(c(as.numeric(rownames(a1))),a1[,1],xlim=c(0,100),ylim=c(0,1000),xlab="Day",ylab="Number of infection",main="Black: Vaccine Probability susceptible=1;Red: Vaccine Probability susceptible=0")
	plot(c(as.numeric(rownames(a1))),a1[,1],xlim=c(0,150),ylim=c(0,200),xlab="Day",ylab="Number of infection",main="Figure 1A: Epidemic Curves under different isolation start times",sub="1 person to be traced; 100% contacts traced in household and neighbour; contact tracing time = day 1; 0% vaccination effective")
	points(c(as.numeric(rownames(b1))), b1[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c1))), c1[,1], col="blue", pch="#")
        legend("topright", inset=.0005,  c("Day 10","Day 20","Day 30"), fill=c("black","red","blue"),bty='n', horiz=FALSE)
	
	ct_data2a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2a_pset_0_Events.out", header=TRUE, sep="")
	a2 <- table(ct_data2a$Day,ct_data2a$Event)/10
	ct_data2b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2b_pset_0_Events.out", header=TRUE, sep="")
	b2 <- table(ct_data2b$Day,ct_data2b$Event)/10
	ct_data2c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2c_pset_0_Events.out", header=TRUE, sep="")
	c2<- table(ct_data2c$Day,ct_data2c$Event)/10
	plot(c(as.numeric(rownames(a2))),a2[,1],xlim=c(0,150),ylim=c(0,200),xlab="Day",ylab="Number of infection",main="Figure 2A: Epidemic Curves under different isolation start times",sub="Unlimited people at max to be traced; 100% contacts traced in household and neighbour; contact tracing time = day 1; 0% vaccination effective")
	points(c(as.numeric(rownames(b2))), b2[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c2))), c2[,1], col="blue", pch="#")
        legend("topright", inset=.0005, c("Day 10","Day 20","Day 30"), fill=c("black","red","blue"),bty='n', horiz=FALSE)
	 
######################## Scenario 2 
	
        rm(list=ls())
	ct_data1a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1a1_pset_0_Events.out", header=TRUE, sep="")
#	a1 <- table(ct_data1a$Day,ct_data1a$Event)/50
        a1 <- table(ct_data1a$Run,ct_data1a$Event)
        100*table(a1[,1]<1500)/50
        
        rm(list=ls())
        ct_data1b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1b1_pset_0_Events.out", header=TRUE, sep="")
#	b1 <- table(ct_data1b$Day,ct_data1b$Event)/50
        b1 <- table(ct_data1b$Run,ct_data1b$Event)
        100*table(b1[,1]<1500)/50
       
        rm(list=ls())
	
	ct_data1c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1c1_pset_0_Events.out", header=TRUE, sep="")
#	c1<- table(ct_data1c$Day,ct_data1c$Event)/50
        c1 <- table(ct_data1c$Run,ct_data1c$Event)
        100*table(c1[,1]<1500)/50

	ct_data1d <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1d1_pset_0_Events.out", header=TRUE, sep="")
#	d1<- table(ct_data1d$Day,ct_data1d$Event)/10
        d1 <- table(ct_data1d$Run,ct_data1d$Event)
        100*table(c1[,1]<1500)/50

        ct_data1e <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1e1_pset_0_Events.out", header=TRUE, sep="")
#	e1<- table(ct_data1e$Day,ct_data1e$Event)/10
        e1 <- table(ct_data1e$Run,ct_data1e$Event)
        100*table(e1[,1]<1500)/50

        ct_data1f <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1f1_pset_0_Events.out", header=TRUE, sep="")
#	f1<- table(ct_data1e$Day,ct_data1e$Event)/10
        f1 <- table(ct_data1e$Run,ct_data1e$Event)
        100*table(f1[,1]<1500)/50

        par(mfrow=c(2,1))
	plot(c(as.numeric(rownames(a1))),a1[,1],xlim=c(0,150),ylim=c(0,350),xlab="Day",ylab="Number of infection",main="Figure 1B: Epidemic Curves under different isolation start times",sub="Unlimited people at max to be traced; 100% contacts traced in household and neighbour; contact tracing time = isolation time; 0% vaccination effective")
	points(c(as.numeric(rownames(b1))), b1[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c1))), c1[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d1))), d1[,1], col="orange", pch="?")

        legend("topright", inset=.0005,  c("No intervention","Day 20","Day 25","Day 30"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)
	
        rm(list=ls())
	
	ct_data2a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2a1_pset_0_Events.out", header=TRUE, sep="")
#	a2 <- table(ct_data2a$Day,ct_data2a$Event)/10
        a2 <- table(ct_data2a$Run,ct_data2a$Event)
        100*table(a2[,1]<1500)/50


        rm(list=ls())
	ct_data2b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2b1_pset_0_Events.out", header=TRUE, sep="")
#	b2 <- table(ct_data2b$Day,ct_data2b$Event)/10
        b2 <- table(ct_data2b$Run,ct_data2b$Event)
        100*table(b2[,1]<1500)/50


	ct_data2c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2c1_pset_0_Events.out", header=TRUE, sep="")
#	c2<- table(ct_data2c$Day,ct_data2c$Event)/10
        c2 <- table(ct_data2c$Run,ct_data2c$Event)
        100*table(c2[,1]<1500)/50

	ct_data2d <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2d1_pset_0_Events.out", header=TRUE, sep="")
#	d2<- table(ct_data2d$Day,ct_data2d$Event)/10
        d2 <- table(ct_data2d$Run,ct_data2d$Event)
        100*table(d2[,1]<1500)/50

	plot(c(as.numeric(rownames(a2))),a2[,1],xlim=c(0,150),ylim=c(0,350),xlab="Day",ylab="Number of infection",main="Figure 2B: Epidemic Curves under different isolation start times",sub="0.1 people at max to be traced; 100% contacts traced in household and neighbour; contact tracing time = isolation time; 0% vaccination effective")
	points(c(as.numeric(rownames(b2))), b2[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c2))), c2[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d2))), d2[,1], col="orange", pch="?")
        legend("topright", inset=.0005, c("No intervention","Day 20","Day 25","Day 30"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)

######################## Scenario 3 
	 
        rm(list=ls())
	ct_data1a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1a2_pset_0_Events.out", header=TRUE, sep="")
	a1 <- table(ct_data1a$Day,ct_data1a$Event)/10
	ct_data1b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1b2_pset_0_Events.out", header=TRUE, sep="")
	b1 <- table(ct_data1b$Day,ct_data1b$Event)/10
	ct_data1c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1c2_pset_0_Events.out", header=TRUE, sep="")
	c1<- table(ct_data1c$Day,ct_data1c$Event)/10

        par(mfrow=c(2,1))
	plot(c(as.numeric(rownames(a1))),a1[,1],xlim=c(0,150),ylim=c(0,200),xlab="Day",ylab="Number of infection",main="Figure 1C: Epidemic Curves under different isolation start times",sub="1 person to be traced; 100% contacts traced in household and neighbour; contact tracing time = isolation time; 0% vaccination effective")
	points(c(as.numeric(rownames(b1))), b1[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c1))), c1[,1], col="blue", pch="#")
        legend("topright", inset=.0005,  c("Day 20","Day 40","Day 60"), fill=c("black","red","blue"),bty='n', horiz=FALSE)
	
	ct_data2a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2a2_pset_0_Events.out", header=TRUE, sep="")
	a2 <- table(ct_data2a$Day,ct_data2a$Event)/10
	ct_data2b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2b2_pset_0_Events.out", header=TRUE, sep="")
	b2 <- table(ct_data2b$Day,ct_data2b$Event)/10
	ct_data2c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2c2_pset_0_Events.out", header=TRUE, sep="")
	c2<- table(ct_data2c$Day,ct_data2c$Event)/10
	plot(c(as.numeric(rownames(a2))),a2[,1],xlim=c(0,150),ylim=c(0,200),xlab="Day",ylab="Number of infection",main="Figure 2C: Epidemic Curves under different isolation start times",sub="Unlimited people at max to be traced; 100% contacts traced in household and neighbour; contact tracing time = isolation time; 0% vaccination effective")
	points(c(as.numeric(rownames(b2))), b2[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c2))), c2[,1], col="blue", pch="#")
        legend("topright", inset=.0005, c("Day 20","Day 40","Day 60"), fill=c("black","red","blue"),bty='n', horiz=FALSE)





















	 
	ct_data3a <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3a_pset_0_Events.out", header=TRUE, sep="")
	a3 <- table(ct_data3a$Day,ct_data3a$Event)/10
	ct_data3b <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3b_pset_0_Events.out", header=TRUE, sep="")
	b3 <- table(ct_data3b$Day,ct_data3b$Event)/10
	ct_data3c <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3c_pset_0_Events.out", header=TRUE, sep="")
	ct_data3d <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3d_pset_0_Events.out", header=TRUE, sep="")

	c3<- table(ct_data3c$Day,ct_data3c$Event)/10
	d3<- table(ct_data3d$Day,ct_data3d$Event)/10


	plot(c(as.numeric(rownames(a3))),a3[,1],xlim=c(0,100),ylim=c(0,1000),xlab="Day",ylab="Number of infection",main="Black: Vaccine Probability susceptible=1;Red: Vaccine Probability susceptible=0")
	plot(c(as.numeric(rownames(a3))),a3[,1],xlim=c(0,100),xlab="Day",ylab="Number of infection",main="Figure 3A: Epidemic Curves under different contact tracing start times",sub="50 people at max to be traced; 100% contacts traced in household and neighbour; 100% vaccination effective")

	points(c(as.numeric(rownames(b2))), b2[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c2))), c2[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d2))), d2[,1], col="orange", pch="?")
    legend("topright", inset=.005, title="Contact Tracing Start Time",
     c("No contact tracing", "Day 10","Day 15","Day 20"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)
	 
	 
	 
#traced proportion 0.1


    ct_data1a1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1a1_pset_0_Events.out", header=TRUE, sep="")
	a11 <- table(ct_data1a1$Day,ct_data1a1$Event)/10
	ct_data1b1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1b1_pset_0_Events.out", header=TRUE, sep="")
	b11 <- table(ct_data1b1$Day,ct_data1b1$Event)/10
	ct_data1c1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1c1_pset_0_Events.out", header=TRUE, sep="")
	ct_data1d1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_1d1_pset_0_Events.out", header=TRUE, sep="")

	c11<- table(ct_data1c1$Day,ct_data1c1$Event)/10
	d11<- table(ct_data1d1$Day,ct_data1d1$Event)/10


	plot(c(as.numeric(rownames(a11))),a11[,1],xlim=c(0,100),ylim=c(0,1000),xlab="Day",ylab="Number of infection",main="Black: Vaccine Probability susceptible=1;Red: Vaccine Probability susceptible=0")
	plot(c(as.numeric(rownames(a11))),a11[,1],xlim=c(0,100),xlab="Day",ylab="Number of infection",main="Figure 1B: Epidemic Curves under different contact tracing start times",sub="unlimted resources on contact tracing; 10% contacts traced in household and neighbour; 100% vaccination effective")

	points(c(as.numeric(rownames(b11))), b11[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c11))), c11[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d11))), d11[,1], col="orange", pch="?")
    legend("topright", inset=.005, title="Contact Tracing Start time",
     c("No contact tracing", "Day 10","Day 15","Day 20"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)
	
	
	ct_data2a1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2a1_pset_0_Events.out", header=TRUE, sep="")
	a21 <- table(ct_data2a1$Day,ct_data2a1$Event)/10
	ct_data2b1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2b1_pset_0_Events.out", header=TRUE, sep="")
	b21 <- table(ct_data2b1$Day,ct_data2b1$Event)/10
	ct_data2c1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2c1_pset_0_Events.out", header=TRUE, sep="")
	ct_data2d1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_2d1_pset_0_Events.out", header=TRUE, sep="")

	c21<- table(ct_data2c1$Day,ct_data2c1$Event)/10
	d21<- table(ct_data2d1$Day,ct_data2d1$Event)/10


	plot(c(as.numeric(rownames(a21))),a21[,1],xlim=c(0,100),ylim=c(0,1000),xlab="Day",ylab="Number of infection",main="Black: Vaccine Probability susceptible=1;Red: Vaccine Probability susceptible=0")
	plot(c(as.numeric(rownames(a21))),a21[,1],xlim=c(0,100),xlab="Day",ylab="Number of infection",main="Figure 2B: Epidemic Curves under different contact tracing start times",sub="10 people at max to be traced; 10% contacts traced in household and neighbour; 100% vaccination effective")

	points(c(as.numeric(rownames(b21))), b21[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c21))), c21[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d21))), d21[,1], col="orange", pch="?")
    legend("topright", inset=.005, title="Contact Tracing Start Time",
     c("No contact tracing", "Day 10","Day 15","Day 20"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)
	

	
	
	
	ct_data3a1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3a1_pset_0_Events.out", header=TRUE, sep="")
	a31 <- table(ct_data3a$Day,ct_data3a1$Event)/10
	ct_data3b1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3b1_pset_0_Events.out", header=TRUE, sep="")
	b31 <- table(ct_data3b1$Day,ct_data3b1$Event)/10
	ct_data3c1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3c1_pset_0_Events.out", header=TRUE, sep="")
	ct_data3d1 <- read.csv(file="C:/Users/kkokwok/Dropbox/id_spatial_sim/scenarios/hk_contacts/output/ebola_3d1_pset_0_Events.out", header=TRUE, sep="")

	c31<- table(ct_data3c1$Day,ct_data3c1$Event)/10
	d31<- table(ct_data3d1$Day,ct_data3d1$Event)/10


	plot(c(as.numeric(rownames(a31))),a31[,1],xlim=c(0,100),ylim=c(0,1000),xlab="Day",ylab="Number of infection",main="Black: Vaccine Probability susceptible=1;Red: Vaccine Probability susceptible=0")
	plot(c(as.numeric(rownames(a31))),a31[,1],xlim=c(0,100),xlab="Day",ylab="Number of infection",main="Figure 3B: Epidemic Curves under different contact tracing start times",sub="1 people at max to be traced; 10% contacts traced in household and neighbour; 100% vaccination effective")

	points(c(as.numeric(rownames(b31))), b31[,1], col="red", pch="*")
	points(c(as.numeric(rownames(c31))), c31[,1], col="blue", pch="#")
	points(c(as.numeric(rownames(d31))), d31[,1], col="orange", pch="?")
    legend("topright", inset=.005, title="Contact Tracing Start Time",
     c("No contact tracing", "Day 10","Day 15","Day 20"), fill=c("black","red","blue","orange"),bty='n', horiz=FALSE)
	