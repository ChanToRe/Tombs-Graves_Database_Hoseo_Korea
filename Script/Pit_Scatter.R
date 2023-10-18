library(ggplot2)
library(here)
library(showtext)
library(sysfonts)

#font_add_google('Nanum Gothic', family='NanumGothic')
#showtext_auto()
#par(family="NanumGothic")

df <- read.csv(here('./Data/Pit&Wood_Chamber_Set.csv'))
df <- subset(df, df$길이.묘광. < 180)
df <- subset(df, df$길이.묘광. >= 0)

ggplot(data = df,
      aes(x=df$길이.묘광.,
          y=df$너비.묘광.)) +
  geom_point(size=1.5) +
  theme_bw() +
  theme(legend.position = c(0.08, 0.750),
        legend.background = element_rect(size=0.1,
                                         colour="black"),
        legend.margin = margin(10, 20, 10, 10)) +
  scale_shape_manual(values=c(15,0)) +
  scale_x_continuous(limits = c(0, 200), breaks=seq(0, 200, 50)) +
  scale_y_continuous(limits = c(0, 200), breaks=seq(0, 200, 50)) +
  scale_size_continuous(guide=FALSE) +
  labs(x = "묘광 길이", y = "묘광 너비") +
  theme(plot.caption = element_text(size = 12, hjust = 0),
      legend.title=element_text(size=18),
      legend.text=element_text(size=15),
      axis.text = element_text(size=15, colour="black"),
      axis.title.x = element_text(size=12, colour="black", face='bold'),
      axis.title.y = element_text(size=12, colour="black", face='bold')
      )

ggsave(here("./Graph/Pit_Point.tiff"), dpi=300, width=8, height=3, units='in')
