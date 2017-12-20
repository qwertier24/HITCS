/**
 * 
 */
$(function() {
	$("#get-douban-info").click(function() {
		var isbn = $("#ISBN").val();
		if (isbn == "") {
			alert("请填入ISBN");
			return;
		}
		$.ajax({
			url : "https://api.douban.com/v2/book/isbn/"+isbn,
			type : "GET",
			dataType : "jsonp",
			success : function(data) {
				if (data["code"] == 6000) {
					alert("ISBN无效，请重试");
					return;
				}
				$("#price").val(data["price"].replace(/[^0-9.]/g, ""));
				$("#title").val(data["title"]);
				var dateString = data["pubdate"].split("-");
				var date = new Date();
				if (dateString.length >= 1) {
					date.setYear(parseInt(dateString[0]));
				}
				if (dateString.length >= 2) {
					date.setMonth(parseInt(dateString[1]));
				} 
				if (dateString.length >= 3) {
					date.setDate(parseInt(dateString[2]));
				}
				$("#publishDate").data('daterangepicker').setStartDate(date);
				$("#publishDate").data('daterangepicker').setEndDate(date);
				$("#publisher").val(data["publisher"]);
			},
			error : function(data) {
				alert("未找到此ISBN对应书籍");
				return;
			}
		});
	});
	
	$.ajax({
		url : "getAuthorList.action",
		type : "GET",
		success : function(data) {
			$("#authorID").append('<option value="">请选择</option>');
			for (var i in data["authors"]) {
				var author = data["authors"][i];
				var elem = $("<option></option>").attr("value", author["authorID"]).html(author["Name"] + " <small>" + author["Age"] + " " + author["Country"] + "</small>");
				$("#authorID").append(elem);
				console.log(elem.html());
			}
			$("#authorID").select2({
				width: "100%"
			}); 
		}
	});
	
    $('#publishDate').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
		"locale" : {
			"format": "YYYY/MM/DD",
			applyLabel : '确认',
			cancelLabel : '取消',
			fromLabel : '从',
			toLabel : '到',
			weekLabel : 'W',
			customRangeLabel : 'Custom Range',
			daysOfWeek : [ "日", "一", "二", "三", "四", "五", "六" ],
			monthNames : [ "一月", "二月", "三月", "四月", "五月", "六月",
					"七月", "八月", "九月", "十月", "十一月", "十二月" ],
		}
    });
    
    
	$('#add-book-form').validator().on('submit', function (e) {
		if (e.isDefaultPrevented()) {
		} else {
			submit_modify_book_form(); 
			return false;
		}
	});
});
function submit_modify_book_form() {
    var dataPara = getFormJson($("#add-book-form"));
    dataPara["intention"] = "add";
	$.ajax({
		url : "/library/modifyBook.action",
		type : "POST",
		data : dataPara,
		success : function(data) {
			if (data["ok"] == true) {
				alert("添加成功！");
			} else {
				alert("添加失败，请重新检查输入！");
			}
		},
		error : function() {
			alert("添加失败，请重新检查输入！");
		}
	});
}
function getFormJson(node) {
    var o = {};
    node.find("input,select").each(function(){
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
}
