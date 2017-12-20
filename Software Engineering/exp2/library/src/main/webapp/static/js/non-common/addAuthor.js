$(function() {
	$('#add-author-form').validator().on('submit', function (e) {
		if (e.isDefaultPrevented()) {
		} else {
			submit_add_author_form();
			return false;
		}
	});
});
function submit_add_author_form() {
    var dataPara = getFormJson($("#add-author-form"));
	$.ajax({
		url : "/library/addAuthor.action",
		type : "POST",
		data : dataPara,
		success : function(data) {
			if (data["ok"] == false) {
				alert("添加失败，请重新检查输入！");
			} else {
				alert("添加成功！");
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
