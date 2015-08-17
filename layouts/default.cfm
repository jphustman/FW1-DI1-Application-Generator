<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="ColdFusion application generator using FW1 and DI1.">

    <title>ColdFusion application generator using FW1 and DI1.</title>

	<link href="//code.jquery.com/ui/1.11.4/themes/redmond/jquery-ui.min.css" rel="stylesheet" />
	<link href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" rel="stylesheet" />
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href="//yui.yahooapis.com/pure/0.6.0/pure-min.css" rel="stylesheet" />
	<!--[if lte IE 8]>
  		<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-old-ie-min.css">
	<![endif]-->
	<!--[if gt IE 8]><!-->
	    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
	<!--<![endif]-->
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/layouts/blog-old-ie.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="css/layouts/blog.css">
    <!--<![endif]-->

</head>

<body>
<div id="layout" class="pure-g">
	<cfoutput>#body#</cfoutput>
</div>

<div class="clearfix"></div>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="//cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script src="//cdn.jsdelivr.net/jquery.validation/1.14.0/additional-methods.min.js"></script>
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function () {
	'use strict';
	$(document).tooltip();
	$('#tableData').dataTable({
		bJQueryUI: true,
		sPaginationType: "full_numbers"
	});
	$('.tabs').tabs();
	$("#accordion").accordion();
});
</script>

</body>
</html>
