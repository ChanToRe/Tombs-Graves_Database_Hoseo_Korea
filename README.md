<img src="https://user-images.githubusercontent.com/64909586/186408061-58a88e85-be08-47f2-b3b3-2c9e04a9dec6.png" height=65>

# 원삼국시대~삼국시대 호서지역 분묘 데이터베이스

---

## 소개
이 레포지토리는 원삼국시대~삼국시대 호서지역의 분묘유적을 정리한 데이터베이스입니다.
데이터베이스 작성에는 주찬혁(숭실대학교박물관), 김태연(숭실대학교 석사수료), 이선연(수도문물연구원), 장연은(수도문물연구원), 김민하(숭실대학교 사학과 2학년)가 참여하였습니다.

레포지토리는 크게 3개의 디렉토리로 구성되어 있습니다. `Data`에는 분묘유적의 좌표, 분묘 유구의 제원, 출토유물이 정리되어 있습니다. `Script`에는 그중 토광묘의 제원을 산점도로 출력하는 스크립트가 있습니다. `Graph`에는 토광묘의 제원을 산점도로 시각화한 도면이 있습니다.


---

## 파일구조

```
📦Tombs&Graves_Database_Hoseo_Korea
 ┣ 📂Data
 ┃ ┣ 📜Excavated_relics.csv
 ┃ ┣ 📜Site_Coordinate.csv
 ┃ ┗ 📜Site_Size.csv
 ┣ 📂Graph
 ┃ ┣ 📜ScatterPlot.tiff
 ┃ ┗ 📜Sitemap.tiff
 ┣ 📂Script
 ┃ ┗ 📜Pit_Scatter(전체).R
 ┣ 📜.gitignore
 ┗ 📜README.md
```

---

## 패키지 및 버전

```
R version 4.2.3 (2023-03-15)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur ... 10.16

Matrix products: default
BLAS:   /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRblas.0.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRlapack.dylib

locale:
[1] ko_KR.UTF-8/ko_KR.UTF-8/ko_KR.UTF-8/C/ko_KR.UTF-8/ko_KR.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] showtext_0.9-5 showtextdb_3.0 sysfonts_0.8.8 here_1.0.1     ggplot2_3.4.1 

loaded via a namespace (and not attached):
 [1] magrittr_2.0.3    tidyselect_1.2.0  munsell_0.5.0     colorspace_2.0-3 
 [5] R6_2.5.1          ragg_1.2.5        rlang_1.0.6       fansi_1.0.3      
 [9] dplyr_1.1.0       tools_4.2.3       grid_4.2.3        gtable_0.3.1     
[13] utf8_1.2.2        cli_3.6.0         withr_2.5.0       systemfonts_1.0.4
[17] rprojroot_2.0.3   tibble_3.1.8      lifecycle_1.0.3   crayon_1.5.2     
[21] textshaping_0.3.6 farver_2.1.1      vctrs_0.5.2       glue_1.6.2       
[25] compiler_4.2.3    pillar_1.8.1      generics_0.1.3    scales_1.2.1     
[29] jsonlite_1.8.4    pkgconfig_2.0.3  
```

모든 패키지는 `install.packages()` 명령어를 통해 설치할 수 있습니다.

---

## License

CC-BY 3.0
