UPDATE users
SET createdate = concat(
	FLOOR(2000 +(RAND() * 17)),
	'-',
	LPAD(FLOOR(1 +(RAND() * 12)), 2, 0),
	'-',
	LPAD(FLOOR(3 +(RAND() * 8)), 2, 0),
	' ',
	LPAD(FLOOR(0 +(RAND() * 23)), 2, 0),
	':',
	LPAD(FLOOR(0 +(RAND() * 59)), 2, 0),
	':',
	LPAD(FLOOR(0 +(RAND() * 59)), 2, 0)
)
WHERE
	CreateDate IS NULL