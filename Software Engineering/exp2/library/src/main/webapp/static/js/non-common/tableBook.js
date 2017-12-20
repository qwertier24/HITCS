$(function() {
	var table = $("#tableBook").DataTable({
		"serverSide" : true,
		"ajax" : {
			"url" : "/library/dataTableBook.action",
			"type" : "POST",
			"data" : function(d) {
				return $.extend({}, d, {
					"intention" : "query"
				});
			}
		},
		"ordering" : false,
		"columns" : [ {
			"data" : "isbn"
		}, {
			"data" : "title"
		}, {
			"data" : "author",
			"render" : function(data, type, row) {
				return '<a href="javascript:void(0)" data-toggle="modal" data-target="#show-author-modal" style="color:red" id="button-author">' + data["name"] + '</a>';
			}
		}, {
			"data" : "publisher"
		}, {
			"data" : "publishDate"
		}, {
			"data" : "price"
		}, {
			"data" : null
		} ],
		"columnDefs" : [ {
			"targets" : -1,
			"data" : null,
			"defaultContent" : '<button id="button-modify" type="button" style="height:18px;width:50px;font-size:13px;vertical-align:middle;padding:0;" \
				class="btn btn-primary" data-toggle="modal" data-target="#modify-book-modal">修改</button>\
				<button id="button-delete" type="button" style="height:18px;width:50px;font-size:13px;vertical-align:middle;padding:0;" \
				class="btn btn-primary" data-toggle="modal" data-target="#delete-book-modal">删除</button>'
		} ],
		'dom' : '<"float_left"f>r<"float_right"l>tip',
		'language' : {
			'emptyTable' : '没有数据',
			'loadingRecords' : '加载中...',
			'processing' : '查询中...',
			'search' : '搜索:',
			'lengthMenu' : '每页 _MENU_ 项',
			'zeroRecords' : '没有数据',
			'paginate' : {
				'first' : '第一页',
				'last' : '最后一页',
				'next' : '下一页',
				'previous' : '上一页'
			},
			'info' : '第 _PAGE_ 页 / 总 _PAGES_ 页',
			'infoEmpty' : '没有数据',
			'infoFiltered' : '(过滤总件数 _MAX_ 条)'
		}
	});
	$('#tableBook tfoot th.pending-search').each(function() {
		var title = $(this).text();
		var attr = $(this).attr("attr");
        $(this).html( '<input class="form-control" style="width:90%;height:90%" type="text" placeholder="按' + title + '搜索" ' + attr + '/>' );
	});
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        });
        $( 'input', this.footer() ).keyup();
    });
    $('#text-publish-date')
			.daterangepicker(
					{
						"showDropdowns" : true,
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
						},
						"startDate" : "1900-01-01",
						"endDate" : new Date(),
						"maxDate" : new Date()
					}
			);
    
    $("#tableBook").on("click","#button-modify",function(){
        var isbn = table.row($(this).parents("tr")).data()["isbn"];
        console.log(isbn);
    	get_modify_book_form(isbn);
    });
    $("#tableBook").on("click","#button-author",function(){
        var data = table.row($(this).parents("tr")).data()["author"];
        putFormJson($("#show-author-form"), data);
    });
    
    
	$("#get-douban-info").click(function() {
		var isbn = $("#isbn").val();
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
				$("#price").val(data["price"]);
				$("#bookName").val(data["title"]);
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
				var elem = $("<option></option>").attr("value", author["authorID"]).html(author["Name"] + " " + author["Age"] + " " + author["Country"]);
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
			"format": "YYYY-MM-DD",
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
    
    $("#tableBook").on("click","#button-delete",function(){
        if(!confirm("确定删除?"))
            return;
        var ISBN = table.row($(this).parents("tr")).data()["isbn"];
        $.ajax({
            url: "/library/modifyBook.action",
            type: "POST",
            data: {
            	"ISBN":ISBN,
            	"intention" : "delete"
        	},
            success: (function(data){
            	if (data["ok"] == true) {
	                var t = $("#tableBook").dataTable();
	                t.fnReloadAjax();
	                alert("删除成功");
            	} else {
            		alert("删除失败");
            	}
            }),
            error: (function(data){
                alert("删除失败");
            })
        });
    });
    //$(".bs-example-modal-lg").modal();
});
function get_modify_book_form(isbn) {
	$.ajax({
		url : "/library/getBook.action",
		type : "POST",
		data : {
			"ISBN" : isbn
		},
		success : function(data) {
			putFormJson($("#modify-book-form"),data["data"]);
		}
	});
}
function submit_modify_book_form() {
    var dataPara = getFormJson($("#modify-book-form"));
    dataPara["intention"] = "modify";
	$.ajax({
		url : "/library/modifyBook.action",
		type : "POST",
		data : dataPara,
		success : function(data) {
			if (data["ok"] == true) {
				var t = $("#tableBook").dataTable();
				t.fnReloadAjax();
				$("#modify-book-modal").modal("hide");
			} else {
				alert("修改失败，请重新检查输入！");
			}
		},
		error : function() {
			alert("修改失败，请重新检查输入！");
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
function putFormJson(node, data) {
  node.find("input,select").each(function() {
    if (this.tagName.toLowerCase() == "select") {
    	console.log("should be " + data[this.name]);
    	var that = this;
      $(this).children().each(function() {
    	console.log($(this).val());
        if ($(this).val() == data[that.name]) {
          $(this).attr("selected","selected").trigger("change");
          console.log("found" + $(this).val());
        }
      });
    } else if(this.tagName.toLowerCase() == "input") {
      $(this).val(data[this.name]);
    }
  });
}
