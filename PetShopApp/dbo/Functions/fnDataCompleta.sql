CREATE FUNCTION fnDataCompleta(@data AS DATE)
RETURNS VARCHAR(MAX)
AS
BEGIN

	RETURN
		DATENAME(DW, @data) + ', ' +
		DATENAME(D, @data) + ' de ' +
		DATENAME(M, @data) + ' de ' +
		DATENAME(YY, @data)
END
