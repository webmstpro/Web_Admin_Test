$(function () {
    $.validator.setDefaults({
        onkeyup: false
        , onclick: false
        , onfocusout: false
        , showErrors: function (errorMap, errorList) {
            if (errorList.length < 1)
                return;
            alert(errorList[0].message);
        }
    });
});

// week Date
function GetDateWeek(jsonDate) {
    moment.lang('ko', {
        weekdays: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
        weekdaysShort: ["일", "월", "화", "수", "목", "금", "토"]
    });
    strDate = moment(jsonDate).format("dddd");
    return strDate;
}

function GetDate01(jsonDate) {
    strDate = moment(jsonDate).format("YYYY.MM.DD HH:mm:ss");
    return strDate;
}

function GetDate02(jsonDate) {
    strDate = moment(jsonDate).format("(MM/DD)HH:mm");
    return strDate;
}

// Commas
function nCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// div Enter Replace
function strEnter(str) {
    str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
    return str;
}

$(".top_left").click(function () {
    var sUrlReper = $("#Referer").val();
    location.href = sUrlReper;
});

$(".top_right").click(function () {
    Unity.closeWebView();
});



// 목록 페이징 
Paging = function (totalCnt, dataSize, pageSize, pageNo, token) {
    totalCnt = parseInt(totalCnt);  // 전체레코드수 
    dataSize = parseInt(dataSize);  // 페이지당 보여줄 데이타수 
    pageSize = parseInt(pageSize);  // 페이지 그룹 범위 1 2 3 5 6 7 8 9 10 
    pageNo = parseInt(pageNo);      // 현재페이지 
    var html = new Array();
    if (totalCnt == 0) { return ""; }

    // 페이지 카운트 
    var pageCnt = totalCnt % dataSize;

    if (pageCnt == 0) {
        pageCnt = parseInt(totalCnt / dataSize);
    } else {
        pageCnt = parseInt(totalCnt / dataSize) + 1;
    }

    var pRCnt = parseInt(pageNo / pageSize);
    if (pageNo % pageSize == 0) {
        pRCnt = parseInt(pageNo / pageSize) - 1;
    }

    //이전 화살표 
    if (pageNo > pageSize) {
        var s2;
        if (pageNo % pageSize == 0) {
            s2 = pageNo - pageSize;
        } else {
            s2 = pageNo - pageNo % pageSize;
        }

        html.push('<li><a href=javascript:goPaging_' + token + '(' + s2 + ')>«</a></li>');
    } else {
        html.push('<li class="disabled"><a href="#">«</a></li>');
    }

    //paging Bar 
    for (var index = pRCnt * pageSize + 1; index < (pRCnt + 1) * pageSize + 1; index++) {
        if (index == pageNo) {
            html.push('<li class="active"><a href="#">' + index + '<span class="sr-only">(current)</span></a></li>');
        } else {
            html.push('<li><a href="javascript:goPaging_' + token + '(' + index + ');">' + index + '</a></li>');
        } if (index == pageCnt) {
            break;
        }
    }

    pNCnt = (pRCnt + 1) * pageSize + 1;
    //다음 화살표 
    if (pageCnt > (pRCnt + 1) * pageSize) {
        html.push('<li><a href="javascript:goPaging_' + token + '(' + pNCnt + ');">»</a></li>');
    } else {
        html.push('<li class="disabled"><a href="javascript:void(0)">»</a></li>');
    }

    return html.join("");
};