-- Advantage of partitioning large data here the moment you specify partion key it knows where you have to go so it will scan that only
-- faster query 
-- less time and less data scan
-- partion in a way suits what kind of data you are going to scan

SELECT * FROM "db_salesproduct"."orders"
where snapshot_day = '2017-01-01'

/* Results
#	row id	order id	order date	ship date	ship mode	customer id	customer name	segment	country	city	state	postal code	region	product id	category	sub-category	product name	sales	quantity	discount	profit	snapshot_day
1																						2017-01-01
2	440	CA-2017-157252	1/20/17	1/23/17	Second Class	CV-12805	Cynthia Voltz	Corporate	United States	New York City	New York	10024	East	FUR-CH-10003396	Furniture	Chairs	Global Deluxe Steno Chair	207.846	3	0.1	2.3094	2017-01-01
3																						2017-01-01
4	516	CA-2017-127432	1/22/17	1/27/17	Standard Class	AD-10180	Alan Dominguez	Home Office	United States	Great Falls	Montana	59405	West	TEC-CO-10003236	Technology	Copiers	Canon Image Class D660 Copier	2999.95	5	0.0	1379.977	2017-01-01
5																						2017-01-01
6	517	CA-2017-127432	1/22/17	1/27/17	Standard Class	AD-10180	Alan Dominguez	Home Office	United States	Great Falls	Montana	59405	West	OFF-ST-10004507	Office Supplies	Storage	Advantus Rolling Storage Box	51.45	3	0.0	13.8915	2017-01-01
7																						2017-01-01
8	518	CA-2017-127432	1/22/17	1/27/17	Standard Class	AD-10180	Alan Dominguez	Home Office	United States	Great Falls	Montana	59405	West	OFF-PA-10001667	Office Supplies	Paper	Great White Multi-Use Recycled Paper (20Lb. and 84 Bright)	11.96	2	0.0	5.382	2017-01-01
9																						2017-01-01
10	519	CA-2017-127432	1/22/17	1/27/17	Standard Class	AD-10180	Alan Dominguez	Home Office	United States	Great Falls	Montana	59405	West	OFF-ST-10004459	Office Supplies	Storage	Tennsco Single-Tier Lockers	1126.02	3	0.0	56.301	2017-01-01
11																						2017-01-01
12	523	CA-2017-145142	1/23/17	1/25/17	First Class	MC-17605	Matt Connell	Corporate	United States	Detroit	Michigan	48234	Central	FUR-TA-10001857	Furniture	Tables	Balt Solid Wood Rectangular Table	210.98	2	0.0	21.098	2017-01-01
13																						2017-01-01
14	733	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	OFF-ST-10000736	Office Supplies	Storage	Carina Double Wide Media Storage Towers in Natural & Black	242.94	3	0.0	9.7176	2017-01-01
15																						2017-01-01
16	734	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	TEC-AC-10003610	Technology	Accessories	Logitech†Illuminated - Keyboard	179.97	3	0.0	86.3856	2017-01-01
17																						2017-01-01
18	735	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	OFF-BI-10003982	Office Supplies	Binders	Wilson Jones Century Plastic Molded Ring Binders	99.696	6	0.2	33.6474	2017-01-01
19																						2017-01-01
20	736	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	OFF-BI-10003291	Office Supplies	Binders	Wilson Jones Leather-Like Binders with DublLock Round Rings	27.936	4	0.2	9.4284	2017-01-01
21																						2017-01-01
22	737	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	FUR-BO-10001619	Furniture	Bookcases	O'Sullivan Cherrywood Estates Traditional Bookcase	84.98	1	0.0	18.6956	2017-01-01
23																						2017-01-01
24	738	CA-2017-131954	1/21/17	1/25/17	Standard Class	DS-13030	Darrin Sayre	Home Office	United States	Seattle	Washington	98115	West	OFF-BI-10000138	Office Supplies	Binders	Acco Translucent Poly Ring Binders	18.72	5	0.2	6.552	2017-01-01
25																						2017-01-01
26	771	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	OFF-BI-10001036	Office Supplies	Binders	Cardinal EasyOpen D-Ring Binders	18.28	2	0.0	9.14	2017-01-01
27																						2017-01-01
28	772	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	TEC-PH-10004614	Technology	Phones	AT&T 841000 Phone	207.0	3	0.0	51.75	2017-01-01
29																						2017-01-01
30	773	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	OFF-BI-10000301	Office Supplies	Binders	GBC Instant Report Kit	32.35	5	0.0	16.175	2017-01-01
31																						2017-01-01
32	774	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	OFF-BI-10003910	Office Supplies	Binders	DXL Angle-View Binders with Locking Rings by Samsill	7.71	1	0.0	3.4695	2017-01-01
33																						2017-01-01
34	775	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	OFF-AR-10004648	Office Supplies	Art	Boston 19500 Mighty Mite Electric Pencil Sharpener	40.3	2	0.0	10.881	2017-01-01
35																						2017-01-01
36	776	CA-2017-104220	1/30/17	2/5/17	Standard Class	BV-11245	Benjamin Venier	Corporate	United States	Des Moines	Iowa	50315	Central	FUR-FU-10002597	Furniture	Furnishings	C-Line Magnetic Cubicle Keepers, Clear Polypropylene	34.58	7	0.0	14.5236	2017-01-01
37																						2017-01-01
38	849	CA-2017-107503	1/1/17	1/6/17	Standard Class	GA-14725	Guy Armstrong	Consumer	United States	Lorain	Ohio	44052	East	FUR-FU-10003878	Furniture	Furnishings	Linden 10" Round Wall Clock, Black	48.896	4	0.2	8.5568	2017-01-01
39																						2017-01-01
40	978	CA-2017-159366	1/7/17	1/10/17	First Class	BW-11110	Bart Watters	Corporate	United States	Detroit	Michigan	48205	Central	TEC-MA-10000822	Technology	Machines	Lexmark MX611dhe Monochrome Laser Printer	3059.982	2	0.1	679.996	2017-01-01
41																						2017-01-01
42	1096	CA-2017-160423	1/21/17	1/26/17	Standard Class	PS-19045	Penelope Sewall	Home Office	United States	Charlotte	North Carolina	28205	South	OFF-ST-10004340	Office Supplies	Storage	Fellowes Mobile File Cart, Black	348.208	7	0.2	30.4682	2017-01-01
43																						2017-01-01
44	1097	CA-2017-160423	1/21/17	1/26/17	Standard Class	PS-19045	Penelope Sewall	Home Office	United States	Charlotte	North Carolina	28205	South	OFF-BI-10004001	Office Supplies	Binders	GBC Recycled VeloBinder Covers	35.784	7	0.7	-28.6272	2017-01-01
45																						2017-01-01
46	1183	CA-2017-138779	1/14/17	1/15/17	First Class	RB-19570	Rob Beeghly	Consumer	United States	Jacksonville	North Carolina	28540	South	OFF-EN-10002504	Office Supplies	Envelopes	Tyvek  Top-Opening Peel & Seel Envelopes, Plain White	21.744	1	0.2	7.3386	2017-01-01
47																						2017-01-01
48	1184	CA-2017-138779	1/14/17	1/15/17	First Class	RB-19570	Rob Beeghly	Consumer	United States	Jacksonville	North Carolina	28540	South	TEC-PH-10003655	Technology	Phones	Sannysis Cute Owl Design Soft Skin Case Cover for Samsung Galaxy S4	7.92	5	0.2	0.693	2017-01-01
49																						2017-01-01
50	1341	CA-2017-113481	1/2/17	1/4/17	First Class	AS-10045	Aaron Smayling	Corporate	United States	Jacksonville	North Carolina	28540	South	TEC-MA-10002178	Technology	Machines	Cisco CP-7937G Unified IP Conference Station Phone	695.7	2	0.5	-27.828	2017-01-01
51																						2017-01-01
52	1342	CA-2017-113481	1/2/17	1/4/17	First Class	AS-10045	Aaron Smayling	Corporate	United States	Jacksonville	North Carolina	28540	South	OFF-BI-10003694	Office Supplies	Binders	Avery 3 1/2" Diskette Storage Pages, 10/Pack	15.66	5	0.7	-12.528	2017-01-01
53																						2017-01-01
54	1343	CA-2017-113481	1/2/17	1/4/17	First Class	AS-10045	Aaron Smayling	Corporate	United States	Jacksonville	North Carolina	28540	South	OFF-BI-10000474	Office Supplies	Binders	Avery Recycled Flexi-View Covers for Binding Systems	28.854	6	0.7	-21.1596	2017-01-01
55																						2017-01-01
56	1415	CA-2017-115994	1/28/17	1/31/17	Second Class	BT-11305	Beth Thompson	Home Office	United States	Costa Mesa	California	92627	West	TEC-AC-10000580	Technology	Accessories	Logitech G13 Programmable Gameboard with LCD Display	239.97	3	0.0	26.3967	2017-01-01
57																						2017-01-01
58	1416	CA-2017-115994	1/28/17	1/31/17	Second Class	BT-11305	Beth Thompson	Home Office	United States	Costa Mesa	California	92627	West	FUR-FU-10003976	Furniture	Furnishings	DAX Executive Solid Wood Document Frame, Desktop or Hang, Mahogany, 5 x 7	37.74	3	0.0	12.8316	2017-01-01
59																						2017-01-01
60	1659	CA-2017-161809	1/20/17	1/26/17	Standard Class	TH-21100	Thea Hendricks	Consumer	United States	Los Angeles	California	90045	West	TEC-PH-10004922	Technology	Phones	RCA Visys Integrated PBX 8-Line Router	160.776	3	0.2	10.0485	2017-01-01
61																						2017-01-01
62	1846	US-2017-158512	1/12/17	1/17/17	Second Class	DA-13450	Dianna Arnett	Home Office	United States	Washington	District of Columbia	20016	East	OFF-PA-10001804	Office Supplies	Paper	Xerox 195	40.08	6	0.0	19.2384	2017-01-01
63																						2017-01-01
64	1847	US-2017-158512	1/12/17	1/17/17	Second Class	DA-13450	Dianna Arnett	Home Office	United States	Washington	District of Columbia	20016	East	FUR-FU-10004973	Furniture	Furnishings	Flat Face Poster Frame	37.68	2	0.0	15.8256	2017-01-01
65																						2017-01-01
66	1885	CA-2017-154718	1/19/17	1/23/17	Second Class	DL-12865	Dan Lawera	Consumer	United States	Keller	Texas	76248	Central	OFF-LA-10003714	Office Supplies	Labels	Avery 510	6.0	2	0.2	2.1	2017-01-01
67																						2017-01-01
68	2121	US-2017-168690	1/7/17	1/13/17	Standard Class	TS-21085	Thais Sissman	Consumer	United States	Ormond Beach	Florida	32174	South	OFF-BI-10000145	Office Supplies	Binders	Zipper Ring Binder Pockets	2.808	3	0.7	-1.9656	2017-01-01
69																						2017-01-01
70	2169	CA-2017-117870	1/27/17	1/30/17	Second Class	JH-15820	John Huston	Consumer	United States	Kent	Ohio	44240	East	OFF-AR-10004078	Office Supplies	Art	Newell 312	14.016	3	0.2	1.752	2017-01-01
71																						2017-01-01
72	2170	CA-2017-117870	1/27/17	1/30/17	Second Class	JH-15820	John Huston	Consumer	United States	Kent	Ohio	44240	East	TEC-AC-10000927	Technology	Accessories	Anker Ultrathin Bluetooth Wireless Keyboard Aluminum Cover with Stand 	71.976	3	0.2	-8.997	2017-01-01
73																						2017-01-01
74	2171	CA-2017-117870	1/27/17	1/30/17	Second Class	JH-15820	John Huston	Consumer	United States	Kent	Ohio	44240	East	TEC-PH-10003931	Technology	Phones	JBL Micro Wireless Portable Bluetooth Speaker	107.982	3	0.4	-26.9955	2017-01-01
75																						2017-01-01
76	2290	CA-2017-115154	1/8/17	1/11/17	First Class	RS-19420	Ricardo Sperren	Corporate	United States	Seattle	Washington	98115	West	FUR-TA-10001950	Furniture	Tables	Balt Solid Wood Round Tables	892.98	2	0.0	80.3682	2017-01-01
77																						2017-01-01
78	2376	CA-2017-119669	1/24/17	1/30/17	Standard Class	TP-21130	Theone Pippenger	Consumer	United States	Smyrna	Georgia	30080	South	OFF-FA-10000053	Office Supplies	Fasteners	Revere Boxed Rubber Bands by Revere	5.67	3	0.0	0.1134	2017-01-01
79																						2017-01-01
80	2408	CA-2017-144589	1/20/17	1/25/17	Standard Class	TM-21010	Tamara Manning	Consumer	United States	San Francisco	California	94122	West	OFF-AR-10003631	Office Supplies	Art	Staples in misc. colors	24.2	5	0.0	7.986	2017-01-01
81																						2017-01-01
82	2409	CA-2017-144589	1/20/17	1/25/17	Standard Class	TM-21010	Tamara Manning	Consumer	United States	San Francisco	California	94122	West	TEC-PH-10003072	Technology	Phones	Panasonic KX-TG9541B DECT 6.0 Digital 2-Line Expandable Cordless Phone With Digital Answering System	359.976	3	0.2	130.4913	2017-01-01
83																						2017-01-01
84	2680	CA-2017-127026	1/21/17	1/27/17	Standard Class	MH-18115	Mick Hernandez	Home Office	United States	Jackson	Michigan	49201	Central	OFF-BI-10000546	Office Supplies	Binders	Avery Durable Binders	14.4	5	0.0	7.056	2017-01-01
85																						2017-01-01
86	2681	CA-2017-127026	1/21/17	1/27/17	Standard Class	MH-18115	Mick Hernandez	Home Office	United States	Jackson	Michigan	49201	Central	TEC-AC-10002049	Technology	Accessories	Logitech G19 Programmable Gaming Keyboard	619.95	5	0.0	111.591	2017-01-01
87																						2017-01-01
88	2682	CA-2017-127026	1/21/17	1/27/17	Standard Class	MH-18115	Mick Hernandez	Home Office	United States	Jackson	Michigan	49201	Central	OFF-BI-10001196	Office Supplies	Binders	Avery Flip-Chart Easel Binder, Black	89.52	4	0.0	42.0744	2017-01-01
89																						2017-01-01
90	2683	CA-2017-127026	1/21/17	1/27/17	Standard Class	MH-18115	Mick Hernandez	Home Office	United States	Jackson	Michigan	49201	Central	TEC-MA-10002981	Technology	Machines	I.R.I.S IRISCard Anywhere 5 Card Scanner	350.973	3	0.1	152.0883	2017-01-01
91																						2017-01-01
92	2684	CA-2017-127026	1/21/17	1/27/17	Standard Class	MH-18115	Mick Hernandez	Home Office	United States	Jackson	Michigan	49201	Central	TEC-PH-10003601	Technology	Phones	Ativa D5772 2-Line 5.8GHz Digital Expandable Corded/Cordless Phone System with Answering & Caller ID/Call Waiting, Black/Silver	164.99	1	0.0	49.497	2017-01-01
93																						2017-01-01
94	2767	CA-2017-167752	1/15/17	1/18/17	First Class	RW-19690	Robert Waldorf	Consumer	United States	Philadelphia	Pennsylvania	19134	East	OFF-AP-10000159	Office Supplies	Appliances	Belkin F9M820V08 8 Outlet Surge	34.384	1	0.2	3.8682	2017-01-01
95																						2017-01-01
96	2768	CA-2017-167752	1/15/17	1/18/17	First Class	RW-19690	Robert Waldorf	Consumer	United States	Philadelphia	Pennsylvania	19134	East	OFF-AP-10002945	Office Supplies	Appliances	Honeywell Enviracaire Portable HEPA Air Cleaner for 17' x 22' Room	1924.16	8	0.2	312.676	2017-01-01
97																						2017-01-01
98	2834	CA-2017-134649	1/26/17	1/31/17	Second Class	CA-11965	Carol Adams	Corporate	United States	Hoover	Alabama	35244	South	OFF-AR-10001547	Office Supplies	Art	Newell 311	15.47	7	0.0	4.1769	2017-01-01
99																						2017-01-01
100	2835	CA-2017-134649	1/26/17	1/31/17	Second Class	CA-11965	Carol Adams	Corporate	United States	Hoover	Alabama	35244	South	OFF-BI-10001890	Office Supplies	Binders	Avery Poly Binder Pockets	7.16	2	0.0	3.4368	2017-01-01
*/
