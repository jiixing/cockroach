--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: second; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.second (
    i integer NOT NULL,
    s text
);


--
-- Name: simple; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.simple (
    i integer NOT NULL,
    s text,
    b bytea
);


--
-- Data for Name: second; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.second VALUES (0, '0');
INSERT INTO public.second VALUES (1, '1');
INSERT INTO public.second VALUES (2, '2');
INSERT INTO public.second VALUES (3, '3');
INSERT INTO public.second VALUES (4, '4');
INSERT INTO public.second VALUES (5, '5');
INSERT INTO public.second VALUES (6, '6');


--
-- Data for Name: simple; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.simple VALUES (0, 'str', NULL);
INSERT INTO public.simple VALUES (1, '', NULL);
INSERT INTO public.simple VALUES (2, ' ', NULL);
INSERT INTO public.simple VALUES (3, ',', NULL);
INSERT INTO public.simple VALUES (4, '
', NULL);
INSERT INTO public.simple VALUES (5, '\n', NULL);
INSERT INTO public.simple VALUES (6, '
', NULL);
INSERT INTO public.simple VALUES (7, '', NULL);
INSERT INTO public.simple VALUES (9, '"', NULL);
INSERT INTO public.simple VALUES (10, NULL, NULL);
INSERT INTO public.simple VALUES (11, '\N', NULL);
INSERT INTO public.simple VALUES (12, 'NULL', NULL);
INSERT INTO public.simple VALUES (13, '¢', NULL);
INSERT INTO public.simple VALUES (14, ' ¢ ', NULL);
INSERT INTO public.simple VALUES (15, '✅', NULL);
INSERT INTO public.simple VALUES (16, '","\n,™¢', NULL);
INSERT INTO public.simple VALUES (19, '✅¢©ƒƒƒƒåß∂√œ∫∑∆πœ∑˚¬≤µµç∫ø∆œ∑∆¬œ∫œ∑´´†¥¨ˆˆπ‘“æ…¬…¬˚ß∆å˚˙ƒ∆©˙©∂˙≥≤Ω˜˜µ√∫∫Ω¥∑', NULL);
INSERT INTO public.simple VALUES (20, 'a quote " or two quotes "" and a quote-comma ", , and then a quote and newline "
', NULL);
INSERT INTO public.simple VALUES (21, '"a slash \, a double slash \\, a slash+quote \",  \
', NULL);
INSERT INTO public.simple VALUES (100, '<ॹ	\"	ᐿ\π�✅<✅	"<,aॹॹ\ᐿ✅<"aॹ�
�a
ॹ	"	"\�;,�ॹᐿ	"",,✅,
;<,

ॹa

\ᐿᐿ,✅πa;;��
a✅✅;"
<;,✅,✅✅�\,ॹ,		ॹ,a<a<✅
\ॹॹaπa��<✅;<\,✅<;�ππ<ᐿa	ॹ�πᐿ✅
";a,<
ᐿ\
✅
<	
"	ॹ
"✅ᐿ
✅<a✅π;	,a
		\

\"	<	;a<�;,\,π,,,<\�,aπ\;
	
ॹπ
"✅πᐿaaॹ✅,,,,"ᐿ;ॹ\		"	ᐿπ;✅✅π<✅\""\�	ॹπaa,
ᐿ,"	,ᐿ

"ᐿ
,\✅\π\�
\π
"✅π
<\

",
<ᐿᐿ✅π�π

\ॹ
"�"ॹॹॹ✅	<<ᐿ�\"ᐿ
ॹॹ;�;"✅
ᐿॹ;"\\π
aॹ	ᐿ;ॹ✅
ᐿ"��
;
	;	
"

;<�π<<a<<a�";�,

	<�
�
<

<�aa
<�ॹ
;\✅
π;<�✅ॹ
a<,ππ,a�ॹ"
<π
ᐿ
✅,
	\\���ᐿ",

	<ॹ✅	ᐿa\<ॹ✅,
;"
π	<,✅ॹ<�<�,,,✅✅		ᐿ	\ॹ,ᐿ,
✅,�aॹ
a
;ᐿ	�	�	;;,ॹ"
��	;";

"	aπ�
	a
π,

\	πaॹ�✅,\"<
a
\;;a�;
"ॹ�ᐿ�;,,ॹ✅;	π		π✅✅�"✅�
ᐿ✅ॹ�ᐿaa
ॹ<
",<<�ᐿa,ॹ<
;π	ᐿa
<<	,;π
ᐿ<✅a
aa
;�	<ॹᐿ	ॹ<<ᐿ"<<
,	,a;�ᐿ
�✅�\ᐿ""a
ॹ,;<a
	π✅<
��a,""✅;\	a,
✅ॹ�\,	,<ᐿ;
;	�""ॹᐿ	\��<ॹ\ᐿ	�\�aa✅ᐿᐿ;ᐿa<"	
ॹ"<;;ॹ\πॹᐿ�<
;ॹ<;<"<�<ᐿ"\�ॹ,,✅\\	,✅;a;
π
,	;;"
<	<a
ॹa\;"	,ᐿ✅✅\πᐿ;,
	ᐿ"�✅�ॹa✅<✅π;πᐿa"ॹ\	✅ॹॹ
�,
,"\a✅,<a\"a;✅"a;aπ	,π,;πa	;<π,ॹ;ॹ\✅<ᐿ
a;,;ॹॹ✅\✅;
�✅✅,""✅\ᐿ	
	πa✅\;π,ᐿa"ॹa"	π<�ᐿ
	ᐿ,

πᐿ

	
;π,\
"ᐿ;ॹ
\ᐿ✅	ᐿ
\a\aπ\ᐿ,ᐿa<	,;π		ॹ	;ॹ",ᐿaॹ
		;;;<ॹ
�";	✅ᐿ	"ᐿ;\
', '\x0194fdc2fa2ffcc041d3ff12045b73c86e4ff95ff662a5eee82abdf44a2d0b75fb180daf48a79ee0b10d394651850fd4a178892ee285ece1511455780875d64ee2d3d0d0de6bf8f9b44ce85ff044c6b1f83b8e883bbf857aab99c5b252c7429c32f3a8aeb79ef856f659c18f0dcecc77c75e7a81bfde275f67cfe242cf3cc354f3ede2d6becc4ea3ae5e88526a9f4a578bcb9ef2d4a65314768d6d299761ea9e4f5aa6aec3fc78c6aae081ac8120c720efcd6cea84b6925e607be063716f96ddcdd01d75045c3f00');
INSERT INTO public.simple VALUES (101, 'a;,

✅
ॹ;aᐿπ",ᐿॹᐿ"",ॹ;✅✅ππ	,ᐿ\
aa;	

	
ᐿ
	ॹ✅<ᐿ;\,,<ᐿ
"		
<	;<aᐿॹ,π	a;a

\ππa<,ᐿ;
✅<
<✅
<✅;a	;"ॹaπ\ॹ"		✅,✅
<<
�\


π;""\ᐿa<	<ᐿ✅ॹ,ॹ,,ᐿa\a�<<a�π,π✅\,a✅<π\
�a,;\\
✅ॹ
<
\�ॹ<ॹᐿ	,ᐿ"
<ॹa;	π
,π;;
π\<✅
ππ�✅✅a
\�<ᐿ"π�π��a
πa�ᐿ\,
a�"\;	<"a✅ॹ✅,	ॹπॹ;
;\<"
"
aᐿ	✅
	,ᐿ	""π�;<
ॹ✅,✅,✅
<"✅;
ᐿᐿ;<ॹ;a<"ᐿ<a","<	a
ᐿ\aa
✅aπ"

,\,\,\,"ॹ,ॹ,
ᐿ,
;	,
✅
a
ॹॹ<"ᐿπ;

";,,;aॹa✅✅�a"�<"ॹ	�\a��a✅
;;π✅ᐿ\<<aॹॹ	ॹ"
\\✅✅,✅ॹ	�π\\�,π�<a;	ᐿ✅"✅


a<;✅ᐿ\✅π,;;aπॹᐿ"�\"ᐿ

,	π;"a"π;\�✅
	a;
✅�
"a\ᐿ"π�
	;
;π
ᐿॹᐿ
✅πᐿπॹ"<,
<✅
✅"
"�ᐿॹ"�a�	\�a
		<✅<ᐿ
aaπ<ॹ
	;ॹॹπॹᐿa"\✅	\ॹ
"πॹ	;
;\	
,;;,✅ᐿa
;\ᐿa
		<\π
ᐿ<✅",
π
�✅,,πᐿ\π<a✅a�π;
<\�	
ᐿ<,aᐿᐿ;	
ॹ<<<✅π

aa,π✅<ॹπ"ॹ	
,;\aπ<",�\πᐿππ�,<ᐿ;;"\\
ᐿ�	\\;
,ᐿ
<�ᐿᐿ
ॹ	,aa<


ᐿ<✅"
�ᐿ
\
	\ॹ"		<,"<
;	<	π;;;✅
;,�✅ॹᐿ	"πॹπ�<ᐿ
a,"ॹa
�\",✅aa"<ππ,	\,;a<<<	",✅	";ॹ<ᐿ�,,,"aa;a	,;a
,�<	
π;✅ᐿ"	
;"
<✅<	

",�ᐿ�a


a
�ᐿ
,;,<";a\aa"	�"
ᐿ
πᐿπ<ॹॹ✅,πॹॹᐿ"��",ॹ,aπ	
a	�aa
;
✅
ॹ,
				
	�ᐿ	;✅",a;✅<ॹ�✅✅a,,\<<
<<	<\,\	,π

π
✅;�✅	
π<;✅
	";	ॹ<,
\\
\"	
ॹ✅
<",<✅a✅✅"<\ॹ
a	ᐿ"\"ॹ', '\x52fdfc072182654f163f5f0f9a621d729566c74d10037c4d7bbb0407d1e2c64981855ad8681d0d86d1e91e00167939cb6694d2c422acd208a0072939487f6999eb9d18a44784045d87f3c67cf22746e995af5a25367951baa2ff6cd471c483f15fb90badb37c5821b6d95526a41a9504680b4e7c8b763a1b1d49d4955c8486216325253fec738dd7a9e28bf921119c160f0702448615bbda08313f6a8eb668d20bf5059875921e668a5bdf2c7fc4844592d2572bcd0668d2d6c52f5054e2d0836bf84c7174cb7476');
INSERT INTO public.simple VALUES (102, '"aπ"ᐿ;"�ᐿ;<	\"�,	;

"<ॹ"<,
aa;�π
<�
�	";
<\;✅✅π\
\�✅
,✅��"""�
,ॹॹa
""π
	<ॹ"<	ॹ"ॹ
,\,ॹॹ�<ॹ
a\ᐿᐿ✅✅a"\,<
π
;\
\
�
�
�
��	�	
;ᐿa
π,

,	<�;✅πᐿ�aa
,;<✅	",;",�
ᐿ�	π<

<	<ᐿ\ॹ✅<�
"π\,�aᐿπ✅✅ᐿ
,�π�,
π

<π,;✅�<a	,		
	ॹ<π
"\	"ॹ"ॹ✅\ᐿ,;ॹ�<✅
"ᐿ<
ॹ✅
"
"a,\✅\",✅π;ॹ✅<�"<	,
<✅
πॹa\
ॹ";,	"✅,,,	<✅;ᐿ✅ॹ�π
"",,"
ॹᐿaπ,ॹ,ॹ,ᐿ\,aॹ,
a✅π\✅"πॹ
;π<ॹ✅"	\,",\
ॹ�
\,ᐿ✅;
a\aॹॹ
"�ॹ✅ॹa✅ᐿaπ
"	,"
,,,a\\π✅\	a
	✅
<;�πॹ",πaa�\<"
ॹπ	\<\
ᐿ✅,	,ॹπ
\✅ᐿ,	,\,a✅�\aπ�✅	\\,";a
\a<	ᐿ	
<;
ᐿ✅πa,<<"ॹ\\�	ॹ
;a,
\<π
✅
✅
	"
ॹa<ॹ,\
<ᐿaᐿ"�<aᐿ\\\a�
	ᐿ

✅	
<✅"<ॹ;ᐿ;�
,	π<,ᐿ"a;
ॹ"
	ॹ,ॹ�,π"\aa

<<"<ॹ
π
;\<�
ॹ;,"�<ॹ"
"aॹ�
π,<ᐿᐿ<πᐿ\	<π✅
;ᐿ,��π	
,"a

;π�ॹπ",ᐿ✅�;✅,"ᐿ;

,a"\
	
\
	"ᐿ\
ॹ	"✅
π
�
	π,\,✅a<<aᐿ<
πππ	
,π\;<ᐿ	"�<
,aπa;,<	
✅;πa
ᐿ;,

;<";ॹᐿ✅;\
ᐿπ"
;
ॹ
ππa<ॹπ
ᐿ	a\aᐿॹ"ᐿ
ॹᐿ
";\
<,ᐿ�a�πππ\<<a"ॹ\<\ᐿ
\",π
;;�ᐿ\<ॹ	,�ॹ
aa<	
"	\ᐿ<ᐿ
;ᐿ,ᐿᐿ
;\a;π
�<✅�		;✅
π<✅ॹ,�\�"
ᐿπ;π	<ॹ,<ॹ	

	<π<<a\
ᐿ

<"✅			\"�✅

	"a
;"�,<π
	<,,		\ॹ;ॹ�ᐿ<π;ᐿ;,�✅ॹ	✅<<;ॹॹ<	\\��ᐿ\✅	;	ॹ		ॹ
"<ᐿ
"π"✅a
	✅
,✅ᐿ"
;
;✅\✅π<ॹॹ\ᐿ<
✅<π✅
\",<a\ॹ
<"
"�,,
✅', '\x2f8282cbe2f9696f3144c0aa4ced56dbd967dc2897806af3bed8a63aca16e18b686ba0dc208cfece65bd70a23da0026b66108fbad0844363fe09dd6a773e21b8236a37f8283efb27367f6ee35437869c4043725d5ea2c63b01af2fcbb387de40daac6225423c14a994dda08f399b7888fcb6c84703dd101ac77cf000e49b2a33f748a9d6993340fe25a5f58f01766fd3466668e9e02d727a2b49f44691178d97e75e4fc0a9ca5103b928c58066d2aaf55a4ecaefd462a35a1fab5f8e47e865b0f7f37aa169dd0c93');
INSERT INTO public.simple VALUES (103, 'π�<a

<<\
"		�aॹ✅�ᐿ
";a\ॹ	ᐿ	<,\",ᐿ�a�;<ᐿ✅�ॹa
�\<\<\�πaπॹᐿ"
�aᐿa	✅✅✅,
	<ॹ"ॹ�
	<a✅<"�;ᐿॹ\π"✅
<π
�π;a		
\

;a�"ᐿ\ᐿa\��"�
<"	✅ॹ	,✅
�;��<"\\π�;✅;<	
\	✅,���\�ᐿ
;a�✅
ᐿ
	,�\"	ॹ<�\;
�	π\;✅,✅
ᐿ;\\
	�,<ॹॹ\,;
	ᐿπ	✅�ᐿ;;\ᐿ\ॹॹᐿπ
<aॹ<
a;ππ
ᐿ"π	"
aॹa\\<a	ᐿ"ᐿᐿ"
";,,✅ᐿ
\<ॹ";✅a<	a	;✅;<		,π�π

,\
"
;
"πॹ✅ᐿππ<π
✅�	;�π\ॹ;ॹ"πॹ,,
<ᐿ,	�
	
",	π;a
�
;<ॹaᐿ";<
�;;ᐿॹ
,ᐿ�ᐿ<	�aᐿ


;ॹ",<"π
;\"a
�\ᐿ,<ॹ	;<
;✅"✅a;aπᐿ"\"��π
π<✅ᐿ<	<,✅

<
"a,�
a\✅
<\	ᐿ
✅✅
aॹa"πa
✅<\✅"	π\ॹ,\<�ॹ
✅

;\ᐿπ✅a
aॹ<",\\"";ᐿ;<ॹ"π\
aaπ	,a\

,	
,"�	π
\,,
;�	<	π	π"ππᐿᐿ<;"ᐿ\
<<ॹ
,aॹπॹ�
	✅;ॹ<a✅�	;✅ॹ;ᐿ"ॹ,"	;�;<<

;aa\"✅aπ;
",a<
�<�
π,
\
<;ᐿπ
�
"\<\ᐿ"<ᐿ�
ॹ
<,"
ॹ<a��;aᐿa;\��
,	;<ॹa,";<
ᐿ\✅a,"
ᐿॹ✅�✅

	✅
π�
;π
✅,ᐿᐿ;a;<ᐿॹ;�\


�
π�✅

;";a	"
\
"	π\�<✅;
",ᐿ�	✅<;,ᐿπ�✅,\a"πa,;ॹ";,ᐿ;
",�ॹπᐿ\✅aᐿ\
,ॹ✅ᐿ
ᐿ";;
✅ᐿ;<✅
;✅
ॹ
aa
ᐿ�
�<	
π
ॹॹ\
;�<�"πᐿ\\π\ॹ,ॹॹ;\�,�a;\;π✅,a,	,
�✅ॹ\"aaॹ�
✅a�;"
ᐿ✅,aa"�π<""
ॹ<

ᐿ
;
\,,�\<\aπ�✅ππ,
\\<;ᐿ�;✅

�
,<πᐿ✅✅	✅�ॹ<,
π<ॹ
,\<ॹॹπॹ
\<",ᐿ"ॹπᐿ✅π;✅"

π	ॹπᐿ;�;\ᐿ	\�"
ᐿᐿ�;��
�"✅a;', '\x85fbe72b6064289004a531f967898df5319ee02992fdd84021fa5052434bf6ee214b5fdf1409fc2b8a0a521c221bacb1bca8a3c1495ddbfbdc0b7d75b87b9cf75860b72bbef59336471c22e5d677c563eece4dd88ae65655e5a094e9cef2fb2774b795b2e4e12e15edb17907cfe1c307a187e3a99ae6ed15628da806c3b41d82393d72c9537c8275f85650e1dada2c1489050a06d37841b74bcbbdf8987a19dcddc8e966bffacfac14dab33951a9e9a4cffa46c5f60c453b5b468f20c4bd22dfcdf6d3d1426f8543');
INSERT INTO public.simple VALUES (104, ';π,\✅✅ᐿπ✅,�a<
πᐿॹ;π\,✅
ᐿॹ✅�,�,;;ᐿ,

ᐿaπ,,✅
a,a\<✅"✅\,,a"π
�✅π"ॹπ;
π;<,<
;<
	ॹπ,a\	�
\ᐿ<	,
\ᐿa		

π	\
\πa;πᐿ",a<"
�	a	�	✅	;ᐿᐿ��
ᐿᐿ\,ᐿᐿ
a"ᐿ""aa
;✅π
ॹ\""�✅ॹॹ\
ॹ	
ॹ✅,
"πᐿ

;<<;	ᐿ�,,\




π�;
;,"✅;a
\;aa


;

<<ॹ�
πa�πॹaॹ
;✅✅,;ᐿ
;π"\πᐿ
"
\a\aπ✅ᐿ
<",	ॹ<;";
ππ"�

	,π\\<\	;ॹπ\,;�✅ॹ,<
✅�;ᐿ",;✅

ॹॹ
✅
<<
"",a	,ॹ	�;�,π\	,;\"✅	


ᐿ
<\ᐿ,;�
π\<ᐿᐿ
<✅ᐿaॹ�✅
	,π"<<

π	π✅
<\πॹaᐿ	;�ॹॹ,"
\a
,"πॹ,,ॹॹ\";�
\π✅
"ππ
✅�πॹ,✅
;π;ᐿ"
ᐿ✅ॹ;;
"ॹ"�"a
π
<
	"aπ	;\
";"π,	a	

ᐿ<,;�<ᐿ"\ᐿᐿa,
;;ॹॹ	ॹπa�ᐿa,π<✅	ᐿᐿ
,✅a�"",;π�<;
<;ᐿ"�;ᐿ;�;✅	\<\<;πa✅ॹ\\\ᐿ
;	
\"✅
	π✅""<π<,
,\✅ᐿᐿ�	�,ππ;ᐿ	�"\ππ"ॹ,πa<

<��ॹॹ	,"ॹ✅✅

;\ॹ;π<"�	�<"ᐿॹॹ;
<

a	�ॹᐿa
,"	"
,<,"	ᐿ\
<,;<"	

ᐿ,ᐿ	π✅
,,
	<,�\;<\a
π	,	�ॹ	
�a✅
✅
ॹ";	✅<	ᐿ
	ᐿॹ✅"ॹ✅π

,	\	\;"a	,ॹॹ"aॹ
,
✅�	
ॹᐿ
✅<πॹ
✅	ॹ"ॹ"�\;\✅;ॹπ;

ᐿ<<"ॹ
,
;π
ॹ	a✅
�;ᐿ"a�✅π✅ॹ,

",✅
ᐿ
<�
πᐿ"πॹᐿ�
<,✅a\ॹ✅<;πᐿ✅ॹ<"<✅"π,\π\<"<"π
✅<;\�	ॹ

<
ᐿ
ᐿaॹaॹ\<<

�	a,
ॹॹᐿ
,π✅<;\
πॹπᐿॹ<;"a<;		<,;�π
<✅ॹॹ	ᐿᐿaaaॹ	\,ᐿ✅
\ॹ<"π	"	ᐿ
	a	,<ππ;
\�
,

\ᐿa
ॹᐿa
	
	
✅"ᐿ"

"�

<<πa✅\<ᐿ�

✅�a✅�', '\xe2807d9c1dce26af00ca81d4fe11c23e8eb6752e1f9ad716c61fc24f2d80c04189b3a4c3f477689d0ac9a542f9b174192a2c16da483de16a3a093f9107cdc35f97f4378037ad8aa15ea7c95db087c51c99644230bb8f8b6243b21cdcc015237564a9fb2ac359aa7ab99544cd62e240885533aed411c87c530b7107321db580938d8b78eb063b5c3c4f18926cba3bc05a65244dab6d79345fe5e99adf9ddd3d1dbfe5db7f8f20aacd5ce70992f8161755f872054a64703dbfbab3be3dc57fcb075ef625033f810cda');
INSERT INTO public.simple VALUES (105, '<a✅ᐿ<


ॹ",
"πॹᐿ,ᐿ
ॹ�ॹ<
aᐿᐿ,"ॹ"\✅
�✅<
<\<"\π;<✅,;✅ॹa✅ᐿ;ᐿ\�\�,ᐿ
,�✅,	;\"π,;ᐿa
ॹ✅
;ॹ<\
;<ᐿॹ
<
�\",ॹ✅,
"✅ᐿaa

	;�π<,",ᐿ<ᐿ\ᐿ✅;	<π""ॹ<	
,,π"	�✅;;ॹ,ᐿ	ॹ✅ॹ,
ᐿ
\;

πa<✅aπ	;✅;�✅;a	
✅ππ	ॹ
\<✅✅<✅	✅<π
;
""��ॹ,ᐿ
aॹᐿπ\π

,�	<�a
π\✅,πॹ",πᐿa,ᐿᐿa<	a	
ॹ
✅;πa✅�	�π",πa
<✅"a	�<ᐿa,
aᐿॹᐿॹᐿa�"\a✅""✅✅ᐿ	"ॹ<
"
π✅✅
\ॹ	;ᐿ"a,ॹ"aॹᐿᐿ
,\
ॹॹ,;ॹ;\

	
,
aॹπ"
	✅ॹ	ᐿ✅;	a�ᐿ		
πᐿ<ॹ	ᐿ
a
ᐿ	ππ<<π	✅;"ॹ

a�<ᐿ
ᐿᐿ";a<ॹ\πॹ	ᐿ

ᐿπ;	;;✅ᐿ✅✅<�ॹ;	ᐿ,,	,π✅
ᐿॹ;"ᐿa,ᐿᐿᐿa
ॹ<aॹ,;π<<
πa�
\,ॹπ�
"ᐿππ
✅ॹπa,πॹ
	<;πᐿᐿ✅ॹ	�a✅�"a,π��,ॹa
\ॹ
ॹ"π"π	a�<π�;a,a<πᐿ
a<	
ॹ\\
\<�\�aπa;\,,
ॹ"✅;"
✅ᐿ✅a
<ππ	π<a	�\<"✅\
ᐿ;	✅�✅π
",ᐿ;ॹ
ᐿ"
aa"
	<,✅<a\
"ॹᐿ
\		"ॹ<,,π�"ॹ<ॹ,\ᐿ<\π"\<ᐿ
ॹ
a	
π;\π\✅,�",,;;,<
	"\"ॹ✅ॹ�
�✅�
�\

ᐿॹ	πa<;;

�a
\ॹॹ	;
<	\<ॹॹ�✅π	"<
	ᐿπᐿ""�;	;ॹ<π<✅
ππ<"ॹ�πᐿ�π,<,<ᐿ<;;�,	<<ᐿ	<	ॹ,π,<\a	;
�a✅	
ᐿᐿ✅;
;�;✅
,;✅ᐿ,\
<,<\	
;<\aᐿ,
;\�ॹ\	";	�;
,	a✅	,
\	
ᐿ✅\"
aᐿ\\";<�✅;aॹ		\		ᐿ�,"
"	aᐿ
aππॹ
πᐿॹ
ॹ	π,π<"
,�
a;�\✅,<""�
ππ	
πaॹaa✅\;\aᐿ,\�;\ᐿᐿ<a";π"\ᐿπ	πॹ;\aa;	
\�<	<ॹ✅
a		<

✅π
ᐿ✅\<,
πᐿ✅a""
✅ॹ\�
\�
ॹ\<\<


', '\xc00913e02a63e4cf532d9b2ce282fad85af699815c18c595ea804462a794f75123135cc728c43daa5aa248d5a17dde4906843049a995cbd0b80d23694897467e10e43cb2ef4662aceef9304835d744e43af04165e3d13cd1f7b9adead9e072bca6ae92fbb52cc2f48f89ae44e020c506fa047bf7e8bf5a51a3054dbba8bef4c40fe97c737b7c8f72adda57c4a29edf179f02f3d0bfd3eafd8e7733b84037ea87984e250ae0406a71b3b02679e34b30c8bc5f731e1598e7bf36ebef7d2464642faaf1cb2e558fd472');
INSERT INTO public.simple VALUES (106, 'ॹॹ;,✅
π<	
π	ॹπ✅a
,
ᐿ�
ॹ✅�ॹ�"✅ॹ\<"
;a\
,✅π
<
<
ॹπᐿ�ᐿ;,�	ᐿ
ᐿaᐿ,
π�	\<ॹ\π;π�π"<;"�\<�,<�\a�<
ॹaᐿaॹ�\ᐿπ,✅ᐿ"<✅✅a	�ॹ	<π;�ॹ\ᐿ;✅\,;\ᐿॹ
ॹᐿππ
ᐿ
ᐿaπ\
π"✅�π
πॹπ"ॹ✅aa�✅
π;ॹ✅
;ॹ,�
ππᐿa\\ᐿ,π<ᐿ✅
�,
ᐿ✅
<�ᐿ""✅,,"
<
✅πa�π
<\ॹ
ॹ�;a��✅ᐿ
,	�;,π<��\�
✅✅�;\

,
ॹ✅π
,
✅	,�<
π	;aπ
<a<
	π"\✅


<ᐿπaπ\�"<✅\a,✅
✅
<""

ᐿ�\	ᐿᐿ;
ᐿa\π<
\

";aπ"�ॹa�"
"✅ππ✅�	�ᐿ	ᐿ\�ᐿ<\
ᐿπ✅	ॹ<π	a"✅	,ॹa✅ᐿ;\✅\,ॹ"a
<ॹ\
<"π\\ᐿ
✅
ᐿ
,
	

<aᐿ;ᐿ;ᐿ;✅a<a,,<	
\ππ\"✅
\a
	πa<<π
✅\π<ॹ,	;<aaaπॹᐿaॹaॹ�,"	,ॹ;\<✅a
ᐿ"
π\aᐿ�ᐿ<ॹ;\<ᐿ
ᐿ
"aᐿᐿπ,"✅ॹ
,<<
<<,ᐿᐿa,ᐿ<;π\�,"π�
ππ�,✅;�a<;�ᐿ	π;"πᐿ\�a"ᐿ\;\ॹ";ॹ;;✅	ॹ
<	
	<aॹ	ᐿ
"ॹᐿ	✅✅�ॹ;;<�	,


	a"\<πᐿa	<
a;	"
π<πॹ
<
✅ᐿॹ✅�<,;✅"
<�π<✅<<✅\;
"ᐿ	�

	,ॹ�"ᐿᐿᐿ,"π
π",a""<�	\πॹ
	aॹᐿ	πॹ,
✅πa<<,

ᐿ;	\<	ᐿ

�"ॹ<

ᐿ
�

πᐿ;
ॹ
"π<"
\ᐿ;;πॹ;�✅�,✅�,a;ᐿ\ॹ"	✅;	<,π,�	"πaᐿ��\ॹ"
	ᐿ	,ॹ✅�ᐿ✅	ᐿ,ॹ✅;;�
✅ᐿ�
πa;\,✅ॹ<ᐿ
π
"
;a	\π
<π"

ᐿ<<ᐿ"
,
"ॹπaᐿπ��
�ᐿॹ,
a
ॹ<�ॹ"
	
,π
�,<ॹ,<
<�✅ᐿ✅a✅<;,�a�\
ॹ<\<✅ॹ"
ॹ�	a;"\ᐿ

✅";✅	,a✅✅<"ᐿ	�π\✅✅�<;"✅π✅ॹ,
π
��<,	a�✅ᐿ
ॹπ
ᐿॹ✅;
ॹ	\
ᐿ�ᐿ
	ᐿ,\;<<a,"π,	ᐿ
π<a"ॹ\aa"";	ᐿ,ॹa
ॹ
π', '\x158fe87f5cf3dff06e50dbd3e81b2242314ba86c2b962f6c0b9e0e91a04496c04af1a1cda0d2cc8305e3e23f4554e89b8200e5b01a8e135a75fdf281775eb7bd48b8e4079cfd997bb422e5519c178597f7c38b620fffb02d766d4fe1fbc3f3ab30a005751cb07b42ea6d70bd8f993f870fb265e3d8bf324c4e0317a79fd30f15240249d2d7045219339ddd587f0141ccde60506d3adb65fda607f86988a7eeacd3b8bf328479cd0ae65d4c29cad96078b41b7ce813821a282f2a2033604ae1d9b0e641644e212dd9');
INSERT INTO public.simple VALUES (107, ';,	""
\<a<πa;\;	\<\a✅	✅ॹ	�✅	
\<ॹ
	ॹ	
✅
,<\<�"	<ᐿ"πॹ�aॹॹ"�
ᐿπ✅ππππa�;�		,a;ॹ	\,π✅
"ᐿ";,�	;\"aॹ"a<<\✅<aॹ�<
ᐿ	"ᐿ	;",;
�	a<
π�
"ᐿππ	,�aa
"
a\�<\ॹ;
\a<	ᐿππ<;π"ॹπ	ॹ"π;
,\✅a✅"<",
		ᐿ✅ॹ	<�aπ"ᐿ\"a✅✅
a	πᐿ✅�\<
��;a<\;
ॹ	π�"
π
"\
;�a,\"
a;<\
a
,\ॹ,\aᐿॹ✅π,;;\;
<;;✅\"
\	ॹ
,	;a"π�;

"	
	ᐿ
��	✅π<✅�aॹ	<
�\;,\π
""ॹa;�;


;πaπ�ॹ	aॹ,
"	
�	
ᐿ

a;"ॹπ,	ॹ
\aᐿᐿ
✅ॹ<a\
"ᐿa;aa,ॹ	
""✅\	;ॹ;πॹॹ�,π;
ᐿ

π
✅�
�
	✅✅aॹ
<",π✅ॹ�,a;\,ᐿॹ<✅
πᐿ"
,π
ॹ<πaॹ<ᐿॹᐿ	✅<aᐿᐿ
"�ᐿᐿ"ॹ<
	ॹ
	
ᐿ
\	ॹ��;ॹ"\\ᐿ✅\a�✅"ॹ	π;a;;ᐿaπ;ᐿ


ᐿ;\�ᐿ	"a;"\�
ॹa;ᐿᐿॹ✅a;",
ᐿ
ᐿॹ,
	�;π"a�,

ᐿ\
✅<
\,
		ॹ,
;<
	�ॹॹॹ✅"aॹπ	ᐿπ

aπ
ॹ,"
"��;;a✅
ᐿ\

�;;	"a✅<,
�,✅π	ᐿπ,
�
aॹπ�	�
�a✅,,	✅	�a
"a,,;ॹ✅
ॹ;\�<
ᐿπ�\;ॹ<	ᐿ	"\;ᐿ
π<
	;\\ॹॹ�,✅,ᐿ
,π,�a;π\a✅
ॹ;	,"ॹa;✅
	,
ॹ�ॹᐿ✅,"
aa✅\ॹaॹaaᐿ��
π		✅	��
a;✅\";ᐿॹॹ
ᐿπ
✅✅"""ॹ	ॹᐿ
\a<a✅
π"\<,	ππ

ॹᐿ;�ॹॹπππ;�ᐿaa"✅ॹ;

ॹ,✅
<
π
ॹ\
ᐿॹ
ॹ;π<
π✅a<,;
	π✅	



";π�✅ॹॹᐿ	,<a";✅a	,
aᐿ
	,,ॹ"πaᐿॹॹ
✅ᐿ<		"ᐿॹa�\;a<a
ᐿ<a,	<
✅
<✅✅
\ᐿπ<ᐿa	<"�;ᐿ	,
,;
✅"ᐿ<ॹ✅π✅\ᐿπ"ᐿ
;ᐿ,✅<a	a"a�;
\ॹᐿ"a�	;"<π✅a✅ॹ,ॹ\\ॹᐿπ;�π<✅�	ॹ;ॹ', '\xf3ff4d451e429e182215aaee06a2d64b6d1aadc9e5031e4b99bf11ae0a796ebc44c85fd174bfccf43cb5f561cd0040e8566209385c6601ddb3fc1472b881d99c8428183c3fae7166ecbd7cc3ba26c55e2f5169c92f2f4691fae28d00f74ecaf24ca41c0d577477c4b2615a7b07d8dd0abb8f6026f0560c8be735092e6fd1322668df4d6b15c52422554e2ca75f2c30531c00dd92d4e7d5b2c494d150ad051371aed6b0eae1a7723c552f2a15b56f9129d9e3115d909e05ac788f4fdee8cf81def8e1fa903b13363e');
INSERT INTO public.simple VALUES (108, '	"ᐿ;
π"�\
✅π\\

a
a<
	ॹπ✅	✅;a�✅,
;\
;
	<
a,
"<ᐿ

ᐿ	�
;<
�<�<"	aπ,✅;\�;
;"�π�a✅
�<	,;✅ᐿπ\
ॹ;a	✅�","
	,"���\";π
✅	a✅ᐿᐿ	aa

<
✅"π\,�;
✅

<,;<
aᐿ�;
";,<✅aa<�"<a�ᐿ	ॹᐿॹ	",✅
	<		�;,
�
�""\✅<,,πॹ;aa",ॹ✅ᐿ";
π<"a
,ॹ
ॹ;<<π	;ᐿ;π
✅π;ᐿa";
ॹ
ππ,ॹ\	�
	a�	;a�<	<ॹ;a;,ॹ\aॹa	"�π�\,\ᐿᐿ	�,	,;✅✅<,
a;π\<	"	,�\�
\a		�;π

✅a,πᐿ;�;�,	✅✅ᐿ
	
ॹ\

,\✅ॹ\	π
a	<,,
\
"✅
\ᐿ�<ᐿ�
	π�ᐿ✅	
,\π\\\π,	✅ᐿ✅
a,aa<�aa"\",aa",";;ॹ<a\;<ᐿ,
\✅ᐿ"�"<�
"	ॹ

	;ॹ✅✅a<\",�	
\�\"πᐿᐿππ
	π
ॹॹ
ᐿ\ॹ	
	�\"✅	a��,✅<,<ॹ
;ॹ<a,�,�✅✅,""ॹ\<ᐿ<;a
π	;"π�
;π;;ᐿ;;	

"ᐿॹa,πॹ
✅\ᐿ
ॹॹa<;aᐿ";ᐿ\		;aπ\✅πॹ\""ᐿππ
,�
πa
,<;<✅✅a

ॹॹॹॹ,	π
✅�
ᐿ"a"ᐿ<ᐿ,✅;\;π	<<ॹ
,
<ᐿ;;✅ᐿॹॹॹ<ᐿᐿ"ᐿa	\\ॹ"\a
	�
ॹᐿᐿ	a,a✅ॹ	ᐿ
<π			
�,
,✅	<<
�"	
�ᐿॹa,
ᐿॹ
		✅;<a,
ॹ,✅
,,ᐿ\✅a;;,�a,ॹॹπ<�<a
"π�✅<,\✅✅aa	π;
\<�
ॹ"<π";"�;\,ᐿ"
<,<ᐿa
<;�
\,ππa"ॹॹ;
a"ॹa;",�

;,ᐿ
ॹ✅π	;π✅π
;a,	�a
�ॹ<;�\

;a�ᐿ;,
�;;a�aπ;"
	<
\<ॹ<<;,;π	\\ᐿ

	,<
a
;
ᐿ

	ᐿ<	ॹ"ᐿ\�\πॹ
<<	a

✅		\,
\ᐿ

✅"ॹ
"ᐿ
ᐿa�π✅✅<	ᐿॹπ\"✅✅a;"ᐿ	\<π\ᐿ	,✅\	
ॹᐿ		�ॹ	<\
	πॹ	;a✅;�a�<,a
π	ᐿॹ;\<a	,aॹ
\
	ᐿॹ<"��<a', '\x5079832da0a39e4f1cd6fdfc633c0fa6d58f41c06e609c1054e40bab03aeed1a6c42a5b424ae38421a8457d894a5593bd1da7f90fa45603d51ff78d8078998d0bbaa2890d02c28b17bcb212775664518ccc4630658ec76ecbc343c7b29929f404f17818a5d5af14a8b452513b5d751885f470b2fe8219c89539716581fe9a6373add13bc3f2c5e3962106a33388f8147f5a13a3727760e5274ad4e6d70599f2976bffa10e6ef87e4751c71c55bddc4d89110ef425700fcacfc228116dab11e390fe19cbd14cd1efc');
INSERT INTO public.simple VALUES (109, '✅,<ᐿ";\
\�
πॹ�

ॹ�ॹॹ<<�
ᐿ	;ॹ
�
	;ᐿ✅\�"<"<
ᐿ,	

;ᐿ\	ᐿ
<ᐿॹ�<;","�a;a,	π
<aa\;"✅✅
	\,,;�;"
�ॹa�,,ππ
"✅\<�
πॹᐿa
ᐿ<✅ॹᐿ
✅;
ᐿ
ॹॹ�<,	π,a	✅
ॹ<aπॹ

<	ॹ<aᐿπ;,πॹ	
aॹ\✅<ॹa		✅";\
ॹ;	✅;
a\
<✅,a;\	
✅"a
a�ॹ<�"ॹ
"�
�ᐿπ��
ᐿ✅
,ᐿ�;�
	a;""�ᐿ\

,πᐿ,ᐿ�ᐿ✅�a;
a"π,;"✅πᐿᐿ
\	\,<<ᐿ�
✅ॹ,;\�
a,;;,\ᐿ		\"ॹ	✅π<π;<<✅ॹ,"a<,;✅✅ॹπॹ"\a\"ॹ�ॹa"a�✅;✅<	<π;�
���π
"<;a<✅
"aa,✅;	;\"<,
��ᐿ
",	;
"ॹ✅;ॹ
�a��a,πॹπᐿ
�;ᐿa	;ᐿ<	�ᐿ<a	;�,,ᐿ

"
a"

ॹ✅

"π\a<✅
π\	"✅
✅π	a\�
\
ॹᐿ✅\
ᐿ�;✅π;	;<\a<�\aᐿॹ
✅"
π	ᐿ
;ॹॹ"ॹπ�a<
\,✅
π\aॹ
,\ᐿa,,ᐿ<ᐿ,✅a<
,
a,
a,ᐿ<ॹaπ""✅,✅π✅	ॹ;
"
"ॹ	<✅"
π
ππ�\ॹa\\�	ॹ;,π	,;,ॹaπ�

a�\ॹ✅π"	�a\,�;


ᐿᐿ
"ᐿ\
,

ॹ<ॹ
a"aᐿ\\✅�ॹ	ॹ;
"✅	<✅ॹ�	✅,	ᐿ
a
;a
ᐿ;ॹ	;π
	ᐿॹ"�;\	"
,;
	""aᐿ	ॹ�a\aa
<✅"a✅	\ॹ��"<"a,�✅\ॹ
;,<\ᐿ"ᐿ<
✅

;✅✅ॹᐿ\	"π<
✅π;πᐿॹ
"	
ॹ;
πᐿa✅	✅�
"<a✅�\
�

"
	
,;�π
�\ॹ;
,a\"✅;ॹ\"π✅	\π✅ॹ	,\ππ\ᐿ""a
ॹπ;	<aॹॹ;✅		
�	\
,
aॹ"π,

\<a;ॹ	
ᐿπᐿॹaπᐿॹ

,;,"✅,	,
✅	π"
ᐿπa
,

;"

πᐿ�"<,;;�aᐿ;,\a<ᐿ,✅�<;ᐿ✅✅ॹ"
π
,

a"ॹ<<"
✅ᐿ✅�\aॹ\✅
ᐿ;
<

�
;
\ᐿaᐿ<<a�
a
,ॹa	,;"<,;<"
"<✅ᐿ
<aᐿ✅

\ॹπ
,
\
	;�π�<aᐿ\	"

', '\xa6fe18955d8177702fc91d5829f4464feef626abe35e0a4ff22575ba7dc2e583259865b82a6b975a76c3aa8119b3a3a72c369836771e1bc52f01797838894c0ff61f190400e00fc0acfad9abd67e485f7470aa7f841f6d18f9d8eba9234daa2071283413e05c0d8be8197e6c201eda08f413e610bf947684ec3b465f40fdc9869ee29c5b74ed20bfb692ff8518faf01335fdbc5c21c35e8f51f4371f48c3b34b84291599ec1fe67db0e51e084756f5c81d7cbff7d1a71e15f5a5ae0a5ea6d721e5e442ed09bb961a');


--
-- Name: second second_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.second
    ADD CONSTRAINT second_pkey PRIMARY KEY (i);


--
-- Name: simple simple_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simple
    ADD CONSTRAINT simple_pkey PRIMARY KEY (i);


--
-- Name: simple_b_s_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX simple_b_s_idx ON public.simple USING btree (b, s);


--
-- Name: simple_s_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX simple_s_idx ON public.simple USING btree (s);


--
-- PostgreSQL database dump complete
--

