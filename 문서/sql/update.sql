create table d_member(
    mno number(5) constraint d_member_mno_pk primary key,
    mid varchar2(20) constraint d_member_mid_uq unique,
    mpassword varchar2(20),
    mnick varchar2(30) constraint d_member_mnick_uq unique,
    mtype char(1) default 'U',
    mdate date default sysdate);

    create table d_disease(
    dname varchar2(40) constraint d_disease_dname_pk primary key,
    dage number(1) default 0
);



create table d_board(
    bno number(5) constraint d_board_bno_pk primary key,
    dname varchar2(40),
    bsum clob,
    bcause clob,
    btreat clob,
    bcare clob,
    bdate date default sysdate,
    constraint d_board_dname_fk foreign key(dname) references d_disease(dname)
);



create table d_symptom(
    syno number(5) constraint d_symptom_syno_pk primary key,
    dname varchar2(40),
    syname varchar2(30),
    constraint d_symptom_dname_fk foreign key(dname) references d_disease(dname)
);


create table d_species(
    spcode varchar2(6) constraint d_species_spcode_pk primary key,
    spname varchar2(50) constraint d_species_spname_uq unique
);

create table d_weaken(
    wno number(5) constraint d_weaken_wno_pk primary key,
    dname varchar2(40),
    spcode varchar2(6),
    constraint d_weaken_dname_fk foreign key(dname) REFERENCES d_disease(dname),
    CONSTRAINT d_weaken_spcode_fk foreign key(spcode) REFERENCES d_species(spcode)
);


create table d_pet(
    pno number(5) constraint d_pet_pno_pk primary key,
    mid varchar2(20),
    spcode varchar2(6),
    pname varchar2(30) constraint d_pet_pname_nn not null,
    CONSTRAINT d_pet_mid_fk foreign key(mid) REFERENCES d_member(mid),
    CONSTRAINT d_pet_spcode_fk foreign key(spcode) REFERENCES d_species(spcode)
);


create table d_comment(
    cno number(5) constraint d_comment_cno_pk primary key,
    mnick varchar2(30),
    bno number(5),
    ccontent CLOB,
    cdate date default sysdate,
    ctype char(1) default 'V',
    constraint d_comment_mnick_fk foreign key(mnick) REFERENCES d_member(mnick),
    constraint d_comment_bno_fk foreign key(bno) REFERENCES d_board(bno)
);


insert into d_disease values('링웜', 0);
insert into d_disease values('감기', 0);
insert into d_disease values('포도중독', 0);
insert into d_disease values('백내장', 0);
insert into d_disease values('장폐색', 1);
insert into d_disease values('디스크(추간판탈출증)', 1);
insert into d_disease values('슬개골 탈구', 1);
insert into d_disease values('췌장염', 0);
insert into d_disease values('간문맥단락(PSS)', 0);
insert into d_disease values('기관지 협착증', 1);
insert into d_disease values('재생성 빈혈', 0);
insert into d_disease values('심장사상충', 0);
insert into d_disease values('급성신부전', 1);
insert into d_disease values('유선종양', 1);
insert into d_disease values('치은염 / 치주염', 0);
insert into d_disease values('만성신부전', 0);
insert into d_disease values('쿠싱 증후군', 1);
insert into d_disease values('피부병', 0);
insert into d_disease values('외이염', 0);
insert into d_disease values('광견병', 0);
insert into d_disease values('간경변증', 0);
insert into d_disease values('알레르기', 0);
insert into d_disease values('비강종양',0);
insert into d_disease values('신장결석', 0);
insert into d_disease values('구강종양', 1);
insert into d_disease values('파보 바이러스', -1);
insert into d_disease values('고관절이형성증', 0);
commit;

select*from d_board;


insert into d_board values (d_board_seq.nextval, '링웜', '강아지는 피부병에 취약한 경우가 많다. 강아지 링웜 (Ringworm)도 그중 하나다.
링웜은 각질층 또는 피모·손톱 등에 나타나는 곰팡이성 피부염을 의미한다.
특히, 강아지가 링웜을 앓는 경우 사람이나 함께 사는 다른 동물들에게도 전염될 수 있으므로 유의해야 한다.', '강아지 링웜은 주로 다른 동물, 사람에게 옮는 경우가 많다.
그 외에도 침구, 발톱깎이, 케이지 등에 있는 세균에 의해 감염된다. 세균의 종류는 대부분이 개 소포자균으로 알려져 있다.

Microsporum canis (개 소포자균); 70%
Microsporum gypseum; 20%
Trichophyton mentagrophytes (백색종창균); 10%

또한, 같은 세균에 노출되어도 나이, 면역 질환 혹은 면역억제성 약물의 영향 등으로 인해 면역력이 약해지면 감염될 확률이 높아진다.', '링웜 진단은 강아지 털이나 각질을 채취하여 세균을 배양하고 현미경 검사를 통해 이뤄진다. (진균배양검사)
심각하지 않은 경우라면 동물 병원에서 처방하는 피부용 국소치료제 및 약용 샴푸로 호전될 수 있을 것이다. 이때, 장모종이라면 효과적인 약물/샴푸 도포를 위하여 털을 깎아야 할 수 있다.
심각한 경우라면 국소치료제나 약용 샴푸 외에도 항진균제가 처방될 수 있다. 완치 시까지 지속적으로 진균배양검사를 하여 확인을 하게 된다.', '강아지가 링웜을 진단 받았다면 다른 동물들과 격리해야 한다. 또한, 가족들이 그 강아지를 다룰 때도 일회용 장갑을 끼고, 만진 후에는 손을 닦고 옷가지도 빨아서 전염되지 않도록 해야한다.
가장 중요한 것은 집을 소독하는 것이다. 바닥청소는 물론 옷가지, 소파, 침대, 카페트 등 세균이 있을만한 가구나 물건을 모두 살균효과가 강한 세척제로 빨아야 한다.', sysdate);



insert into d_board values (d_board_seq.nextval, '감기', '사람이 감기에 걸리면 기침, 콧물, 재채기 등의 증세를 보인다. 아래처럼 강아지 감기 증세도 유사하다.
-콧물 혹은 코막힘
-재채기
-기침
-눈물이 많아짐', '강아지 감기 증세의 원인은 우리가 생각하는 ‘스쳐 지나가는 감기 바이러스’가 아닐 수 있다.
사람이 걸리는 감기는 50% 이상이 리노바이러스라는 특정 감기 바이러스에 의한 것이라고 한다.
반면, 강아지의 경우 아래와 같이 전염성이 높은 바이러스에 의한 것일 수 있으므로 더 유의해야 한다.

개 아데노바이러스 2형 (전염성 후두기관염)
코로나장염 (CRCoV, canine respiratory coronavirus)
파라인플루엔자
보르데텔라 브론키셉티카 (켄넬코프)
인플루엔자 (독감)
홍역 바이러스 (디스템퍼)
만약 유난히 기침이 지속된다면 아래와 같은 원인도 의심해보자.

기생충 감염; 심장사상충, 회충 등
곰팡이 감염, 알레르기', '', '● 수의사의 진단 및 처방이 1순위
강아지 감기가 의심될 때는 지체 없이 동물 병원에 내원하자. 사실상 집에서 보는 증세만으로는 원인이 무엇인지, 심각성과 전염성은 어느 정도인지 전혀 구분할 수 없기 때문이다. 수의사의 진단을 통해 원인을 파악한 후 적절한 처방을 받는 것이 가장 1순위이다.

그리고 집에서 할 수 있는 홈 케어법에 대해 살펴보자.

● 홈 케어법
- 집안 습도 올리기
사람과 마찬가지로 강아지도 감기 증세를 보일 때 습도를 올리는 것이 효과적이라고 알려져 있다. 집에 있는 가습기를 사용해보자.
만약 가습기가 없다면 화장실 샤워기로 뜨거운 물을 틀어놓고 습도를 높인 후에 강아지를 데리고 들어가 10분 정도 함께 있자. 혹은 샤워를 할 때 강아지가 화장실에서 머무르도록 해도 좋을 것이다.

- 닭 수프 먹이기
강아지가 무기력하고 물도 잘 마시지 않는다면? 닭 수프를 먹여보자. 수분 섭취량을 늘리고 기력을 회복시키는 데에 도움이 된다고 알려져 있다.
사람이 먹기 위한 닭죽(수프)에는 염분이 많거나 양파, 마늘과 같이 강아지에게 위험할 수 있는 재료가 들어간다.
따라서, 강아지를 위해 염분 없이 끓여보자. 양념 없이 끓여도 강아지는 맛있는 닭 국물의 냄새를 맡고 입맛을 다시게 될 것이다.

- 절대 안정 취하기
사람도 그렇지만 강아지도 감기 증상이 있을 때는 절대 안정을 취하는 것이 중요하다. 회복을 위해 포근한 잠자리를 마련해주고, 추위를 느끼면 담요를 사용할 수 있도록 함께 놔주자.
감기가 낫는 데에는 약과 음식도 중요하지만 충분한 휴식을 취하는 것 또한 필수적이다.', sysdate);
insert into d_board values (d_board_seq.nextval, '포도중독', '강아지 포도 먹으면 안 돼
거의 모든 반려인들이 식은땀을 흘리는 순간이 있다. 바로 강아지가 먹으면 안 되는 음식을 삼키는 순간이다. 대표적인 것이 ‘포도‘ 혹은 ‘초콜릿‘등이다. 중독성이 있어 급성 신부전으로까지 나아갈 수 있기 때문이다.

하지만 강아지와 살다 보면 눈 깜짝할 새에 사고가 일어나고는 한다. 대표적인 강아지 금기 과일인 포도를 먹었을 때의 증상과 처치법에 대해 알아보자.

● 강아지 포도 중독 유발 섭취량
소동물 독물학 (Small Animal Toxicology)에 따르면 몸무게에 따라 중독 증세를 유발할 수 있는 (건)포도 섭취량은 아래와 같다.
- 포도: 체중 4.5kg 기준 포도 1~2알, 9kg 기준 포도 3~4알
- 건포도: 체중 4.5kg 기준 건포도 20g, 9kg 기준 건포도 40g', '포도나 건포도의 섭취는 아주 소량이라고 할지라도 일부 강아지에게는 독성으로 작용할 수 있다. 강아지에 따라 비교적 많은 양을 문제없이 소화하기도 한다.
포도 내 어떤 물질이 독성인지 명확하게 밝혀지지는 않았다. 하지만 과육 내 중독물질(살충제, 중금속, 환경오염물), 다량의 비타민 D3 혹은 단순 화합물 등과 관련 있는 것으로 추측되고 있다.
다시 말해, 껍질을 깐 포도 혹은 씨앗이 없는 포도도 똑같이 문제를 일으킬 수 있다.', '● 강아지 포도 중독 응급조치법
응급상황이기 때문에 즉각적인 조치가 필요하다. 강아지가 지난 두 시간 안에 포도나 건포도를 먹은 것이 확실하다면 최대한 빨리 조치를 취해야 한다. 독성을 완전히 흡수하기 전에 구토를 유발해야 하기 때문이다.

하지만 다음과 같은 경우, 구토 유발은 피해야 한다:

- 무의식
- 호흡 곤란
- 심각한 고통을 호소하는 경우
- (건)포도를 먹은 것이 확실하지 않은 경우
- 강아지가 이미 토를 한 경우에는 억지로 구토를 유발할 필요가 없다. 정확한 상황 파악 및 처치는 수의사에게 문의해야 한다.

만약 동물병원에서 가정 내 구토 유발을 지시하였다면 아래를 참조하자.

- 직전 2시간 이내 (건)포도 섭취한 경우
추가적인 음식 섭취가 토를 할 수 있도록 돕는다. 하지만 강아지가 음식에 관심을 보이지 않는다면 굳이 먹일 필요는 없다.

- 과산화수소를 이용한 구토 유발
강아지의 몸무게 1kg당 2.2ml의 과산화수소을 계량 (이때, 체중이 20kg가 넘는다고 해도 최대 45ml의 과산화수소만 사용해야 함)
투약용 주사기나 티스푼(5ml), 스포이트 사용하여 주입
15분 내로 구토가 발생하지 않는다면, 같은 양으로 한 번 더 유도 (단, 15분 간격으로 두 번 넘게 반복하는 것은 금지)
두 번째 구토 유발 시도 후에도 차도가 없다면? 구토 유발 응급 처치를 멈추자. 그리고, 동물병원에 내원하여 차도를 살피자.

● 포도 중독 진단 및 치료
대부분의 경우 주인이 직접 강아지가 (건)포도를 먹은 것을 알아차린다. 가끔 일부 소화된 (건)포도가 토사물이나 대변에서 발견된다.
위험 섭취량 이상을 먹었을 때 급성 신부전 증세가 나타나는데 이는 일반 혈액검사(CBC), 혈청 화학 검사, 소변 검사 등을 통해 진단되게 된다. (BUN, 크레아티닌, Ca(칼슘) 상승 등)
동물병원 내원 후 포도 중독 치료를 위해서는 먼저 구토를 유발하는 것이 일반적이다. (2시간 이내 섭취 및 아직 토를 하지 않은 경우) 그 후, 위 세척 및 독성 물질 제거(흡수)를 위한 조치를 취하게 된다.
이 일련의 과정 동안 신장이 제 기능을 하고 있는지 반복해서 검사를 하고 투약을 해야 하기 때문에 입원 및 집중 모니터링이 필수적일 것이다.', '', sysdate);
insert into d_board values (d_board_seq.nextval, '백내장', '강아지 백내장이란 안구 내 수정체(렌즈)를 구성하는 섬유세포가 손상되면서 시력을 상실하는 것을 말한다. 겉으로 보기에 눈이 뿌옇게 된다. 견종을 불문하고, 노령화 되면서 많이 겪는 질병이다.', '- 노화
- 당뇨병 (높은 혈당으로 수정체 섬유세포 대사에 영향)
- 유전적 원인 (1~5세 발병 경향)
- 전기 충격
- 홍채 염증
- 저칼슘혈증
- 방사선 혹은 독성물질/약물 노출 (디니트로페놀, 나프탈렌 등)', '수술적 치료: 초음파로 수정체를 유화(액화)시킨 후 제거하고 인공 수정체 삽입
당뇨병에 기인한 경우, 진행속도가 빠르기 때문에 수술적 치료가 권장되는 편임

반면, 노화에 의한 것이라면 수술적 치료는 권장되지 않음', '백내장과 염증이 동반될 수 있고, 심한 경우 녹내장으로 이어질 수 있으므로 소염제 성분의 안약을 처방받아 넣는 것이 필요. (미성숙 단계일 경우)
강아지가 일상생활 속 다치지 않도록 가구에는 뽁뽁이를 붙여줄 것.
집안 내 강아지의 활동 반경 내 장애물을 치워주고, 가구의 위치를 바꾸지 말 것.
강아지를 갑자기 만지거나 들어올리는 것을 자제하고, 코 앞에 손을 가져다대면서 냄새를 맡을 수 있게 해줌.', sysdate);
insert into d_board values (d_board_seq.nextval, '장폐색', '장폐색은 소장 (혹은 소장과 위를 연결하는 부분)이 막혀서 음식이나 소화액이 통과하지 못 하는 증상이다. 물건을 자꾸 입으로 넣는 습관을 지닌 강아지라면 유의해야 하는 증상이다.
장폐색이 일어나면 위장관으로의 혈액공급에 문제가 생긴다. 이 때문에, 세포 괴사 혹은 천공(구멍이 뚫리는 것)이 생길 수 있다.
긴급하게 치료받지 못 하면 복막염으로 이어지거나 목숨이 위태로워질 수도 있으므로 곧장 병원에 내원해야 한다.', '- 소화 불가능 물건 혹은 음식을 삼킨 경우 (뼈 간식, 삼키기 쉬운 각종 생활용품 등)
- 복부 종양
- 위장염
- 유문협착증 (위의 유문강이 좁아지는 것)
- GDV (위확장-꼬임 증후군)
- 장내 기생충
- 탈장
- 장 중첩증 (장이 말려들어가는 증상)', '● 긴급처치법
- 강아지가 소화가 불가능한 혹은 크고 날카로운 것을 삼킨 경우, 동물병원에 내원해 검사를 받고 필요 시 구토 유발
- 강아지가 삼킨 물건의 크기가 작고 부드러워 대변으로 나올 것으로 예상된다면 기다린 후 대변 관찰 (이상증세가 있다면 병원 내원)
- 물건을 삼킨 것은 보지 못 했으나 장폐색 증상을 보인다면, 동물병원 내원 및 검사 진행

● 치료법
- 삼킨 직후 내원했다면, 구토유발 시도
- 수의사에 판단에 따라 수액처치 및 관장을 통해 삼킨 물체가 장을 통과하는지 모니터링
- 위험한 물건의 경우, 제거술을 통해 물체 및 괴사한 조직 제거', '', sysdate);
insert into d_board values (d_board_seq.nextval, '디스크(추간판탈출증)', '강아지 디스크라고도 불리는 추간판탈출증은 추간판이 충격을 받거나 파열되어 밖으로 빠져나오는 것을 의미한다. 추간판은 척추뼈 사이에 존재하는 연골이다. 발병 시, 고통은 물론 신경학적 문제를 야기한다.', '- Hansen Type I (추간판 탈출)
추간판 이형성을 보이는 견종에게 급성으로 발병
주로 소형견에게 발병 (닥스훈트, 시츄, 비글, 페키니즈, 푸들, 웰시코기, 바셋 하운드 등)

- Hansen Type II (추간판 돌출)
섬유성변성에 취약한 대형견종에 만성적으로 발병
저먼 셰퍼드, 리트리버, 도베르만 핀셔', '진행단계에 따라 외과적 수술 혹은 물리치료 진행
- 물리치료: 척추 근육 강화를 위한 마사지, 수중 런닝머신 등
- 수술적 요법: 척추관을 열고 손상된 추간판 제거', '● 예방법
- 적정 체중 유지 (비만의 경우, 관절 및 뼈 관련 질병에 취약해짐)
- 척추 외상을 야기할 수 있는 활동은 하지 않기 (과도한 점프 등)', sysdate);
insert into d_board values (d_board_seq.nextval, '슬개골 탈구', '슬개골 탈구는 단어에서도 유추할 수 있듯이,  ‘슬개골’이 정상적인 자리를 이탈하는 관절 질병이다. 이때 슬개골이 강아지의 몸 안쪽으로 탈구될 수도 있고(‘내측 슬개골 탈구’), 바깥쪽으로 탈구될 수도 있다(‘외측 슬개골 탈구’).',
'슬개골 탈구는 미끄러짐, 부딪힘 등의 외상으로부터 발생할 수도 있지만, 유전적인 요인이 더 큰 원인을 제공한다. 유전적 요인에 의해 슬개골 주변 관절이 비정상적으로 형성되어 슬개골 탈구로 이어지는 경우가 더 많다는 뜻이다.
슬개골 탈구는 대형견보다는 소형견인 포메라니안, 치와와, 보스턴테리어, 요크셔테리어, 미니어처 푸들 등에서 더 자주 나타난다.
또한, 암컷이 수컷보다 발병률이 1.5배 높다.', '- 1기: 1기의 경우 보통 수술적 치료는 행하지 않는다. 수술 대신 소염제 및 약물 등의 처방과 함께 무릎 보조기 사용을 통하여 증상을 완화하는 경우가 많다. 다만, 1기라고 해도 악화될 가능성이 있기 때문에 주기적인 검진을 받을 필요가 있다.
- 2기~4기: 2기부터는 수술적 방법을 통하여 치료가 행해진다. 이때 수술 방법은 세부 검사를 통하여 강아지의 상태에 맞게 이루어진다. 탈구가 심할수록, 수술의 복잡성 및 난도도 높아지는 경향이 있다.
슬개골 탈구의 수술비용은 슬관절의 상태, 양쪽 다리에 발병하였는지 한쪽만 발병하였는지 등 다양한 요인에 따라 상이하지만 평균적으로 100만원 이상 소요된다.',
'슬개골 탈구는 재발률이 48%에 달하는 질병으로 수술 후에도 지속적인 관리가 필요하다. 불행 중 다행인 점은 재발할 경우 탈구가 기존에 진행되었던 탈구보다는 완화된 형태로 나타난다는 점이다.
퇴원 후 2~3주간은 과도한 운동, 점프 등을 하지 못하게 환경을 조성해줘야 하며, 적절한 체중관리도 수반되어야 한다. 또한, 병원 처방약과 함께 관절 영양제를 급여하는 것도 좋은 방법이다.
마지막으로, 재활운동을 통하여 주변 인대와 근육을 강화하여 재발을 방지할 필요가 있다.', sysdate);
insert into d_board values (d_board_seq.nextval, '췌장염', '췌장염은 소화효소 분비와 호르몬(인슐린) 분비를 담당하는 췌장에 염증이 생기는 질환을 의미한다. 급성과 만성으로 나뉘는데, 급성은 다른 장기 손상 없이 회복될 수 있다. 반면에, 만성 췌장염은 신장이나 간 손상, 복부 염증 등을 야기할 수 있으며 치료 없이 병세가 악화된다면 뇌 손상까지 초래할 수 있다.
원인이 뚜렷하게 밝혀지지 않은 질병이나 주로 영양학적 요인에 의한 것이라고 추정될 뿐이다.', '- 영양학적 요인; 지방혈증 (혈액 내 지방 과잉)
- 고칼슘혈증 (혈액 내 칼슘농도 정상범위 이탈)
- 약물 혹은 독성물질에 의한 중독
- 저탄고지 (낮은 탄수화물, 높은 지방) 식단
- 유전적 요인; 슈나우저, 코카스파니엘 등에 자주 발병', '- 수액처치, 전해질 공급제, 혈장 수혈, 칼륨 공급 등 진행
- 절식 및 안정을 통하여 췌장의 소화효소 생성을 둔화시키며 회복 촉진
- 구토 및 복통에 대한 대증치료, 감염 방지를 위한 항생제 투약 등
- 심한 경우 담석이나 손상된 조직 등의 염증 유발 물질 제거를 위해 수술', '● 예방법
- 고지방 식단 지양
- 적정 몸무게 유지 (비만 여부) 상시 체크
- 염증 유발 가능 의약품 투약 유의', sysdate);
insert into d_board values (d_board_seq.nextval, '간문맥단락(PSS)', '정상적인 경우라면 소화기-간문맥-간-후대정맥-심장이 혈관을 통해 연결되어 있다. 이를 통해 섭취한 각종 영양분은 간에서 해독작용을 거친 후 심장을 거쳐 각 신체 장기로 이동하는 것이다. 하지만, 간문맥단락의 경우에는 단락혈관이 있어 소화 장기에서 나온 혈액이 간을 거치지 않고 바로 심장으로 가는 것이다. 다시 말해, 있어서는 안 되는 혈관이 있는 것이다.
원인에 따라 선천적, 후천적 경우로 나뉘며, 발작과 같은 신경증상을 동반하기 때문에 치명도 및 일상적 관리필요도가 높은 질병이다.', '● 선천적 요인
- 태아 시기에는 간이 발달하기 전이기 때문에 모견으로 부터 얻는 영양분이 심장으로 직접 이동하는데, 태어난 후에도 이러한 혈관이 사라지지 않음
- 간문맥단락증의 약 80%가 선천적
- 주로 3세 미만에 증상 발현

● 후천적 요인
- 소화관과 간을 이어주는 혈관 내 혈압이 상승하면서 단락혈관 생성
- 주로 간경변증에 기인
- 선천적 요인일 때보다 나이가 들어 증상 발현됨', '질병의 원인을 치료하는 법은 수술적 요법 밖에 없음.

수술법: 혈관의 크기에 맞는 고리를 이용하여 단락 혈관을 막는 교정술. 이 때, 한 번에 혈관을 막게 되면 장에 심각한 부작용을 일으킬 수 있어 천천히 막아야 함
선천적인 경우 대부분 단락혈관이 1개이기 때문에 수술 후 예후가 긍정적인 경우가 많이 있음
후천적인 경우 단락혈관이 여러 개인 경향이 있고 기타 기저질환으로 인하여 수술이 어려운 경우가 대부분임

관리를 위해서는 단백질 부산물이 남지 않도록 처방식을 급여하며 암모니아 수치가 상승하지 않도록 해야함', '근본적 치료는 수술로만 가능하지만, 수술이 불가능하다고 하더라도 식이요법과 약물요법으로 관리를 해도 약 1/3이 성공적인 일상생활을 할 수 있다고 알려져있음

1. 식이요법
- 체내에 단백질 부산물이 남지 않도록 처방식을 급여하며 암모니아 수치가 상승하지 않도록 유의
- 동물성 단백질보다 식물성 단백질이 더 낮은 방향족아미노산/메티오닌, 더 높은 아르기닌, 섬유질을 함유하고 있음. 따라서, 소화관 내 암모니아와 소화가 되지 않은 단백질을 자주 배출하게 하는 완하제 효과를 지녀 더 예후가 좋다는 연구자료도 있음

2. 약물요법
- 장기 내 박테리아 치료를 위한 항생제 처방 가능
- 대장 내 박테리아와 대변 제거를 위해 관장을 할 수 있음
- 암모니아 수치를 떨어트리기 위해 락툴로오스 처방 가능', sysdate);
insert into d_board values (d_board_seq.nextval, '기관지 협착증', '강아지가 거위 소리를 내면서 ‘컹컹’ 댄다는 점에서 기관지협착증(Tracheal Collapse)과 리버스 스니징의 증상은 유사하다. 리버스 스니징의 경우 강아지가 코 인두 부분의 이물질을 제거하기 위한 자연스러운 행동으로 너무 심하지만 않다면 걱정할 필요가 없다. 반면에 기관지협착증은 약물적 치료 혹은 수술적 치료가 필요한 질병이다.', '', '기관지협착증의 치료는 수의사 진단을 따라야 한다. 수의사는 종합적 상황을 판단하여 수술적 방법, 약물적 방법 혹은 둘의 혼합한 방법으로 치료를 시행할 것이다.
또한, 연구결과에 따르면 기관지 협착증 증세를 보인 강아지들의 경우에 간 관련 질병에도 취약한 것으로 나타나, 기관지협착증을 진단받았다면 간 관련 질병에 대해서 주기적인 검진을 받는 것 또한 좋은 방법이다.', '● 강아지 기관지 협착증 예방
강아지 기관지협착증을 최대한 예방하기 위해서 목줄보다는 하네스 및 가슴줄을 활용하는 것이 좋다. 또한, 강아지를 적정 몸무게로 유지하는 것이 중요하다. 그럼에도 불구하고 기관지 협착증의 유전적인 측면 때문에, 기관지협착증을 완벽히 예방하는 것은 불가능하다.
그 외 강아지의 기관지에 좋다고 반려인 사이에서 널리 알려진 슬리퍼리 엘름 바크 등의 영양제를 급여하는 것도 방법이다. 이 상품은 국내에는 유통되고 있지 않아 직구를 해야한다.', sysdate);
insert into d_board values (d_board_seq.nextval, '재생성 빈혈', '빈혈은 혈액 내 산소 공급 역할을 적혈구가 줄어들어 저산소증이 나타나는 증세를 말한다. 골수가 새로운 적혈구를 만들어낼 수 있음에도 이보다 더 빠르게 감소하여 산소 공급이 원활하지 못 하면 재생성빈혈이라고 한다.', '- 기생충 혹은 벼룩에 의한 감염
- 심한 상처
- 비스테로이드항생제 사용
- 암

● 용혈성 빈혈의 경우 아래 원인 가능
- 독성물질, 아세트아미노펜 (해열·진통제), 양파 등 섭취
- 박테리아 혹은 바이러스성 염증
- 혈액 내 기생충
- 적혈구 파괴
- 자가면역 질환', '- 비타민, 미네랄 섭취
- 심각한 경우 수혈 (평상시 혈액형을 알고 있으면 긴급할 때 도움이 됨)
- 용혈성 빈혈의 경우 수혈을 하여도 적혈구가 파괴되기 때문에 항생제 및 약물요법을 병행하여 파괴 속도를 늦춰야함', '- 심각한 경우 정기적인 수혈 필요
- 회복기간동안 절대안정
- 빈혈증세가 나타났을 때는 매일 혈액검사를 하여 RBC(적혈구수)의 추이를 모니터링
이후, 진단에 따라 모니터링 주기를 늘릴 수 있음
- 급성 출혈의 경우에는 즉시 내원하여 진단', sysdate);
insert into d_board values (d_board_seq.nextval, '심장사상충', '많은 견주들이 예방약을 먹이고 있는 심장사상충은 모기에 의해 감염되는 기생충의 한 종류이다. 사상충은 작은 실처럼 생긴 것이 그 특징이다. 심장사상충에 걸렸을 때 그 치명도는 유충의 개수, 언제부터 감염이 된 것인지 및 강아지가 보이는 반응이 어떤 것인지에 따라 달라진다.
심하지 않은 경우 예후가 나쁜 편은 아니나, 심한 경우 제 때 치료를 받지 않으면 합병증이 생길 수 있다. 또한, 적시 치료가 이뤄지지 않으면 치명도가 매우 높아진다. 예방약만 먹인다면 예방이 가능하다.', '- 모기에 물려서 전염성 있는 사상충에 감염
- 감염 후 사상충이 폐혈관 및 심장까지 이동 (약 6개월 소요)
- 심장 및 폐 내에서 성장 (약 12인치까지 자랄 수 있음)
- 체내 사상충은 또다시 자충 (마이크로필라리아; 필라리아의 유충)을 생산', '- 심장사상충 투약치료는 심장에 무리가 많이 가기 때문에 컨디션 안정화를 위한 처치 선행
- 사상충을 죽이기 위한 주사제 투여 (투약횟수는 단계에 따라 달라질 수 있음)
- 주사제 투약 시 병원에 입원하여 부작용 및 신체 컨디션에 대해 모니터링을 해야할 수 있음
- 진행단계가 4기 (카발신드롬)인 경우, 심장사상충을 직접 제거하는 외과적 수술 후 주사제 치료 진행', '- 절대안정 (필요 시 케이지 안에서 지내야할 수 있음)
- 울혈성심부전에서 회복중에 잇는 경우 나트륨 제한 식단 권장
- 치료가 끝난 후 6개월 뒤 재검사 실시
- 심장사상충 완치 후라고 하더라도 재감염될 수 있기 때문에 철저히 예방해야 함

● 예방법
- 정기적 예방약 투약 (복용량 엄수)
예방약을 통해 100% 예방되는 것이 아니기 때문에 정기적 키트검사 진행', sysdate);
insert into d_board values (d_board_seq.nextval, '급성신부전', '신장은 노폐물을 배설시키고 전해질 대사 등 생체의 환경을 유지시키는 기능을 한다. 신부전이란 혈압, 혈당, 혈액양, 혈액 속 수분 구성, pH수치, 적혈구 형성도및 특정 호르몬의 균형이 깨짐으로써 신장 기능이 저하되는 것을 의미한다.
급성신부전은 외부적 요인 혹은 다른 질병에 의해서 신장의 기능이 수시간 혹은 수일동안 저하되는 것을 의미한다. 제 때 치료가 이뤄지지 않으면 생명을 위협할 수 있는 심각한 질환이다. 여기서 치료란 신부전 자체에 대한 치료가 아니라 전해질 불균형 상태를 교정하는 등 증상을 치료하는 것을 의미한다. 기능개선이 어려운 만성신부전과 달리 치료 후 신장의 부분적 기능 개선이 이뤄지기도 한다.', '- 박테리아 감염
- 독성물질 섭취 (농약, 부동액, 사람약, 독성식물 등)
- 수분 부족
- 기타 질병(열사병, 심장질환 등)에 의해 혈류량 비정상적 감소
- 수술중 혈압관리 실패로 혈류량 비정상적 감소
- 요로 질환 (요로결석, 종양 등 비뇨기계 폐쇄)', '- 입원 후 필요한 약물투여를 통하여 아래 목적의 대증요법(질병에 대한 치료가 아닌 증세완화를 위한 치료) 진행
- 전해질 불균형 상태 교정
- 수액처치로 탈수증세 완화
- 소변의 양, 농축도 회복
- 활성탄 등을 통해 독성물질이 노폐물로 배출되도록 유도', '', sysdate);
insert into d_board values (d_board_seq.nextval, '유선종양', '유선종양이란 중성화를 하지 않은 암컷 강아지에게 흔하게 나타나는 질환이다. 종양 중에서도 발병 빈도가 가장 높다. 양성이거나 악성일 수 있으며, 발병 시기는 평균 10.5세이다. 첫 발정기 전에 중성화를 진행한다면 발병확률이 매우 낮아진다. 매우 드물지만 수컷에게 발병하는 경우도 있다.', '호르몬, 유전적 영향으로 추측되나 정확한 원인은 밝혀지지 않음', '수술: 종양 제거 (나이 , 종양의 종류, 전이정도 등에 따라 종양만 제거하거나 림프절 및 유선까지 모두 제거하기도 함) 및 중성화 수술 병행
항암치료: 조직 및 뼈까지 이미 퍼진 경우에는 부분적 종양 제거와 함께 항암치료 병행 가능하나 수술처럼 효과적이지는 못 함', '- 암컷 강아지를 키운다면 복부, 가슴을 자주 만지며 종양 확인
- 종양의 악성여부, 진행정도, 전이여부에 따라 달라지기 때문에 암컷 강아지 견주라면 유선종양 의심 초기에 꼭 검사 및 치료를 받아야 함
- 치료 후에도 정기적인 X-ray 검사로 재발여부 확인해야 함
- 양성이라고 하더라도 림프절에 전이가 되었다면 예후가 좋지 않을 수 있으므로 더욱 신경써야 함

● 예방법
- 암컷 강아지라면 첫 발정기 전 중성화
- 첫 발정기를 지나면 발병률이 8%로 상승
- 두 번째 발정기를 지나면 발병률은 26%로 상승
- 2.5세 이후에 중성화 하는 것은 예방효과가 미미함', sysdate);
insert into d_board values (d_board_seq.nextval, '치은염 / 치주염', '강아지 치아 및 잇몸에 음식 찌꺼기와 박테리아가 쌓이면 치태, 치석이 생긴다. 이것이 제 때 제거되지 않으면 잇몸 속으로 세균이 쌓여 잇몸에 염증이 생기는데 이를 치은염이라고 한다. 제때 강아지 치은염 치료가 이뤄지지 않으면 치아 뿌리 끝에 염증이 생기는 치주염, 구강과 비강에 구멍이 생기는 구비강누공 등 기타 잇몸질환을 야기한다. 또한, 염증이 기타 장기에까지 퍼질 수 있으므로 예방 및 적시 치료가 중요하다.', '- 박테리아 (연쇄상구균, 방선균)
- 덧니가 있거나 그루밍을 자주 하는 경우 염증위험도 높아짐
- 영양부족', '1단계: 치석제거 (스케일링), 양치, 불소 처방 등
2~3단계: 잇몸과 치아 사이 공간 닦기, 조직재생을 위한 항생제 효능의 젤 바르기
4단계: 치아수복술(조직재생술), 뼈이식(임플란트), 발치', '- 양치질을 통한 구강관리
- 이빨과 잇몸을 수시로 보면서 필요 시 오랄 케어 젤 바르기
- 정기적인 치과검진', sysdate);
insert into d_board values (d_board_seq.nextval, '만성신부전', '신장은 노폐물을 배설시키고 전해질 대사 등 생체의 환경을 유지시키는 기능을 한다. 신부전이란 혈압, 혈당, 혈액양, 혈액 속 수분 구성, pH수치, 적혈구 형성도및 특정 호르몬의 균형이 깨짐으로써 신장 기능이 저하되는 것을 의미한다. 급성신부전과 달리, 만성신부전은 천천히 신장기능이 나빠져 회복이 어렵다.', '- 신장질병
- 요로폐색(요관의 막힘)
- 림프종
- 진성 당뇨병
- 유전요인', '', '● 예방법
- 평소에 충분한 물 섭취
- 유전력이 있는 경우 정기적인 진단 필요
- 신장에 부담이 되는 고단백, 고열량 음식 제한 (육류와 같이 인, 요소, 암모니아가 생성되는 음식 주의)
- 신장 영양제 급여', sysdate);
insert into d_board values (d_board_seq.nextval, '고관절이형성증', '고관절이형성증이란 대퇴부 (넓적다리, 허벅지) 고관절이 기형적으로 형성, 발달되는 것을 말한다. 주로 대형견에게 자주 발병한다. 이 질환에 걸리면 점진적으로 관절이 약화되고, 결국에는 관절이 제 역할을 하지 못 하게 된다. 어렸을 때 (4개월령 이후)부터 이형성 증상이 나타나거나, 퇴행성 관절염에 의해 나이가 든 후에도 발병할 수 있다.', '- 유전적 요인 (주로 대형견이 해당)
- 급격한 체중 증가, 비만
- 영양불균형 (특히, 성장기 칼슘 과다섭취 시 골격이 급격히 성장하며 고관절이형성 발병)', '- 개의 크기, 나이, 질병의 심각성, 관절염 정도 등을 보고 수술을 할 수도 있음
- 어린 강아지의 경우, 수술을 통해 절구관절을 맞추기도 함
- 성견이고 심각한 관절염 동반의 경우, 인공관절 수술
- 경제적 이유로 인공관절 수술이 불가능하다면 통증제거 목적으로 관절의 상완골을 제거하는 수술을 하기도 함 (반흔조직이 관절 역할 대신하게 됨)
- 심각하지 않다면, 체중관리, 처방식으로 고통을 줄이며 추이를 살펴보게 됨
- 염증, 진통 완화를 위한 약 처방', '- 정기적 X-ray 검진
- 무리가 가지 않을 적당한 산책
- 칼로리 제한식 급여로 엄격한 체중관리
- 주기적 수영으로 관절 강화
- 하루 2회 15분간 온찜질
- 최대 10분 엉덩이 고관절 부분 손가락으로 둥글게 마사지 (단, 싫어하는 반응 보이면 즉시 중단)
- 통증이 심한 경우 진통제 투약
- 춥고 습한 날씨 피하기
- 카페트 혹은 매트 깔아주기
- 관절질환용 침대 사용 (메모리폼, 라텍스 등)
- 높은 곳에 올라야 한다면 카페트가 깔린 경사로 설치 (계단 피하기)

●예방법
- 적정 체중 유지
- 꾸준한 운동
- 관절영양제 급여
- 주기적 수영으로 관절 강화', sysdate);
insert into d_board values (d_board_seq.nextval, '파보 바이러스', '생후 6주~6개월까지의 어린 강아지에 많이 나타나는 바이러스. 강아지를 키우는 사람들은 익히 알고 있을 정도로 전염성과 치명도가 높다. 특히, 강아지가 환경이 좋지 않은 곳에서 자란 경우 파보 바이러스에 걸릴 수 있다. 치사율이 높은 질병이므로 유의해야 한다. 어린 강아지를 입양하는 경우 청결한 환경 하에서 자랐는지 혹은 지내고 있는지를 확인하는 것이 중요하다.', '- 감염된 동물과 직접 접촉
- 바이러스가 서식하고 있던 다른 동물의 분변을 접촉하여 간접 감염
- 분변을 통해 외부로 나온 바이러스가 다른 매개체로 옮겨져 간접 감염', '', '● 예방법
- 예방접종 필수
- 예방접종 미완료 시 산책 삼가
- 파보 바이러스 감염 구역으로 의심되는 곳은 토사물 및 분변 등을 청소하고 표백제 소독', sysdate);
insert into d_board values (d_board_seq.nextval, '구강종양', '구강종양 이란 입안(입술, 혀, 잇몸, 구강 내 림프조직 등)에 생기는 종양을 의미한다. 특히, 노견에게 자주 발생한다. 모든 강아지 구강종양 경우가 악성(암)인 것은 아니지만 초기에 치료하지 않으면 악성이 되어 다른 신체기관으로 전이되어 치명적이다. 구강종양은 흑색종, 유두종 (사마귀), 뼈에 발생하는 골육종, 섬유육종, 편평세포상피암종이 있다. 이 중 흑색종이 가장 많은 비율을 차지한다.', '정확한 원인은 아직 밝혀지지 않았지만 수의학계에서 위험요인으로 꼽히는 요소는 아래와 같음

- 간접흡연
- 치아 혹은 치주질환 (염증)
- 진드기 목걸이 착용
- 면역반응이 취약한 경우 구강 유두종바이러스 (양성 종양) 에 취약함', '- 양성종양의 경우, 수술과 방사선 치료법이 높은 성공률을 보임
- 악성종양(암)의 경우 수술을 통해 제거
- 후기단계의 악성종양(암)의 경우 수술, 항암화학요법, 방사선 치료법을 병행. 치료율은 종양의 종류, 위치, 전이 여부에 따라 상이', '- 진통완화를 위한 진통제 투약
- 수술 후에는 죽 형태의 식단, 증상에 따라 주사기로 밥을 급여해야 함
- 종양이 다른 기관으로 전이되지 않는지 수시로 체크 (림프조직, 턱, 코, 눈 등)

● 예방법
- 정기적인 구강검사 및 염증 치료
- 간접흡연 금지
- 진드기목걸이 사용 금지', sysdate);
insert into d_board values (d_board_seq.nextval, '신장결석', '강아지 신장결석이란 소변 내 물질이 침착되어 돌과 같은 형태를 이루게 되는 것을 의미하며, 암컷 강아지에게 자주 발병한다. 특히, 이 질병은 극심한 통증을 동반하는 요관결석 및 만성 신부전을 유발할 수 있어 적시 치료가 중요하다.', '- 혈액 및 소변 내 칼슘 증가
- 소변 내 결석 형성 물질의 삼투압 증가
- 알칼리성 소변 야기 식단
- 미네랄 영양제 과다복용
- 지속적인 요로감염 (스투르바이트 결석 야기)', '- 심각한 경우 제거술을 받을 수 있지만 영구 신장 손상 위험이 있음
- 지속적 약물치료를 통해 결석의 크기를 작게 만듦
- 충분한 수분 섭취를 통한 자연 배출 (가능성 낮음)
- 수압추진법 (결석을 방광으로 밀어 넣는 치료법)
- 체외 충격파 쇄석술 (돌에 충격파를 쏘아 돌을 쪼개어 몸 밖으로 배출)', '- 재발 방지를 위한 정기 검사 (복부 X-ray, 초음파, 소변검사)
- 식이조절 (처방식)
- 충분한 수분 섭취를 통해 소변 희석을 유발하여 결석 추가 생성을 방지', sysdate);
insert into d_board values (d_board_seq.nextval, '비강종양', '비강종양이란 코 안에 생기는 종양으로, 코막힘을 야기하고, 주변 뼈와 조직을 공격한다. 강아지와 고양이 모두에게 발생할 수 있는 질병으로, 강아지에게는 선종, 고양이에게는 림프종의 형태가 흔하다. 일반적으로 전이되는 신체기관은 림프절과 폐이다.', '- 간접흡연
- 유전적 영향
- 환경오염
- 발암물질에 대한 노출 (살충제 등 각종 화학물질)
- 방부제 혹은 인공착색료 함유 사료/간식 섭취
위 사항은 가능성이 있는 원인으로 꼽히는 것들이며, 이외 다양한 요인이 있을 수 있다.', '● 긴급처치법
- 긴급상황
호흡곤란, 지속적 신경계 증상 (발작/경련 5분 이상), 기절
다량의 출혈, 지속적 구토/설사, 고통스럽게 울부짖음
- 긴급처치법
경련에 우선 대처하고 병원에 내원. 내원 시 경련 횟수와 지속시간 말할 것
고개를 옆으로 젖혀 숨을 쉴 수 있도록 하기
머리나 몸을 부딪히지 않도록 주변에 푹신한 쿠션/담요 깔기
일부러 동물의 위치를 바꾸지 말되, 꼭 필요하다면 발을 잡아당겨 옮길 것
안정시키기 위해서 손으로 감싸주거나 안아주되 물릴 수 있으므로 입 주변에는 손대지 말 것
심한 경련이 멈추지 않는다면 눈을 감기고 눈꺼풀 지그시 눌러 안정화 시켜보기

● 치료법
- 방사선 치료
- 항암화학치료
- 수술적 요법
단, 비강은 중요한 신체기관 (눈, 뇌 등)가 가깝기 때문에 수술의 위험도가 높음. 이에 따라, 종양이 매우 작은 크기의 경우 등 제한적일 때만 수술이 행해짐', '- 초기 발견 시 적절한 치료 및 관리를 행하여 치료되거나, 수 년동안 무탈하게 연명하는 경우도 많이 있음
- 종양이 손 쓸 수 없는 정도라고 하더라도, 각 증세에 대한 적합한 약을 복용하며 고통을 덜어주는 것도 중요
- 몸상태와 관련 증세에 대해 매일 꼼꼼하게 체크 및 기록하여 평소와 다른 신호가 보인다면 내원 및 알맞은 대처하기', sysdate);
insert into d_board values (d_board_seq.nextval, '알레르기', '강아지의 면역체계는 사람처럼 알레르기 항체인 면역글로불린을 생성한다. 강아지는 꽃가루, 벼룩 알레르기와 같은 계절성 알레르기와 특정 음식 (주로 단백질)에 대한 알레르기를 보인다. 전체 강아지의 10%가 음식 알레르기를, 이 중 30%가 계절성 알레르기를 겪는다고 한다. 이처럼 알레르기는 강아지에게 흔하게 나타난다.
흔하지는 않지만, 심한 경우 알러지 쇼크라고도 불리는 아나필락시스 반응 (짧은 시간에 여러 신체장기가 알레르기 반응을 보이며 생명을 위협)을 보이기도 하기 때문에 관련 증세에 대해 알고 대처하는 것이 중요하다.', '● 음식 알레르기
- 유전적 요인
- 환경적 요인 (예를 들어, 생후 수 주간 면역체계가 구축 되는데 어린 시절 항생제 치료 시 위장 내부 변화로 향후 알레르기 반응도 증가)
- 알레르기 유발 가능 재료: 닭, 소, 양, 돼지, 토끼, 유제품, 계란, 옥수수, 대두(콩), 밀 등

● 계절성 알레르기
- 먼지, 집먼지에 노출
- 꽃가루, 잔디, 진드기에 노출', '- 알레르기 검사를 통하여 알레르기 반응을 보이는 음식/진드기 등에 대한 종류 검출
- 항히스티민제나 증상완화를 위한 스테로이드, 염증 치료를 위한 항생제 처방 가능
- 피부 염증 완화를 위한 오메가3 함유 어유 등 처방 가능', '● 음식 알레르기
- 모든 알레르기 유발 가능 단백질원 제한
- 가수분해 사료 (면역체계가 반응하지 않도록 단백질원이 작게 분해) 급여
- 대체 단백질 (사슴, 오리, 물고기, 캥거루 등) 기반 식사 급여
- 유산균이 풍부한 식사 급여
- 성장기 경우 항생제 사용 금지

● 계절성 알레르기
- 생활공간 먼지, 벼룩 제거
- 진드기가 있을만한 공간에서 잔디에 가까이 가지 못 하게 하기
- 잔디공간 산책 후 목욕을 통해 박테리아 제거
- 진드기에 물리지 않도록 정기적인 외부기생충 약 바르기', sysdate);
insert into d_board values (d_board_seq.nextval, '간경변증', '강아지 간경변증이란 염증으로 인해 간세포가 파괴되어 재생결절* 및 간의 섬유화가 진행되어 간 순환계에 구조적 변형이 생기는 증상을 의미한다. 결국, 간이 비대해지고 간기능이 저하된다. 간경변증이 증상으로 나타났을 때는 이미 간이 상당부분 손상된 단계이며, 간 기능도가 20% 미만으로 떨어지게 되면 생존하기 어렵다.
*재생결절: 세포조직의 괴사 후 남아있는 간세포군이 재생하면서 작은 덩어리가 만들어지는 증상', '- 만성적 간 손상
- 만성적 염증성장질환
- 지속적인 약 복용 혹은 음식을 통한 독성물질 중독 (항경련제, 기생충약, 곰팡이염 치료용 아졸 의약품, 항생제, 비스테로이드 항염증제 등)
- 감염증 (바이러스, 박테리아, 곰팡이성 감염 등)
- 만성적으로 담관(쓸개관)이 막히는 경우', '- 식욕이 있다면 통원치료, 식욕부진의 경우 입원 및 수액처치 (영양 및 전해질, 필요 시 비타민B 공급)
- 장액종 (조직 중 혈청이 종양처럼 쌓임) 이 있을 시 제거 및 나트륨제한식단 실시
- 혈액 내 암모니아 증가로 신경학적 증상을 유발하는 간성뇌증 신호가 있는 경우 단백질 제한식 실시
- 정상적 알부민 수치 유지를 위한 처치', '- 주기적인 혈액검사를 통해 혈청담즙산 등 모니터링
- 체중변화, 복부 팽창 여부 확인

● 예방법
- 간이 약한 편이라면 간에 무리가 갈 수 있는 약, 영양제, 식단 제한적 실시
- 지병으로 지속적 약 복용이 필요한 경우 간에 미치는 영향, 권장 복용량/기간에 대해 수의사와 상의
- 주기적 혈액검사를 통하여 간 수치에 적신호가 없는지 확인', sysdate);
insert into d_board values (d_board_seq.nextval, '광견병', '광견병 바이러스는 여우, 너구리, 박쥐처럼 야생에서 생활하는 동물 체내에 주로 존재한다. 하지만 꼭 야생동물이 아닌, 집에서 기르는 강아지와 고양이도 광견병 바이러스를 가지고 있을 수 있다. 강아지 광견병 은 사람에게도 치명적이기에 예방법과 긴급 처치법을 알아두는 것이 좋다
강아지 광견병은 바이러스에 감염된 야생동물과 접촉하는 과정에서 감염되며, 전 세계적으로 광견병을 전파시키는 가장 큰 원인은 집에서 기르는 강아지이다.

● 광견병 안전 지역
- 호주
- 아이슬란드
- 아일랜드
- 뉴질랜드
- 스웨덴
- 노르웨이 등

● 광견병 특징
- 약 3주~8주이나 잠복기를 가지나, 변동성이 큼
- 감염부위가 뇌 또는 신경조직에 가까울수록 빠르게 발병
- 광견병이 의심되는 강아지는 즉시 격리 후 수의사와 상담

● 사람이 물렸을 경우
물린 부위를 즉시 물과 비누로 씻어내고 소독

● 신속히 의사 진단 필요
광견병에 대한 면역글로불린과 기타 백신 접종', '- 광견병 바이러스에 감염된 야생 동물과 접촉
- 광견병에 걸린 다른 강아지에게 물리거나 타액이 닿음
- 광견병에 감염된 강아지의 장기를 이식받음', '- 생후 12주~16주 사이에 예방접종 (이후 매년 추가 접종 필요)
- 광견병은 치료가 불가능
- 광견병 진단을 받는 즉시 안락사가 원칙 (예방접종이 매우 중요)', '', sysdate);
insert into d_board values (d_board_seq.nextval, '외이염', '강아지들이 자주 앓는 질환 중 하나로, 외이도(귓바퀴에서 고막에 이르는 통로)에 염증이 생겨 가려움증을 유발하는 질환을 강아지 외이염 이라고 부른다.
곰팡이균이나 기생충같은 외부 감염으로 생기기도 하지만 알레르기성 피부병과 함께 발생하기도 한다.
귓속이 습해지면 곰팡이와 각종 세균들이 증식하기에 좋은 환경이 되므로, 습하지 않도록 귓속 털을 제거하고 주기적으로 청소해주는 것이 예방책이다.', '- 세균 증식성 외이염과 곰팡이균에 의한 외이염
- 귀 진드기
- 기생충
- 외부 이물질에 의함 감염
- 알레르기성 피부병', '● 예방법
- 강아지 전용 귀 세정제와 부드러운 솜으로 주기적인 귀 청소 필요
- 목욕시, 귀에 물이 들어가지않도록 주의
- 외부 활동이 많은 경우, 외부 기생충 예방접종 필수
- 음식 알러지 반응에 민감한 강아지는 음식 섭취에 주의', '', sysdate);
insert into d_board values (d_board_seq.nextval, '피부병', '강아지 피부병 은 많은 반려인들이 한 번쯤 겪어봤을 법한 질환이다. 알러지, 아토피, 2차 세균 감염, 내분비 질환 등 여러가지 원인으로 피부 가려움, 습진 등의 증상을 보인다.
강아지 피부병 은 재발의 위험이 크기 때문에 예방이 매우 중요하다.', '- 선천적인 알레르기성 피부염
- 갑상선 기능저하증과 같은 내분비질환
- 모낭충으로 인한 감염
- 습한 환경으로 인한 곰팡이성 감염
- 피부 종양', '- 원인에 따른 약 처방
- 호르몬 질환인 경우, 호르몬 수치 주기적으로 체크
- 약용 샴푸 처방
- 종양인 경우에는 종양 제거 수술
- 심하지 않은 경우 관리에 비타민E 오일, 오트밀 등도 증상완화에 효과적', '- 고온 다습한 환경에 오래 방치하지 않아야함
- 주기적으로 털을 빗어주고 강아지 전용 샴푸로 목욕을 시켜야함
- 선척적으로 음식 알러지가 있는 경우, 음식 급여에 신경써야함
- 호르몬과 다른 질병으로 피부병 증상이 나타날 수 있기에 주기적으로 정기 검사 권장', sysdate);
insert into d_board values (d_board_seq.nextval, '쿠싱 증후군', '혈액 내에 코티솔(Cortisol)이라는 호르몬이 과잉 상태인 경우이다. 코티솔은 콩팥의 부신 피질에서 분비되는 스트레스 호르몬인데, 면역체계와 스트레스에 반응하여 신체에 필요한 에너지를 공급해 주는 역할을 한다. 강아지 쿠싱 증후군은 특히 노령견에게 잘 나타나는 내분비 질환이다.', '- 뇌하수체 또는 콩팥 부신에 이상
- 스테로이드 장기 투여로 호르몬 조절에 문제
- 노령성으로 인한 호르몬 균형 무너짐', '- 뇌하수체 이상이 원인인 경우에는 부신의 당질 코르티코이드 생산을 억제하는 약물 투여
- 부신에 종양이 있는 경우, 종양 제거 수술 진행
- 스테로이드 장기 투여로 인한 경우, 복용량을 조절 또는 중단', '', sysdate);

select*from d_board;



-- 견종, 코드
insert into d_species values('mpoo','미니어쳐푸들');
insert into d_species values('tpoo','토이푸들');
insert into d_species values('coca','코카스파니엘');
insert into d_species values('schn','슈나우저');
insert into d_species values('retri','리트리버');
insert into d_species values('bteri','보스턴테리어');
insert into d_species values('husky','시베리안허스키');
insert into d_species values('yteri','요크셔테리어');
insert into d_species values('dachs','닥스훈트');
insert into d_species values('welsh','웰시코기');
insert into d_species values('chihua','치와와');
insert into d_species values('beagle','비글');
insert into d_species values('peki','페키니즈');
insert into d_species values('bhound','바셋하운드');
insert into d_species values('pome','포메라니안');
insert into d_species values('malte','말티즈');
insert into d_species values('bichon','비숑프리제');
insert into d_species values('shitzu','시츄');
insert into d_species values('hava','하바네즈');
insert into d_species values('samo','사모예드');
insert into d_species values('dober','도베르만핀셔');
insert into d_species values('schaf','저먼셰퍼드');
insert into d_species values('oeshee','올드잉글리쉬쉽독');
insert into d_species values('lassa','라사압소');
insert into d_species values('point','포인터');
insert into d_species values('britt','브리트니');
insert into d_species values('esspan','잉글리쉬스프링거스파니엘');
insert into d_species values('esett','잉글리시세터');
insert into d_species values('buteri','불테리어');
insert into d_species values('cteri','케언테리어');
insert into d_species values('stber','세인트버나드');
insert into d_species values('bull','불독');
insert into d_species values('masti','마스티프');
insert into d_species values('rott','로트와일러');
insert into d_species values('pug','퍼그');
insert into d_species values('pitbul','핏불');
insert into d_species values('amalam','알래스칸맬러뮤트');
insert into d_species values('weima','와이마라너');
insert into d_species values('gpoint','저먼숏헤어포인터');
insert into d_species values('dalma','달마시안');
insert into d_species values('brteri','블랙러시안테리어');
insert into d_species values('great','그레이트데인');
insert into d_species values('akita','아키타');
insert into d_species values('shar','샤페이');

-- admin 계정
insert into d_member values(d_member_seq.nextval, 'admin', 'admin', '운영자', 'S', sysdate);
commit;

select*from d_member;

-- 취약 견종
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'schn');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'bteri');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'husky');
insert into d_weaken values(d_weaken_seq.nextval, '백내장', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'dachs');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'welsh');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'chihua');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'beagle');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'peki');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'shitzu');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '디스크(추간판탈출증)', 'bhound');
insert into d_weaken values(d_weaken_seq.nextval, '슬개골 탈구', 'pome');
insert into d_weaken values(d_weaken_seq.nextval, '슬개골 탈구', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '슬개골 탈구', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '췌장염', 'schn');
insert into d_weaken values(d_weaken_seq.nextval, '췌장염', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'dachs');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'malte');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'schn');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'bichon');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'shitzu');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'hava');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'peki');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'samo');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'dober');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'schaf');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'oeshee');
insert into d_weaken values(d_weaken_seq.nextval, '간문맥단락(PSS)', 'lassa');
insert into d_weaken values(d_weaken_seq.nextval, '기관지 협착증', 'pome');
insert into d_weaken values(d_weaken_seq.nextval, '기관지 협착증', 'chihua');
insert into d_weaken values(d_weaken_seq.nextval, '기관지 협착증', 'shitzu');
insert into d_weaken values(d_weaken_seq.nextval, '기관지 협착증', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '기관지 협착증', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'malte');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'schaf');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'point');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'britt');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'esspan');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'esett');
insert into d_weaken values(d_weaken_seq.nextval, '유선종양', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '치은염 / 치주염', 'chihua');
insert into d_weaken values(d_weaken_seq.nextval, '치은염 / 치주염', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '치은염 / 치주염', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '치은염 / 치주염', 'pome');
insert into d_weaken values(d_weaken_seq.nextval, '치은염 / 치주염', 'shitzu');
insert into d_weaken values(d_weaken_seq.nextval, '만성신부전', 'samo');
insert into d_weaken values(d_weaken_seq.nextval, '만성신부전', 'buteri');
insert into d_weaken values(d_weaken_seq.nextval, '만성신부전', 'cteri');
insert into d_weaken values(d_weaken_seq.nextval, '만성신부전', 'schaf');
insert into d_weaken values(d_weaken_seq.nextval, '만성신부전', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'stber');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'schaf');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'bull');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'masti');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'rott');
insert into d_weaken values(d_weaken_seq.nextval, '고관절이형성증', 'pug');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'rott');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'dober');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'pitbul');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'schaf');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'esspan');
insert into d_weaken values(d_weaken_seq.nextval, '파보 바이러스', 'amalam');
insert into d_weaken values(d_weaken_seq.nextval, '구강종양', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '구강종양', 'weima');
insert into d_weaken values(d_weaken_seq.nextval, '구강종양', 'stber');
insert into d_weaken values(d_weaken_seq.nextval, '구강종양', 'gpoint');
insert into d_weaken values(d_weaken_seq.nextval, '구강종양', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'lassa');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'yteri');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'dalma');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'brteri');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'bull');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'schn');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'shitzu');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'welsh');
insert into d_weaken values(d_weaken_seq.nextval, '신장결석', 'peki');
insert into d_weaken values(d_weaken_seq.nextval, '간경변증', 'dober');
insert into d_weaken values(d_weaken_seq.nextval, '간경변증', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '간경변증', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '외이염', 'malte');
insert into d_weaken values(d_weaken_seq.nextval, '외이염', 'coca');
insert into d_weaken values(d_weaken_seq.nextval, '외이염', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'dober');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'retri');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'great');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'akita');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'dalma');
insert into d_weaken values(d_weaken_seq.nextval, '피부병', 'shar');
insert into d_weaken values(d_weaken_seq.nextval, '쿠싱 증후군', 'mpoo');
insert into d_weaken values(d_weaken_seq.nextval, '쿠싱 증후군', 'tpoo');
insert into d_weaken values(d_weaken_seq.nextval, '쿠싱 증후군', 'bteri');
insert into d_weaken values(d_weaken_seq.nextval, '쿠싱 증후군', 'dachs');
insert into d_weaken values(d_weaken_seq.nextval, '쿠싱 증후군', 'pome');

-- 증상목록
insert into d_symptom values(d_symptom_seq.nextval, '링웜', '털탈모');
insert into d_symptom values(d_symptom_seq.nextval, '링웜', '털모질악화');
insert into d_symptom values(d_symptom_seq.nextval, '링웜', '발톱이상');
insert into d_symptom values(d_symptom_seq.nextval, '감기', '눈물많음');
insert into d_symptom values(d_symptom_seq.nextval, '감기', '콧물');
insert into d_symptom values(d_symptom_seq.nextval, '감기', '기침');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '무뇨');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '입악취');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '포도중독', '발작');
insert into d_symptom values(d_symptom_seq.nextval, '백내장', '눈불투명');
insert into d_symptom values(d_symptom_seq.nextval, '백내장', '눈시력저하');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '변검은색');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '변비');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '복부팽만');
insert into d_symptom values(d_symptom_seq.nextval, '장폐색', '입침');
insert into d_symptom values(d_symptom_seq.nextval, '디스크(추간판탈출증)', '걸음이상');
insert into d_symptom values(d_symptom_seq.nextval, '디스크(추간판탈출증)', '경련');
insert into d_symptom values(d_symptom_seq.nextval, '슬개골 탈구', '걸음이상');
insert into d_symptom values(d_symptom_seq.nextval, '슬개골 탈구', '무릎소리');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '열');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '췌장염', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '혈뇨');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '눈시력저하');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '경련');
insert into d_symptom values(d_symptom_seq.nextval, '간문맥단락(PSS)', '입침');
insert into d_symptom values(d_symptom_seq.nextval, '기관지 협착증', '기침');
insert into d_symptom values(d_symptom_seq.nextval, '기관지 협착증', '발작');
insert into d_symptom values(d_symptom_seq.nextval, '기관지 협착증', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '재생성 빈혈', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '재생성 빈혈', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '재생성 빈혈', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '재생성 빈혈', '창백');
insert into d_symptom values(d_symptom_seq.nextval, '재생성 빈혈', '수면증가');
insert into d_symptom values(d_symptom_seq.nextval, '심장사상충', '기침');
insert into d_symptom values(d_symptom_seq.nextval, '심장사상충', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '심장사상충', '호흡곤란');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '무뇨');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '수면감소');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '음수량증가');
insert into d_symptom values(d_symptom_seq.nextval, '급성신부전', '음수량감소');
insert into d_symptom values(d_symptom_seq.nextval, '유선종양', '종양');
insert into d_symptom values(d_symptom_seq.nextval, '치은염 / 치주염', '입악취');
insert into d_symptom values(d_symptom_seq.nextval, '치은염 / 치주염', '입잇몸붉음');
insert into d_symptom values(d_symptom_seq.nextval, '치은염 / 치주염', '입치석증가');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '혈뇨');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '눈시력저하');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '변비');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '발작');
insert into d_symptom values(d_symptom_seq.nextval, '만성신부전', '음수량증가');
insert into d_symptom values(d_symptom_seq.nextval, '쿠싱 증후군', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '쿠싱 증후군', '복부팽만');
insert into d_symptom values(d_symptom_seq.nextval, '쿠싱 증후군', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '쿠싱 증후군', '호흡곤란');
insert into d_symptom values(d_symptom_seq.nextval, '피부병', '피부몸긁기');
insert into d_symptom values(d_symptom_seq.nextval, '피부병', '피부핥기');
insert into d_symptom values(d_symptom_seq.nextval, '피부병', '피부습진');
insert into d_symptom values(d_symptom_seq.nextval, '외이염', '귀악취');
insert into d_symptom values(d_symptom_seq.nextval, '외이염', '피부몸긁기');
insert into d_symptom values(d_symptom_seq.nextval, '외이염', '귀지');
insert into d_symptom values(d_symptom_seq.nextval, '광견병', '열');
insert into d_symptom values(d_symptom_seq.nextval, '광견병', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '광견병', '수면감소');
insert into d_symptom values(d_symptom_seq.nextval, '광견병', '공격성증가');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '다뇨');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '눈시력저하');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '변검은색');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '변비');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '간경변증', '발작');
insert into d_symptom values(d_symptom_seq.nextval, '알레르기', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '알레르기', '피부몸긁기');
insert into d_symptom values(d_symptom_seq.nextval, '알레르기', '털탈모');
insert into d_symptom values(d_symptom_seq.nextval, '알레르기', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '눈시력저하');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '콧물');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '변설사');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '비강종양', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '신장결석', '열');
insert into d_symptom values(d_symptom_seq.nextval, '신장결석', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '신장결석', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '신장결석', '무뇨');
insert into d_symptom values(d_symptom_seq.nextval, '신장결석', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '구강종양', '체중감소');
insert into d_symptom values(d_symptom_seq.nextval, '구강종양', '입악취');
insert into d_symptom values(d_symptom_seq.nextval, '구강종양', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '구강종양', '입잇몸붉음');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '열');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '구토');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '혈뇨');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '식욕감소');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '무기력');
insert into d_symptom values(d_symptom_seq.nextval, '파보 바이러스', '과호흡');
insert into d_symptom values(d_symptom_seq.nextval, '고관절이형성증', '걸음이상');
insert into d_symptom values(d_symptom_seq.nextval, '고관절이형성증', '입침');
commit;


select*from d_weaken;
select*from d_symptom;

alter table d_board add(bfname CLOB);







alter table d_board add(bfname CLOB);

update d_board set bfname='링웜.jpg' where dname='링웜';

update d_board set bfname='감기.jpg' where dname='감기';

update d_board set bfname='포도중독.jpg' where dname='포도중독';

update d_board set bfname='백내장.jpg' where dname='백내장';

update d_board set bfname='장폐색.jpg' where dname='장폐색';

update d_board set bfname='디스크.jpg' where dname='디스크(추간판탈출증)';

update d_board set bfname='슬개골탈구.jpg' where dname='슬개골 탈구';

update d_board set bfname='췌장염.jpg' where dname='췌장염';

update d_board set bfname='간문맥단락.jpg' where dname='간문맥단락(PSS)';

update d_board set bfname='기관지협착증.jpg' where dname='기관지 협착증';

update d_board set bfname='재생성빈혈.jpg' where dname='재생성 빈혈';

update d_board set bfname='심장사상충.jpg' where dname='심장사상충';

update d_board set bfname='급성신부전.jpg' where dname='급성신부전';

update d_board set bfname='유선종양.jpg' where dname='유선종양';

update d_board set bfname='치은염치주염.jpg' where dname='치은염 / 치주염';

update d_board set bfname='만성신부전.jpg' where dname='만성신부전';

update d_board set bfname='고관절이형성증.jpg' where dname='고관절이형성증';

update d_board set bfname='파보바이러스.jpg' where dname='파보 바이러스';

update d_board set bfname='구강종양.jpg' where dname='구강종양';

update d_board set bfname='신장결석.jpg' where dname='신장결석';

update d_board set bfname='비강종양.jpg' where dname='비강종양';

update d_board set bfname='알레르기.jpg' where dname='알레르기';

update d_board set bfname='간경변증.jpg' where dname='간경변증';

update d_board set bfname='광견병.jpg' where dname='광견병';

update d_board set bfname='외이염.jpg' where dname='외이염';

update d_board set bfname='피부병.jpg' where dname='피부병';

update d_board set bfname='쿠싱증후군.jpg' where dname='쿠싱 증후군';

commit;



select sym.dname, sym.syname, wea.spcode from d_symptom sym, d_weaken wea where sym.dname=wea.dname;




create table hosInfo(
   id int primary key,
   title varchar2(100),
   link varchar2(100),
   category varchar2(100),
   telephone  varchar2(100),
   address varchar2(100),
   roadAddress varchar2(100),
   mapx int,
   mapy int);
create sequence SEQ_HOSINFO_PK
start with 1
increment by 1;
commit;
Insert Into Hosinfo Values(1,'24시글로리 동물병원', 'https://www.instagram.com/glory.vet','건강,의료>동물병원','02-855-8575',
'서울특별시 금천구 독산동 145-13','서울특별시 금천구 시흥대로 483',302750,542205);
Insert Into Hosinfo Values(2,'사직삼보 동물병원', 'http://blog.naver.com/chairman82','건강,의료>동물병원','051-504-1813',
'부산광역시 동래구 사직동 28-15','부산광역시 동래구 사직북로63번길 11',496505,289497);
Insert Into Hosinfo Values(3,'파주 24시 동물병원', 'http://blog.naver.com/paju24ahcafe','건강,의료>동물병원','031-944-5575',
'경기도 파주시 목동동 941-1 삼성프라자 2층 201호','경기도 파주시 교하로 87',288584,570234);
Insert Into Hosinfo Values(4,'24시 지구촌 동물 메디컬센터', 'http://blog.naver.com/dr_jiguchon','건강,의료>동물병원','02-869-7582',
'서울특별시 구로구 구로동 505-17','서울특별시 구로구 구로중앙로31길 30 유성빌딩',301589,544660);
Insert Into Hosinfo Values(5,'강북 24시글로리 동물의료센터', 'http://www.namc.co.kr','건강,의료>동물병원','02-984-0075',
'서울특별시 성북구 길음동 1163','서울특별시 성북구 삼양로4길 3',314059,556398);
Insert Into Hosinfo Values(6,'부산동물 메디컬센터', 'http://www.busanamc.com/','건강,의료>동물병원','051-868-7591',
'부산광역시 연제구 거제동 2-7','부산광역시 연제구 거제대로 278',498371,288535);
Insert Into Hosinfo Values(7,'아산동물 의료센터', 'http://blog.naver.com/asanimal','건강,의료>동물병원','041-425-0075',
'충청남도 아산시 용화동 1581','충청남도 아산시 용화고길79번길 21 1, 2F','311961','464143');
Insert Into Hosinfo Values(8,'청라호수 동물 메디컬센터', 'http://www.lakeamc.com/','건강,의료>동물병원','032-568-0022',
'인천광역시 서구 청라동 105-62','인천광역시 서구 푸른로7번길 2',279116,547848);
Insert Into Hosinfo Values(9,'N동물 의효센터 노원점', 'http://www.namc.co.kr/','건강,의료>동물병원','02-919-0075',
'서울특별시 노원구 상계동  371-2 1층 노원 24시 N동물의료센터','서울특별시 노원구 노원로 456 백암빌딩',317849,562103);
Insert Into Hosinfo Values(10,'마음반려동물 의료원', '','건강,의료>동물병원','031-211-0975',
'경기도 수원시 팔달구 인계동 979-2','경기도 수원시 팔달구 경수대로 461',313849,518846);
Insert Into Hosinfo Values(11,'24시 용동물 병원', 'https://www.instagram.com/glory.vet','건강,의료>동물병원','055-286-7511',
'경상남도 창원시 성산구 상남동 34-2','경상남도 창원시 성산구 단정로 10',462237,291512);
Insert Into Hosinfo Values(12,'김포 24시 호수동물 의료센터', 'http://blog.naver.com/gimpoamc','건강,의료>동물병원','031-8049-0203',
'경기도 김포시 운양동 1296-3','경기도 김포시 김포한강11로 328 더리버뷰 212호',284212,562280);
Insert Into Hosinfo Values(13,'24시 올리몰스 동물 메디컬센터', 'http://allimals.pet-mate.net/','건강,의료>동물병원','063-275-7979',
'전라북도 전주시 덕진구 송천동1가 809-3','전라북도 전주시 덕진구 송천중앙로 213',320829,363258);
Insert Into Hosinfo Values(14,'24시 미래 동물 의료센터', 'http://mirae24.co.kr','건강,의료>동물병원','031-705-2475',
'경기도 성남시 분당구 서현동 80-1','경기도 성남시 분당구 서현로255번길 1',323130,531766);
Insert Into Hosinfo Values(15,'24시 동물병원', '','건강,의료>동물병원','042-487-0839',
'대전광역시 서구 탄방동 1028','대전광역시 서구 문정로 138 서림빌딩',345865,416376);
Insert Into Hosinfo Values(16,'24시 소래 동물 병원', 'http://blog.naver.com/sorae-ah','건강,의료>동물병원','032-438-3227',
'인천광역시 남동구 논현동 751-1','인천광역시 남동구 소래역남로16번길 75 더타워상가 C동 1층 24시소래동물병원',288050,533866);
Insert Into Hosinfo Values(17,'24시 배곧 스마트 동물병원', 'http://blog.naver.com/smartah16283','건강,의료>동물병원','031-432-1224',
'경기도 시흥시 정왕동  2513-1','경기도 시흥시 배곧3로 86 센터프라자2 2층 213호',287670,530553);
Insert Into Hosinfo Values(18,'24시 굿케어 동물 의료센터', 'http://blog.naver.com/goodcare24','건강,의료>동물병원','02-6956-2475',
'서울특별시 관악구 봉천동 1673-21','서울특별시 관악구 남부순환로 1861 1층 103호',307941, 542502);
Insert Into Hosinfo Values(19,'24시 유니온 동물 메디컬센터', '','건강,의료>동물병원','055-288-5055',
'경상남도 창원시 의창구 도계동 465-3','경상남도 창원시 의창구 원이대로56번길 2-35 2층',457764,295657);

Insert Into Hosinfo Values(20,'해운대 24시 동물 의료원 ', 'https://blog.naver.com/volants','건강,의료>동물병원','051-702-7582',
'부산광역시 해운대구 좌동 1476-1','부산광역시 해운대구 양운로 45 베르나움상가 1층 101호',507386, 286042);

Insert Into Hosinfo Values(21,'24시 예스 동물병원', 'blog.naver.com/numberhana','건강,의료>동물병원','02-534-3475',
'서울특별시 서초구 반포1동 20-45 반포자이프라자 133호','서울특별시 서초구 잠원로 24 반포자이주구중심상가1동',312642,545452);

Insert Into Hosinfo Values(22,'해운대 24시 동물 의료원 ', 'https://blog.naver.com/volants','건강,의료>동물병원','051-702-7582',
'부산광역시 해운대구 좌동 1476-1','부산광역시 해운대구 양운로 45 베르나움상가 1층 101호',507386, 286042);

Insert Into Hosinfo Values(23,'24시 애니 동물병원', '','건강,의료>동물병원','02-926-8275',
'서울특별시 성북구 보문동5가 3-1','서울특별시 성북구 보문로 99 영광빌딩',313626,554001);

Insert Into Hosinfo Values(24,'24시 솔 동물 의료센터', 'http://www.solamc.co.kr/','건강,의료>동물병원','031-345-4500',
'경기도 군포시 산본동 1147','경기도 군포시 고산로 529 금강2단지주상복합아파트 상가 1층',304763,529247);

Insert Into Hosinfo Values(25,'24시 더클래스 동물메디컬센터', 'http://blog.naver.com/theclassamc','건강,의료>동물병원','031-713-7975',
'경기도 성남시 분당구 정자동 169-1','경기도 성남시 분당구 성남대로 275 아데나팰리스 A동 상가 1층 101호',321145,529143);

Insert Into Hosinfo Values(26,'바른펫 동물 의료센터', '','건강,의료>동물병원','02-903-7582',
'서울특별시 강북구 수유동 39-10','서울특별시 강북구 노해로 65',313907,560356);

Insert Into Hosinfo Values(27,'비타민 동물 메디컬센터', 'http://vitaminamc.com','건강,의료>동물병원','031-465-7582',
'경기도 안양시 만안구 안양동 847-10','경기도 안양시 만안구 안양로 374-1',304305,534182);

Insert Into Hosinfo Values(28,'탑스 동물 메디컬센터', 'http://tamc.kr','건강,의료>동물병원','053-637-7501',
'대구광역시 달서구 상인동 72-1','대구광역시 달서구 월곡로 291 상인중석타운',448686,357881);

Insert Into Hosinfo Values(29,'IU 24시 동물 메디컬센터', '','건강,의료>동물병원','02-926-8275',
'경기도 의정부시 의정부동 94-6','경기도 의정부시 태평로 52',316606,570937);






commit;

select*From d_member;

select*from d_board;
select*from d_disease;
select*from d_species;
select*from d_symptom;
select*from d_weaken;



