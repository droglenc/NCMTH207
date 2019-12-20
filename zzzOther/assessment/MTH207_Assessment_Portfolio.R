library(dplyr)
library(ggplot2)
library(FSA)

section.lvls <- paste0("W",c(12:19))
question.lvls1 <- c("OneWay","TwoWay","SLR","IVR","Logistic","Other")
question.lvls2 <- c("One-Way ANOVA","Two-Way ANOVA","Simple Linear Regression",
                    "Indicator Variable Regression","Logistic Regression",
                    "Something Else")

dfw <- readxl::read_excel(file.path("zzzOther","assessment",
                                   "Portfolio_Scores.xlsx")) %>%
  ## remove students that did not do the portfolio
  filter(USE) %>%
  ## rename the variables with hyphens
  rename(OneWay=`One-way`,TwoWay=`Two-way`) %>%
  ## Reduce to main variables
  select(Semester,OneWay:Other) %>%
  ## Convert to proportional scores
  mutate(OneWay=ifelse(Semester %in% c("W10","W11"),OneWay/10,OneWay/9),
         TwoWay=ifelse(Semester %in% c("W10","W11"),TwoWay/10,TwoWay/9),
         SLR=ifelse(Semester %in% c("W10","W11"),SLR/10,SLR/9),
         IVR=ifelse(Semester %in% c("W10","W11"),IVR/10,IVR/9),
         Logistic=ifelse(Semester %in% c("W10","W11"),Logistic/10,Logistic/9),
         Other=ifelse(Semester %in% c("W10","W11"),Other/10,Other/9)) %>%
  as.data.frame()
head(dfw)

dfl <- tidyr::pivot_longer(dfw,-Semester,
                           names_to="question",values_to="score") %>%
  mutate(question=factor(question,levels=question.lvls1),
         question2=mapvalues(question,from=question.lvls1,to=question.lvls2)) %>%
  filter(!is.na(score))
head(dfl)

cutoffs <- data.frame(question=factor(question.lvls1,levels=question.lvls1),
                      Q1= rep(0.7,length(question.lvls1)),
                      MDN=rep(0.8,length(question.lvls1))) %>%
  mutate(question2=mapvalues(question,from=question.lvls1,to=question.lvls2))

dflsum <- dfl %>%
  group_by(Semester,question) %>%
  summarize(n=n(),
            Q1=quantile(score,probs=0.25),
            MDN=quantile(score,probs=0.50),
            Q3=quantile(score,probs=0.75)) %>%
  ungroup() %>%
  left_join(.,cutoffs,by=c("question"),suffix=c("",".cut")) %>%
  mutate(Q1.met=ifelse(Q1>=Q1.cut,TRUE,FALSE),
         MDN.met=ifelse(MDN>=MDN.cut,TRUE,FALSE),
         MET=case_when(
           Q1.met & MDN.met ~ "Both",
           Q1.met & !MDN.met ~ "Just Q1",
           !Q1.met & MDN.met ~ "Just Median",
           TRUE ~ "Neither"
         ),
         MET=factor(MET,levels=c("Both","Just Q1","Just Median","Neither"))) %>%
  select(Semester,question,question2,n,Q1,MDN,Q3,Q1.met,MDN.met,MET)

dfl <- left_join(dfl,dflsum,by=c("Semester","question"),suffix=c("",".y")) %>%
  select(Semester,question,question2,score,MET)

p <- ggplot() +
  geom_boxplot(data=dfl,aes(x=reorder(Semester,desc(Semester)),
                            y=score,fill=MET),
               outlier.size=0.5,outlier.alpha=0.5) +
  scale_fill_manual(values=c("green","yellow","orange","red")) +
  scale_alpha_manual(values=0.5) +
  geom_hline(aes(yintercept=Q1),data=cutoffs,size=1,alpha=0.25) +
  geom_hline(aes(yintercept=MDN),data=cutoffs,size=1,alpha=0.25) +
  coord_flip() +
  facet_wrap(vars(question2),ncol=3) +
  labs(x="Semester",y="Proportion of Possible Points") +
  theme_bw() +
  theme(legend.position="bottom",
        panel.grid.major=element_blank(),
        panel.grid.minor=element_blank())
p

filter(dflsum,Semester=="W19")
