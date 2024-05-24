#import "poster.typ": *

#set text(
  font: "Pretendard",
)

#show: poster.with(
  size: "18x24",
  title: [새로운 강화학습 환경에서의 \ 부분 관측 마르코프 결정 프로세스 학습],
  authors: [양현서$""^(circle.stroked.tiny)$, 장병탁],
  departments: "Biointelligence Lab",
  univ_logo: "./images/logo.png",
  footer_text: "KSC 2023",
  footer_url: "https://yhs0602.github.io/CraftGround/",
  footer_email_ids: [yhs0602\@bi.snu.ac.kr #h(1cm) btzhang\@bi.snu.ac.kr],
  footer_color: "ebcfb2",

  // Use the following to override the default settings
  // for the poster header.
  num_columns: "2",
  univ_logo_scale: "80",
  title_font_size: "34",
  authors_font_size: "24",
  univ_logo_column_size: "2",
  title_column_size: "10",
  footer_url_font_size: "15",
  footer_text_font_size: "24",
)

= 서론
강화학습은 자연어 처리, 이미지 인식, 로봇 제어 등 다양한 분야에서 뛰어난 성능을 보이며 큰 주목을 받고 있다. 그러나 강화학습의 난제 중 하나는 부분 관측 마르코프 결정 과정(Partially Observable Markov Decision Process, POMDP)@POMDP~에서의 학습이다. POMDP 환경에서는 에이전트가 완전한 정보를 얻을 수 없으며, 이로 인해 학습 과정이 복잡해지고 어려워진다.

이러한 배경에서 본 논문은 마인크래프트를 활용한 새로운 강화학습 환경을 제안한다. 마인크래프트는 인기 있는 샌드박스 게임이다. 이 게임은 자유도가 높아 다양한 태스크를 생성하고 실험하는 것이 가능하다. 마인크래프트를 활용한 강화학습 환경은 이미 몇 가지가 존재하는데, 이 환경들은 한계가 있다. 본 논문에서 제안하는 새로운 강화학습 환경은 최신 버전의 마인크래프트를 지원하며, 다양한 관측 공간을 제공하여 POMDP 문제를 보다 효과적으로 해결할 수 있다. 이 환경은 다양한 기능을 지원하며, POMDP의 특성을 가지고 있어, 에이전트가 부분적인 정보만을 바탕으로 학습해야 한다. 본 논문에서는 이 새로운 환경에서의 실험을 통해 POMDP 및 희소 보상 설정에서의 강화학습의 가능성을 탐색하고자 한다.
#figure(
  image("images/fig1.png", width: 50%),
  caption: [#lorem(10)]
)
#lorem(10)

= 새로운 강화학습 환경 CraftGround
== 기존 마인크래프트 기반 강화학습 환경
- MineDojo@minedojo~: 마인크래프트 환경에서의 강화학습을 위한 플랫폼
- MineRL@minerl~: 마인크래프트 환경에서의 강화학습을 위한 플랫폼
== 기존 환경과의 차별점
- 최신 버전의 마인크래프트 지원, 업데이트 용이
- 고성능 (300TPS): protobuf와 unix domain socket 사용
- 다양한 관측 공간 제공: 소리, 통계, 사망 원인 등


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
#lorem(10)
$ mat(
  1, 2, ..., 8, 9, 10;
  2, 2, ..., 8, 9, 10;
  dots.v, dots.v, dots.down, dots.v, dots.v, dots.v;
  10, 10, ..., 10, 10, 10;
) $
= 실험
== 환경

#lorem(65)
#figure(
  image("images/fig1.png", width: 100%),
  caption: [#lorem(8)]
)

== 입력의 인코딩

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [
    #lorem(30),
    - #lorem(10),
  ]
)
#lorem(30)

== 모델

= 결과

= 결론

#bibliography("citation.bib")