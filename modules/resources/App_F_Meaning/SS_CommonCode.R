library(shiny)
library(ggplot2)
library(patchwork)
library(dplyr)

ns <- c(A=10,B=10)
mu <- 100
alphas <- seq(0,10,1)
sigma_p <- 5

one_iter <- function(ns,mu,alpha,sigma_p) {
  mus <- c(A=mu-alpha,B=mu+alpha)
  dftotal <- sum(ns)-1
  dfamong <- 1
  dfwithin <- dftotal-dfamong
  SSwithin <- dfwithin*sigma_p^2
  SSamong <- dfamong*((diff(mus)/2)^2)
  SStotal <- SSwithin+SSamong
  y1 <- scale(rnorm(ns[1]))*sigma_p+mus[1]
  y2 <- scale(rnorm(ns[2]))*sigma_p+mus[2]
  dplyr::tibble(alpha=alpha,
                grps=rep(c("A","B"),times=ns),
                y=c(y1,y2),
                mui=rep(c(mus[1],mus[2]),times=ns),
                mu =mu,
                residw=y-mui,
                residt=y-mu)
}

df <- purrr::map_df(.x=alphas,.f=one_iter,ns=ns,mu=mu,sigma_p=sigma_p) %>%
  mutate(grpjit=round(jitter(as.numeric(factor(grps)),0.5),4))

dfsum <- df %>%
  group_by(alpha) %>%
  summarize(n=n(),
            dfTotal=n-1,
            dfWithin=n-2,
            SSTotal=sum(residt^2),
            SSWithin=sum(residw^2)) %>%
  mutate(dfAmong=dfTotal-dfWithin,
         SSAmong=SSTotal-SSWithin,
         MSAmong=SSAmong/dfAmong,
         MSWithin=SSWithin/dfWithin,
         F=MSAmong/MSWithin,
         p=pf(F,df1=dfAmong,df2=dfWithin,lower.tail=FALSE))

main <- ggplot(data=df) +
  geom_crossbar(mapping=aes(x=1.5,y=mu,ymin=mu,ymax=mu),
                width=1.25,color="red") +
  geom_crossbar(mapping=aes(x=grps,y=mui,ymin=mui,ymax=mui),
                width=0.25,color="blue") +
  geom_segment(mapping=aes(x=grpjit,xend=grpjit,y=y,yend=mui),
               color="blue",linetype="dashed",size=1) +
  geom_point(mapping=aes(x=grpjit,y=y),
             size=2.5,pch=21,fill="gray90",color="black") +
  geom_segment(mapping=aes(x=grps,xend=grps,y=mu,yend=mui),
               color="red",linetype="dashed",size=1) +
  scale_x_discrete(name="Group") +
  scale_y_continuous(name="Y",limits=c(80,120)) +
  theme_classic() +
  theme(axis.text=element_text(size=14),
        axis.title=element_text(size=16))


SSrng <- c(0,max(dfsum$SSTotal))

SS <- ggplot(data=dfsum,mapping=aes(x=1)) +
  geom_bar(mapping=aes(y=SSTotal),stat="identity",
           width=0.1,color="black",fill="blue") +
  geom_bar(mapping=aes(y=SSAmong),stat="identity",
           width=0.1,color="black",fill="red") +
  geom_text(mapping=aes(y=SSTotal),label=expression(SS[Total]),
            parse=TRUE,vjust=-0.5,size=6) +
  geom_text(mapping=aes(y=SSAmong),label=expression(SS[Within]),
            parse=TRUE,vjust=-0.5,size=6,color="white") +
  geom_text(mapping=aes(y=SSAmong),label=expression(SS[Among]),
            parse=TRUE,vjust=1.4,size=6,color="white") +
  scale_x_continuous(name=element_blank(),labels=element_blank(),breaks=NULL) +
  scale_y_continuous(name=element_blank(),labels=element_blank,breaks=NULL,
                     limits=SSrng,expand=expansion(c(0,0.10))) +
  theme_minimal()

Frng <- c(0,max(dfsum$F))

F <- ggplot(data=dfsum,mapping=aes(x="F")) +
  geom_bar(mapping=aes(y=F),stat="identity",
           width=1,color="black",fill="gray50") +
  scale_x_discrete(name=element_blank()) +
  scale_y_continuous(name=element_blank(),labels=element_blank,breaks=NULL,
                     limits=Frng,expand=expansion(c(0,0.05))) +
  theme_minimal() +
  theme(axis.text=element_text(size=14))

p <- ggplot(data=dfsum,mapping=aes(x="p")) +
  geom_bar(mapping=aes(y=p),stat="identity",
           width=1,color="black",fill="gray50") +
  scale_x_discrete(name=element_blank()) +
  scale_y_continuous(name=element_blank(),labels=element_blank,breaks=NULL,
                     limits=c(0,1),expand=expansion(c(0,0.05)),trans="sqrt") +
  theme_minimal() +
  theme(axis.text=element_text(size=14))
