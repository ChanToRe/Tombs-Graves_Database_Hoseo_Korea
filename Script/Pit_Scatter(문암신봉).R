library(ggplot2)
library(here)
library(showtext)
library(sysfonts)
#font_add_google('Nanum Gothic', family='NanumGothic')
#showtext_auto()
#par(family="NanumGothic")

df <- read.csv(here('./Data/Site_Size.csv'))
df <- subset(df, df$유형 == "토광묘" | df$유형 == "주구토광묘" | df$유형 == "분구묘")
df <- subset(df, df$지역 == "청주")
df <- subset(df, df$유적명 == "청주 문암동" | df$유적명 == "청주 신봉동"| df$유적명 == "청주 신봉동 백제고분군")

SiteName <- paste(df$유적명, df$유구명)
Type <- df$유형
Length <- as.numeric(df$길이.m.)
Width <- as.numeric(df$넓이.m.)

Processing_df <- data.frame(SiteName, Type, Length, Width)
Processing_df <- na.omit(Processing_df)

ggplot(data = Processing_df,
      aes(x=Processing_df$Length,
      y=Processing_df$Width)) +
  geom_point(size=0.75) +
  theme_bw() +
  theme(legend.position = c(0.08, 0.750),
        legend.background = element_rect(size=0.1,
                                         colour="black"),
        legend.margin = margin(10, 20, 10, 10)) +
  scale_shape_manual(values=c(15,0)) +
  scale_x_continuous(limits = c(0, 7), breaks=seq(0, 7, 1)) +
  scale_y_continuous(limits = c(0, 4), breaks=seq(0, 4, 1)) +
  scale_size_continuous(guide=FALSE) +
  labs(x = "묘광 길이(m)", y = "묘광 너비(m)") +
  theme(plot.caption = element_text(size = 12, hjust = 0),
      legend.title=element_text(size=18),
      legend.text=element_text(size=15),
      axis.text = element_text(size=15, colour="black"),
      axis.title.x = element_text(size=12, colour="black", face='bold'),
      axis.title.y = element_text(size=12, colour="black", face='bold')
      )

ggsave(here("./Graph/Pit_Point(문암신봉).tiff"), dpi=300, width=8, height=3, units='in')
