<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PETMILY Member SiugUp</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="http://code.jquery.com/jquery.js"></script><!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요) -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script><!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들 포함하기 -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화 (https://github.com/scottjehl/Respond) -->
    </head>
    <body>
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            <!-- 본문 들어가는 부분 -->
            <form class="form-horizontal" role="form" method="post" action="/member/memberSignUp">
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">약관동의
제1조 (목적)
본 약관은 펫밀리 주식회사(이하 '회사')가 펫밀리 사이트(이하 ‘사이트’)를 통하여 인터넷상에서 제공하는 서비스(이하 ‘서비스’)를 이용하는 고객 (이하 '고객')간의 권리와 의무 및 책임 등 기타 제반사항을 규정함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
가. '회원'이라 함은 이 약관에 동의하고 회원가입을 통하여 이용자ID(고유번호)와 비밀번호를 발급받은 자로서, 회사가 제공하는 서비스를 이용할 수 있는 이용자를 말합니다.
나. '이용자ID'라 함은 회원의 식별 및 서비스 이용을 위하여 회원의 신청에 따라 회사가 회원 별로 부여하는 고유한 문자와 숫자의 조합을 말합니다.
다. '비밀번호'라 함은 이용자ID로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정하여 회사에 등록한 고유의 문자와 숫자의 조합을 말합니다.
라. ‘로그인’이라 함은 이용자ID와 비밀번호를 통하여 서비스 신청 및 사용 중 서비스의 세부정보를 확인할 수 있는 행위를 말합니다.
마. '탈퇴'라 함은 회원이 서비스 이용을 해지하는 것을 말합니다.
바. ‘휴면ID’ 라 함은 회사에서 정한 일정 기간 동안 사이트 접속 및 미 로그인 시 고객의 정보 악용방지를 위하여 보호되는 계정입니다.
이 약관에서 사용하는 용어 중 제1항에서 정하지 아니한 것은 관계 법령 및 서비스 별 안내에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.

제3조 (이용약관의 효력 및 개정)
1. 이 약관은 사이트를 통해 온라인으로 공시하고 회원의 동의로 효력을 발생합니다. 본 약관의 공시는 사이트에 게시하는 방법으로 합니다.
2. 회사는 합리적인 사유가 발생할 경우 관련 법령에 위배되지 않는 범위 내에서 약관을 개정할 수 있습니다. 개정된 약관은 사이트를 통해 공지하거나 기타의 방법으로 회원에게 공지함으로써 그 효력이 발생하며, 이용자의 권리 또는 의무에 관한 변경은 최소한 7일 전에 공지합니다.
3. 변경된 약관에 대한 정보를 알지 못해 발생하는 회원의 피해는 회사에서 책임지지 않습니다.
4. 회원은 변경된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원 탈퇴를 요청할 수 있습니다. 단, 이의가 있음에도 불구하고 제 2항에서 정한 바에 따른 회사의 고지가 있은 후 30일 이내에 이용계약을 하지 않은 회원은 변경된 약관에 동의한 것으로 간주합니다. 

제4조 (약관외 준칙)
회사는 필요한 경우 기타 유ㆍ무료 서비스 내의 운영원칙 또는 개별약관(이하 '서비스 별 약관'이라 합니다)를 정할 수 있으며, 본 약관과 서비스 별 약관의 내용이 상충되는 경우에는 서비스 별 약관의 내용을 우선하여 적용합니다.

제5조 (회원 가입)
1. 이 약관의 동의는 회원가입 당시 절차 상의 이용약관 및 개인정보처리방침에 동의한다는 의사표시와 함께 회사가 요청하는 정보를 제공하여 회원가입 신청을 완료함으로써 이루어집니다. 
2. 회원으로 가입하여 서비스를 이용하고자 하는 이용자는 회사에서 요청하는 제반 정보(개인정보처리방침 제 1항 ‘수집하는 개인정보의 항목’)를 제공하여야 합니다.
3. 회원은 반드시 회원 본인의 정보를 제공하여야만 서비스를 이용할 수 있으며, 타인의 정보를 도용하거나 허위의 정보를 등록하는 등 본인의 정확한 정보를 등록하지 않은 회원은 서비스 이용과 관련하여 아무런 권리를 주장할 수 없으며, 관계 법령에 따라 처벌 받을 수 있습니다. 또한 제 3자에게 야기한 손해를 배상할 책임이 있으며, 회사는 허위의 정보를 기재한 회원의 서비스 이용 자격을 제한할 수 있습니다.

제6조 (개인정보의 보호 및 사용)
1. 회사는 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 관해서는 관계 법령 및 회사의 개인정보처리방침에 정한 바에 의합니다. 단, 회원은 이용자ID 및 비밀번호 등이 타인에게 노출되지 않도록 철저히 관리해야 하며 회사는 회원의 귀책사유로 인해 노출된 정보에 대해서 책임을 지지 않습니다.
2. 회사는 고객이 제공하는 개인정보를 본 서비스 이외의 목적을 위하여 사용할 수 없습니다.
3. 회사는 고객이 제공한 개인정보를 고객의 사전 동의 없이 제 3자에게 제공할 수 없습니다. 단, 다음 각 호에 해당하는 경우에는 예외로 합니다.
가. 도메인이름 검색서비스를 제공하는 경우
나. 전기통신기본법 등 관계법령에 의하여 국가기관의 요청이나 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우
다. 통계작성, 홍보자료, 시장조사를 위하여 필요한 경우로서 특정 고객임을 식별할 수 없는 형태로 제공되는 경우

제7조 (회원에 대한 통지 및 정보제공)
1. 회사가 회원에 대하여 통지하는 경우 회원이 회사에 등록한 전자우편 주소나 휴대전화번호, 유선전화번호로 할 수 있습니다.
2. 회사는 불특정다수 회원에게 통지를 해야 할 경우 펫밀리 공지게시판을 통해 7일 이상 게시함으로써 개별 통지에 갈음할 수 있습니다.
3. 회사는 회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보에 대해서 전자우편이나 서신, 우편, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다.
4. 회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 관련 법령에 따라 추가적인 개인 정보를 수집할 수 있습니다.

제8조(서비스의 이용 시간 및 중단)
1. 서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 단, 회사는 시스템 정기점검, 증설 및 교체를 위해 회사가 정한 날이나 시간에 서비스를 일시 중단할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시 중단은 펫밀리를 통해 사전에 사이트를 통하여 공지합니다.
2. 회사는 긴급한 시스템 점검, 증설 및 교체, 설비의 장애, 서비스 이용의 폭주, 국가비상사태, 정전 등 부득이한 사유가 발생한 경우 사전 예고 없이 일시적으로 서비스의 전부 또는 일부를 중단할 수 있습니다.
3. 회사는 서비스 개편 등 서비스 운영 상 필요한 경우 전부 또는 일부 서비스의 제공을 중단할 수 있으며 회원에게 사전 예고 또는 사후 통보 합니다.

제9조 (회사의 의무)
1. 회사는 본 약관이 정하는 바에 따라 지속적이고 안정적인 서비스를 제공하기 위해서 노력합니다.
2. 회사는 회원의 개인정보 보호를 위해 보안 시스템을 구축하며 개인정보 처리방침을 공시하고 준수합니다.
3. 회사는 공정하고 건전한 운영을 위해 최선을 다하고 지속적인 연구개발을 통하여 양질의 서비스를 제공함으로써 고객만족을 극대화하여 인터넷 사업 발전에 기여합니다.
4. 회사는 회원으로부터 제기되는 의견이나 불편사항이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 통해 즉시 처리하여야 합니다. 다만, 신속한 처리가 곤란한 경우는 회원에게 그 사유와 처리일정을 통보하여야 합니다.

제10조 (회원의 의무)
1. 회원은 회원가입 신청 또는 회원정보 변경 시 모든 사항을 사실에 근거하여 본인의 실제 정보로 작성하여야 하며, 허위 또는 타인의 정보를 등록할 경우 이와 관련된 모든 권리를 주장할 수 없습니다.
2. 회원은 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 공지사항 등 회사가 공지하는 사항 및 관계 법령을 준수하여야 하며, 기타 회사의 업무에 방해가 되는 행위, 회사의 명예를 손상시키는 행위, 타인에게 피해를 주는 행위를 해서는 안됩니다.
3. 회원은 주소, 연락처, 전자우편 주소 등 회원의 이용정보가 변경된 경우에 해당 절차를 거쳐 이를 회사에 즉시 알려야 합니다.
4. 회원은 회원ID, 비밀번호 등이 타인에게 노출되지 않도록 철저한 관리 책임이 있습니다.
5. 회원은 회원ID, 비밀번호 등이 도난 당하거나 제 3자가 사용하고 있음을 인지한 경우에는 즉시 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.
6. 회사는 회원의 상기 제1항, 제 2항, 제 3항, 제 4항, 제 5항을 위반하여 회원에게 발생한 손해에 대하여 어떠한 책임도 부담하지 않습니다.

제11조 (회원 탈퇴 및 자격 상실)
1. 회원은 회사에 언제든지 회원 탈퇴를 요청할 수 있으며 회사는 요청을 받은 즉시 해당 회원의 회원 탈퇴를 위한 절차를 밟아 펫밀리 개인정보처리방침에 따라 회원 등록을 말소합니다.
2. 회사의 모든 서비스에서 이용중인 서비스의 기간이 남아있는 회원이 탈퇴 요청하였을 경우 회원탈퇴로 인한 서비스의 중지 또는 피해는 회원탈퇴 이용자에게 있습니다.
3. 회원이 서비스 이용에 있어서 본 약관 제 10조 내용을 위반하거나, 다음 각 호의 사유에 해당하는 경우 회사는 직권으로 회원자격 상실 및 회원탈퇴의 조치를 할 수 있습니다.
가. 다른 사람의 명의를 사용하여 가입 신청한 경우
나. 신청 시 필수 작성 사항을 허위로 기재한 경우
다. 관계법령의 위반을 목적으로 신청하거나 그러한 행위를 하는 경우
라. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청하거나 그러한 행위를 하는 경우
마. 다른 사람의 회사 서비스 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
바. 관계 법령 위배와 본 약관이 금지하는 행위를 하는 회원 경우
4. 회사가 직권으로 회원탈퇴 처리를 하고자 하는 경우에는 말소 전에 회원에게 소명의 기회를 부여합니다.

제12조 (휴면ID 관리)
1. 회사는 서비스 미 이용 및 1년 이상 사이트 로그인을 하지 않은 경우 해당 이용자ID 및 개인정보를 휴면ID로 별도 관리합니다.
2. 회사는 휴면ID 대상 회원에게 전환 30일 전에 고지의 의무를 다 해야 하며, 휴면ID를 이용하여 사이트 로그인 시도 시 회원가입 당시 요청한 제반 정보 확인 후 바로 이용자 ID로 전환이 이루어집니다.

제13조 (손해배상)
1. 회사는 서비스에서 무료로 제공하는 서비스의 이용과 관련하여 개인정보보호정책에서 정하는 내용에 해당하지 않는 사항에 대하여 어떠한 손해도 책임을 지지 않습니다.

제14조 (면책조항)
1. 회사는 천재지변, 전쟁, 기간통신사업자의 서비스 중지 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임 지지 않습니다.
2. 회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.
3. 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 정확성, 신뢰성 등 그 내용에 관하여는 어떠한 책임을 부담하지 아니하고, 회원은 자기의 책임아래 서비스를 이용하며, 서비스를 이용하여 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 서비스 이용과 관련하여 어떠한 불이익이 발생하더라도 이에 대한 모든 책임은 회원에게 있습니다.
4. 회사가 제공하는 정보와 자료는 거래의 목적으로 이용될 수 없습니다. 따라서 본 서비스의 정보와 자료 등에 근거한 거래는 전적으로 회원자신의 책임과 판단아래 수행되는 것이며, 회사는 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
5. 회사는 회원이 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않으며, 서비스를 이용하면서 얻은 자료로 인한 손해에 대하여 책임을 지지 않습니다.
6. 회사는 회원의 게시물을 등록 전에 사전심사 하거나 상시적으로 게시물의 내용을 확인 또는 검토하여야 할 의무가 없으며, 그 결과에 대한 책임을 지지 아니합니다.

제15조 (약관의 해석 및 관할법원)
1. 본 약관에 명시되지 않은 사항은 관계 법령과 상관례에 따릅니다.
2. 회사의 개별 유ㆍ무료 서비스 이용 회원의 경우 당해 서비스와 관련하여서는 회사가 별도로 정한 약관 및 정책에 따릅니다.
3. 회원과 회사 사이에 발생한 분쟁에 대해 소송이 제기되는 경우 관할 법원은 서울중앙지방법원으로 합니다.

제16조 (재판관할 및 준거법)
1. 이 약관에 명시되지 않은 사항은 전기통신사업법 등 대한민국의 관계법령과 상관습에 따릅니다.
2. 회사의 정액 서비스 회원 및 기타 유료 서비스 이용 회원의 경우 당해 서비스와 관련하여서는 회사가 별도로 정한 약관 및 정책에 따릅니다.
3. 이 약관 및 서비스의 이용과 관련된 분쟁에 관한 소송은 회사의 본사 소재지를 관할하는 법원에 제기합니다.


부칙 (시행일)
본 약관은 2018년 4월 02일부터 적용하고, 2016년 5월 2일부터 시행되던 종전의 약관은 본 약관으로 대체합니다.

                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="N">
                                동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">개인정보의 항목 및 수집방법
엔에이치엔펫밀리 주식회사(이하 ‘회사’)는 다음과 같은 원칙에 의하여 이용자의 개인정보를 수집, 이용 및 관리하고 있고, 이와 관련하여 정보통신서비스 제공자가 준수하여야 하는 대한민국의 관계법령 및 개인정보보호 규정, 가이드라인을 준수하고 있습니다.

회사는 개인정보 처리방침을 통하여, 이용자의 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 회사가 어떠한 조치를 취하는지 알려드립니다.
회사의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다.

1. 개인정보의 수집 및 이용 목적
2. 수집하는 개인정보 항목 및 방법
3. 개인정보 보유ㆍ이용기간 및 파기절차 및 방법
4. 개인정보의 제공
5. 개인정보의 처리위탁
6. 이용자 및 법정대리인의 권리와 그 행사방법
7. 개인정보 자동수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항
8. 개인정보의 기술적/관리적 보호대책
9. 개인정보 전담조직 운영
10. 기타 개인정보 처리에 관한 방침
11. 고지의무


1. 개인정보의 수집 및 이용 목적
회사는 다음의 목적을 위하여 개인정보를 수집 및 이용합니다.
가. 회원관리
이용자 식별 및 본인확인, 가입의사 확인, 불량회원 부정이용 방지, 만 14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리, 공지사항 전달, 회원탈퇴 의사확인, 법정대리인 권리행사 시 본인확인
나. 서비스 이용 및 이용에 따른 요금정산
콘텐츠 제공, 구매 및 요금결제, 물품배송 또는 청구서 발송, 요금추심, SMS 발신번호 등록/관리, 쇼핑몰 솔루션 세팅, 서비스 및 교육의 신청/접수/안내
다. 마케팅 및 광고활용
신규 서비스 개발 및 특화, 이벤트 등 광고성 정보전달, 인구통계학적 특성에 따른 서비스 제공 및 광고게재, 접속 빈도파악 또는 회원의 서비스 이용 통계
라. 기타
서비스 유효성 확인, 원활한 양질의 서비스 및 교육 콘텐츠 제공

2. 수집하는 개인정보 항목 및 방법
회사는 위 제1항과 같은 ‘개인정보의 수집 및 이용목적’을 위하여 아래와 같은 원칙에 의하여 개인정보를 수집하고 있습니다.
가. 개인정보 수집항목
해당 서비스의 본질적 기능을 수행하기 위한 정보는 필수정보로서 수집하며 이용자가 그 정보를 회사에 제공하지 않는 경우 서비스 이용에 제한이 가해질 수 있지만, 선택정보 즉, 보다 특화된 서비스를 제공하기 위해 추가 수집되는 정보의 경우에는 이를 입력하지 않은 경우에도 서비스 이용제한은 없습니다.
서비스 이용에 따라 다음과 같은 정보를 수집합니다.
<회원가입 시 공통정보> 이름, 로그인ID, 비밀번호, 휴대전화번호, 생년월일, 성별, 이메일, 접속로그, 접속IP정보
<서비스 이용 시> 본인확인 값(CI: 암호화된 개인식별정보, DI: 중복확인정보), 결제기록, 계좌번호, 연락처
<서비스 환불 시, 대금 지급/정산 시> 계좌정보 (거래은행명, 계좌번호, 거래자 성명)
<사업자회원 추가정보> 사업자등록번호, 상호명, 대표자명, 사업장소재지, 업태, 종목, 사업장 전화번호, 사업장 팩스번호, 사업자 인증정보(사업자등록증 사본, 동업계약서 사본)
<리셀러 회원> 주민등록번호(수당 지급을 위한 원천징수 영수증 발급용도)
<SMS 발신번호 등록> 대리인 이름, 주소, 전화번호, 휴대폰 번호, 소속부서
<쇼핑몰 서비스 상담, 신청> 관리자/FTP/DB 로그인 ID/PW
<마케팅 대행 신청> 광고주/관리자/PG사 로그인 ID/PW

다만, 이용자의 사상, 신념, 과거의 병력 등 개인의 권리, 이익이나 사생활을 뚜렷하게 침해할 우려가 있는 민감정보는 수집하지 않습니다.
나. 수집 방법
회사가 이용자의 개인정보를 수집하는 방법으로는 홈페이지(회원가입, 상담게시판), 서면양식, 경품 행사 응모, 제휴사로부터의 제공, 생성정보 수집 툴 등을 통해 수집합니다.
다. 이용자의 동의
회사는 이용자의 개인정보를 수집할 때, 위 수집항목의 내용을 변경할 때 사전에 해당 사실을 이용자에게 알리고 동의를 구합니다.

다만, 이용자가 요구하는 서비스를 제공하는 과정에서 이를 이행하기 위하여 필요한 개인정보로서 경제적, 기술적 사유로 통상적인 동의를 받는 것이 뚜렷하게 곤란한 경우, 서비스 제공에 따른 요금정산을 위하여 필요한 경우, 기타 정보통신망법 또는 다른 법률에 특별한 규정이 있는 경우에는 동의를 받지 않고 이용자의 개인정보를 수집할 수 있습니다.

4. 개인정보의 제공
회사는 이용자들의 개인정보를 “1. 개인정보의 수집 및 이용 목적"에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
- 이용자가 사전에 동의한 경우

- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

5. 개인정보의 처리위탁
회사는 경영 효율성의 제고, 서비스 품질 향상 등을 위하여 회사 업무의 일부를 외부 전문업체 등 제3자에게 용역을 주어 수행하며 그 과정에서 제3자에게 이용자의 개인정보를 수집, 보관, 처리, 이용, 제공, 관리, 파기 등을 할 수 있도록 업무를 처리위탁하게 되는데, 그에 따른 수탁자 및 위탁업무의 내용은 다음과 같습니다.


회사는 위와 같은 개인정보의 수탁자 및 위탁업무의 내용 이외에 추가적으로 제 3자에게 개인정보를 처리위탁 해야 하는 경우에 사전에 이용자에게 개인정보 처리위탁을 받는 자(수탁자), 개인정보 처리위탁을 하는 업무의 내용에 대하여 이용자에게 공개하고 필요한 경우 그에 관한 동의를 받습니다. 또한 수탁자 및 위탁업무가 변경될 때에도 전술한 공개 또는 동의 절차 등의 조치를 취합니다.

6. 이용자 및 법정대리인의 권리와 그 행사방법
회사는 이용자 및 법정대리인의 권리를 다음과 같이 보호하고 있습니다.
가. 언제든지 자신의 개인정보를 조회하고 수정할 수 있습니다.
나. 언제든지 개인정보 제공에 관한 동의철회/회원가입 해지를 요청할 수 있습니다.
다. 만 14세 미만 아동의 법정대리인의 법령 상의 권리를 보장합니다. (아동의 개인정보에 대한 열람, 정정/삭제, 개인정보처리정지요구권)
라. 정확한 개인정보의 이용 및 제공을 위해 이용자가 개인정보 수정 진행 시 수정이 완료될 때까지 이용자의 개인정보는 이용되거나 제공되지 않습니다. 이미 제 3자에게 제공된 경우에는 지체 없이 제공받은 자에게 사실을 알려 수정이 이루어질 수 있도록 하겠습니다.

정보주체의 권리행사 방법은 아래와 같습니다.
가. 개인정보 열람 및 수정
회사 사이트(godo.co.kr) → 회원로그인 → 마이펫밀리 → 정보수정
나. 동의철회 및 회원가입 해지
동의철회 및 회원가입 해지의 대상은 회사의 서비스를 이용하지 않는 고객만 가능하며, 서비스 이용 고객은 서비스 이용 해지절차를 우선 진행한 후 아래의 절차로 진행합니다.
회사 사이트(godo.co.kr) → 회원로그인 → 마이펫밀리 → 본인인증 → 회원탈퇴
권리 행사는 정보주체 외에도 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 회사에서 요구하는 부가서류(본인확인 증빙자료 및 위임장 등)를 제출하여야 합니다.

7. 개인정보 자동수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항
회사는 이용자의 정보를 수시로 저장하고 찾아내어 보다 빠르고 편리한 웹사이트 사용을 지원하고, 맞춤형 서비스를 제공하기 위하여 ‘쿠키’와 ‘세션’을 운영합니다.
그 중 ‘쿠키’란 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에 보내는 작은 텍스트 파일로서 이용자의 컴퓨터에 저장되며, ‘세션’이란 웹사이트를 운영하는데 이용되는 서버가 이용자 로그인 시간 동안 이용자의 정보를 서버에 저장하는 것을 말합니다.
회사는 다음의 목적으로 ‘쿠키’와 ‘세션’을 운영하며, 사용자는 ‘쿠키’설치에 대한 선택권을 가지고 있습니다.
가. ‘쿠키’와 ‘세션’의 사용목적
‘쿠키’ 및 ‘세션’ 통해 이용자가 선호하는 설정 등을 저장하여 이용자에게 보다 빠른 웹 환경을 지원하며, 편리한
이용을 위해 서비스 개선에 활용합니다.
나. ‘쿠키’ 설정 거부방법
이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수도 있습니다.
다만 쿠키 설치를 거부할 경우 웹 사용이 불편해지며 로그인이 필요한 일부 서비스 이용에 어려움이 있을 수 있습니다.
- 설정방법
1) Internet Explorer의 경우: 웹 브라우저 상단의 도구 메뉴 > 인터넷 옵션 > 개인정보 > 설정
2) Chrome의 경우: 웹 브라우저 우측의 설정 메뉴 > 화면 하단의 고급 설정 표시 > 개인정보의 콘텐츠 설정 버튼 > 쿠키
다. ‘세션’의 설치/운영 및 거부
이용자는 세션 설치에 대한 선택권을 가지고 있지 않으며, 위탁업무를 포함하여 회사에서 제공하는 서비스 중 로그인이 필요한 경우 자동으로 회사운영 서버에서 세션을 생성하여 공통으로 사용됩니다.

8. 개인정보의 기술적/관리적 보호대책
회사는 이용자의 개인정보를 처리함에 있어 다음과 같은 노력을 다하고 있습니다.
가. 내부관리계획의 수립 및 시행
‘개인정보의 안전성 확보조치 기준' 및 '개인정보의 기술적?관리적 보호조치 기준'에 따라 내부관리계획을 수립 및 시행합니다.
나. 개인정보취급자 지정의 최소화 및 교육
개인정보취급자의 지정을 최소화하고 개인정보보호 교육을 시행하고 있습니다.
다. 개인정보에 대한 접근 제한
침입차단시스템과 탐지시스템을 이용하여 외부로부터의 무단접근을 통제하고 있습니다. 또한 개인정보처리시스템에 대한 접근권한 관리를 통하여 개인정보에 대한 접근을 통제하며, 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 최소 5년간 보관하고 있습니다.
라. 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록을 최소 2년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 관리하고 있습니다.
마. 개인정보의 암호화
이용자의 개인정보를 암호화된 통신구간(SSL)을 이용하여 전송하고, 비밀번호 등 중요정보는 복호화 불가능한 일방향 암호화되어 저장/관리되고 있습니다.
바. 해킹 등에 대비한 기술적 대책
해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.
사. 비인가자에 대한 출입 통제
개인정보를 보관하고 있는 개인정보처리시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

9. 개인정보 전담조직 운영
회사는 개인정보보호 전담 조직 운영을 통하여 개인정보 처리방침의 이행사항 및 담당자의 준수여부를 확인하고 있으며, 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.
<고객서비스담당 부서 : 고객만족실>
- 전화번호 : 1688-7662
- 이메일 : cs@godo.co.kr

<개인정보보호책임자 성명 : 문창재>
- 전화번호 : 1688-7662
- 이메일 : privacy1@godo.co.kr

또한 개인정보가 침해되어 이에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하셔서 도움을 받으실 수 있습니다.
- 개인정보침해신고센터 (privacy.kisa.or.kr / 국번없이 118)
- 개인정보 분쟁조정위원회 (www.kopico.go.kr / 국번없이 1833-6972)
- 대검찰청 사이버수사과 (www.spo.go.kr / 국번없이 1301)
- 경찰청 사이버안전국 (cyberbureau.police.go.kr / 국번없이 182)

10. 기타 개인정보 처리에 관한 방침
가. 이용자의 개인정보 관리 및 도용
이용자의 로그인 정보는 원칙적으로 이용자만이 사용하도록 되어 있습니다. 이용자 본인의 부주의로 ID, 비밀번호 등 개인정보의 유출, 타인의 사용으로 인하여 발생된 문제에 대해서 회사는 일체의 책임을 지지 않습니다. 또한 타인의 개인정보를 도용하여 회원 가입 또는 구매가 확인되었을 경우에는 이용계약이 일방적으로 해지될 수 있으며, 주민등록법에 의해 3년 이하의 징역 또는 1천만원 이하의 벌금이 부과될 수 있습니다.
나. 개인정보처리방침 적용범위
회사가 제공하는 부가적 서비스 중 별도의 회원가입이 필요한 서비스의 경우 및 회사의 사이트에 링크되어 있는 제휴 사이트 이용자의 개인정보를 수집하는 행위에 대해서는 본 개인정보 처리방침이 적용되지 않습니다.

11. 고지의무
본 개인정보 처리방침은 2020년 04월 13일에 제정되었으며 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지의 ‘공지사항’을 통해 고지할 것입니다.

                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked> 동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N"> 동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <!-- 회원가입 -->
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" name="id" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divName">
                    <label for="inputName" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" name="name" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" name="password" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" name="email" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="phoneNo" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                    </div>
                </div>
                <div class="form-group" id="divBirth">
                    <label for="inputBirth" class="col-lg-2 control-label">생년월일</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="birth" id="birth" data-rule-required="true" placeholder="생년월일" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divNickname">
                    <label for="inputNickname" class="col-lg-2 control-label">별명</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="nicknm" id="nickname" data-rule-required="true" placeholder="별명" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divAddress">
                    <label for="inputAddress" class="col-lg-2 control-label">주소</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="address" id="address" data-rule-required="true" placeholder="주소" maxlength="15">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="Y" checked> 동의합니다. <!-- name="emailReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="N"> 동의하지 않습니다. <!-- name="emailReceiveYn" -->
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="Y" checked> 동의합니다. <!-- name="smsReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="N"> 동의하지 않습니다. <!-- name="smsReceiveYn" -->
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                </div>
            </form>
        
        
        <script>
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
            
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                
                //검사하여 상태를 class에 적용
                $('#id').keyup(function(event){
                    
                    var divId = $('#divId');
                    
                    if($('#id').val()==""){
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                });
                
 				$('#name').keyup(function(event){
                    
                    var divName = $('#divName');
                    
                    if($('#name').val()==""){
                    	divName.removeClass("has-success");
                    	divName.addClass("has-error");
                    }else{
                    	divName.removeClass("has-error");
                    	divName.addClass("has-success");
                    }
                });
 
                $('#password').keyup(function(event){
                    
                    var divPassword = $('#divPassword');
                    
                    if($('#password').val()==""){
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                });
                
                $('#passwordCheck').keyup(function(event){
                    
                    var passwordCheck = $('#passwordCheck').val();
                    var password = $('#password').val();
                    var divPasswordCheck = $('#divPasswordCheck');
                    
                    if((passwordCheck=="") || (password!=passwordCheck)){
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                });
                
                $('#email').keyup(function(event){
                    
                	var divEmail = $('#divEmail');
                    
                    if($.trim($('#email').val())==""){
                    	divEmail.removeClass("has-success");
                    	divEmail.addClass("has-error");
                    }else{
                    	divEmail.removeClass("has-error");
                    	divEmail.addClass("has-success");
                    }
                });
                
				$('#phoneNumber').keyup(function(event){
                    
                    var divPhoneNumber = $('#divPhoneNumber');
                    
                    if($.trim($('#phoneNumber').val())==""){
                    	divPhoneNumber.removeClass("has-success");
                    	divPhoneNumber.addClass("has-error");
                    }else{
                    	divPhoneNumber.removeClass("has-error");
                    	divPhoneNumber.addClass("has-success");
                    }
                });
                
				$('#birth').keyup(function(event){
                    
                    var divBirth = $('#divBirth');
                    
                    if($.trim($('#birth').val())==""){
                    	divBirth.removeClass("has-success");
                    	divBirth.addClass("has-error");
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                });
                
                $('#nickname').keyup(function(event){
                    
                    var divNickname = $('#divNickname');
                    
                    if($.trim($('#nickname').val())==""){
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
                    }
                });
                
				$('#address').keyup(function(event){
                    
                    var divAddress = $('#divAddress');
                    
                    if($.trim($('#address').val())==""){
                    	divAddress.removeClass("has-success");
                    	divAddress.addClass("has-error");
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                });
                
				
                
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divPassword = $('#divPassword');
                    var divPasswordCheck = $('#divPasswordCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                    var divAddress = $('#divAddress');
                    
                    //회원가입약관
                    if($('#provisionYn:checked').val()=="N"){
                        modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                        modal.modal('show'); //모달 띄우기
                        
                        provision.removeClass("has-success");
                        provision.addClass("has-error");
                        $('#provisionYn').focus();
                        return false;
                    }else{
                        provision.removeClass("has-error");
                        provision.addClass("has-success");
                    }
                    
                    //개인정보취급방침
                    if($('#memberInfoYn:checked').val()=="N"){
                        modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        memberInfo.removeClass("has-success");
                        memberInfo.addClass("has-error");
                        $('#memberInfoYn').focus();
                        return false;
                    }else{
                        memberInfo.removeClass("has-error");
                        memberInfo.addClass("has-success");
                    }
                    
                    //아이디 검사
                    if($('#id').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                    
                    //패스워드 검사
                    if($('#password').val()==""){
                        modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                        $('#password').focus();
                        return false;
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                    
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
                    
                    //패스워드 확인
                    if($('#passwordCheck').val()==""){
                        modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //패스워드 비교
                    if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
                        modalContents.text("패스워드가 일치하지 않습니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //이메일
                    if($('#email').val()==""){
                        modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                        $('#email').focus();
                        return false;
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                    
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                  
                    //생년월일
                    if($('#birth').val()==""){
                        modalContents.text("생년월일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divBirth.removeClass("has-success");
                        divBirth.addClass("has-error");
                        $('#birth').focus();
                        return false;
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                  
                    //별명
                    if($('#nickname').val()==""){
                        modalContents.text("별명을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                        $('#nickname').focus();
                        return false;
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
                    }
                    
                    //주소
                    if($('#address').val()==""){
                        modalContents.text("주소를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divAddress.removeClass("has-success");
                        divAddress.addClass("has-error");
                        $('#address').focus();
                        return false;
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                    
                    
                    
                
                });
                
            });
            
        </script>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            
            <div>
                <p class="text-center">
                    <small><strong>업체명</strong></small><br>
                    <small>대표 : 정지운 ㆍ 주소 : 가산동 371-106 KR 서울특별시 금천구 가산디지털1로 181 W센터 3층 ㆍ 사업자등록번호 : 123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
                    <small>Copyrightⓒ petmily.com All rights reserved.</small>
                </p>
            </div>
            <!--// 푸터 들어가는 부분 -->
        </div>
    </body>
</html>