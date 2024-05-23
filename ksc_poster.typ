#import "poster.typ": *

#set text(
  font: "Pretendard",
)

#show: poster.with(
  size: "18x24",
  title: "새로운 강화학습 환경에서의 부분 관측 마르코프 결정 프로세스 학습",
  authors: [양현서$""^(circle.stroked.tiny)$, 장병탁],
  departments: "Biointelligence Lab",
  univ_logo: "./images/fig1.png",
  footer_text: "KSC 2023",
  footer_url: "https://www.example.com/",
  footer_email_ids: "abc@example.com",
  footer_color: "ebcfb2",

  // Use the following to override the default settings
  // for the poster header.
  num_columns: "2",
  univ_logo_scale: "100",
  title_font_size: "34",
  authors_font_size: "20",
  univ_logo_column_size: "4",
  title_column_size: "10",
  footer_url_font_size: "15",
  footer_text_font_size: "24",
)

= #lorem(3)
#lorem(100)
#figure(
  image("images/fig1.png", width: 50%),
  caption: [#lorem(10)]
)
#lorem(60)

= #lorem(2)
#lorem(30)

+ #lorem(10)
+ #lorem(10)
+ #lorem(10)

#lorem(50)

#set align(center)
#table(
  columns:(auto, auto, auto), 
  inset:(10pt),
 [#lorem(4)], [#lorem(2)], [#lorem(2)],
 [#lorem(3)], [#lorem(2)], [$alpha$],
 [#lorem(2)], [#lorem(1)], [$beta$],
 [#lorem(1)], [#lorem(1)], [$gamma$],
 [#lorem(2)], [#lorem(3)], [$theta$],
)

#set align(left)
#lorem(80)
$ mat(
  1, 2, ..., 8, 9, 10;
  2, 2, ..., 8, 9, 10;
  dots.v, dots.v, dots.down, dots.v, dots.v, dots.v;
  10, 10, ..., 10, 10, 10;
) $
== #lorem(5)

#lorem(65)
#figure(
  image("images/fig1.png", width: 100%),
  caption: [#lorem(8)]
)

= #lorem(3)

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [
    #lorem(80),
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
  ]
)
#lorem(30)