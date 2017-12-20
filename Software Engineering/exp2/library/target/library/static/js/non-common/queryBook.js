/**
 * 
 */
$(function() {
	$('#publishDate')
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
});