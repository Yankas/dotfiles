# coding: iso-8859-1
#
$cd= {
	:desc =>  'LR-',
	:fkn => 999991,
	:run => [
		{ :year i=> 22, :mo_start => 1, :mo_end => 1 },
	],
	:pnr => ().to_a
}

$ts= [
	{
		id: 'LR-',
		ab: {
			year: 22,
			mo: 1
		},
		tests: [
			{
				id: 1,
				desc: "",
				op: '',
				val1: {
					xpath: "//ABS_XML2_MAIN/",
					suffix: "LR_"
				},
				val2: {
					value: ""
				}
			},
		]
	},
]
