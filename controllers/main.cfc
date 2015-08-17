component accessors="true" {

	public void function init(required struct fw) {
		variables.fw = fw;
	}

	public any function home(required struct rc) {
		return;
	}

	public any function tableInfo (required struct rc) {
		var raw = new dbinfo(datasource=rc.dsn).tables();

		var q = new query();
		q.setName("filtered");
		q.setDBType("query");
		q.setAttributes(sourceQuery=raw);

		var objQueryResult = q.execute(sql="
				SELECT *
				  FROM sourceQuery
				 WHERE table_type like 'TABLE'"
		);

		rc.filtered = objQueryResult.getResult();
	}

	public any function appCode (required struct rc) {

	}

}
