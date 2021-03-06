.586
.model FLAT, C , stdcall
includelib libucrt.lib 
includelib StanLib.lib 
includelib kernel32.lib 
ExitProcess PROTO : DWORD 
.stack 4096
 inputfpi PROTO: DWORD
 outputstrfpi PROTO : DWORD
 outputflfpi  PROTO : REAL4
 outputintfpi PROTO : DWORD
 msin  PROTO : REAL4
 mcos  PROTO : REAL4
 mtan  PROTO : REAL4
 mctan PROTO : REAL4
 mln   PROTO : REAL4
 mabs  PROTO : DWORD
 msqr  PROTO : DWORD
 strlenfpi PROTO : DWORD
 strfind   PROTO : DWORD, : DWORD

.const
	INTLIT0		DWORD	10
	INTLIT1		DWORD	23
	INTLIT2		DWORD	100
	BLLIT0		DWORD	0
	INTLIT3		DWORD	10
	STRLIT0		DB	"more or equal", 0
	BLLIT1		DWORD	1
	STRLIT1		DB	"less", 0
	BLLIT2		DWORD	0
	FLLIT0		REAL4	12.3
	FLLIT1		REAL4	1.54
	STRLIT2		DB	"fisrts string", 0
	STRLIT3		DB	"second string", 0
	STRLIT4		DB	"str", 0
	INTLIT4		DWORD	10
	BLLIT3		DWORD	1
	INTLIT5		DWORD	5
	INTLIT6		DWORD	6
	INTLIT7		DWORD	1
	INTLIT8		DWORD	5
	INTLIT9		DWORD	10
	FLLIT2		REAL4	3.14
	STRLIT5		DB	"sin", 0
	FLLIT3		REAL4	0.01
	STRLIT6		DB	"cos", 0
	FLLIT4		REAL4	1.3
	STRLIT7		DB	"tan", 0
	FLLIT5		REAL4	2.14
	STRLIT8		DB	"ctan", 0
	FLLIT6		REAL4	0.2
	STRLIT9		DB	"mln e", 0
	INTLIT10		DWORD	9
	STRLIT10		DB	"sqr 9", 0
	STRLIT11		DB	"5-10", 0
	STRLIT12		DB	"isglobal before funadd", 0
	BLLIT4		DWORD	0
	BLLIT5		DWORD	0
	STRLIT13		DB	"flag unless false", 0
	FLLIT7		REAL4	1.01
	INTLIT11		DWORD	0
	BLLIT6		DWORD	0
	INTLIT12		DWORD	1
	INTLIT13		DWORD	3
	STRLIT14		DB	"flag is true", 0
	BLLIT7		DWORD	1
	STRLIT15		DB	"input string", 0
	STRLIT16		DB	"inputing string", 0
	FLLIT8		REAL4	23.43
	INTLIT14		DWORD	30
	INTLIT15		DWORD	40
	INTLIT16		DWORD	2
	INTLIT17		DWORD	1
	INTLIT18		DWORD	0
	STRLIT17		DB	"isglobal after funadd", 0
	INTLIT19		DWORD	1
	INTLIT20		DWORD	0
	INTLIT21		DWORD	5
	INTLIT22		DWORD	1
	INTLIT23		DWORD	0
	INTLIT24		DWORD	2
	INTLIT25		DWORD	1
	INTLIT26		DWORD	2
	INTLIT27		DWORD	2

.data
	system_pause_fpi			DB	255 dup(0)
	__temp__var__fpi			REAL4	0.0
	foo__funadddiv			DWORD	0
	$isgl			DWORD	0
	foo__retflb			REAL4	0.0
	foo__stateb			DWORD	0
	foo__statecheckstate			DWORD	0
	foo__programtestflone			REAL4	0.0
	foo__programstrokaa			DB	255 dup(0)
	foo__programsrokabb			DB	255 dup(0)
	foo__programkek			DWORD	0
	foo__programchek			DWORD	0
	foo__programlolb			DB	255 dup(0)
	foo__programandreymuha			DWORD	0
	foo__programcheckuntil			DWORD	0
	foo__programtestabs			DWORD	0
	foo__programtestfun			REAL4	0.0
	foo__programsizestrokaaa			DWORD	0
	foo__programflag			DWORD	0
	foo__programcount			DWORD	0
	foo__programnewstr			DB	255 dup(0)
	foo__programlol			DB	255 dup(0)
	foo__programtestfltwo			REAL4	0.0
	foo__programb			DWORD	0
	foo__programi			DWORD	0
	foo__programj			DWORD	0

.code
	foo__funadd PROC foo__funadda : DWORD, foo__funaddc : DWORD 
		PUSH 	INTLIT0
		POP 	EAX
		MOV	foo__funadddiv,EAX
		PUSH 	INTLIT1
		POP 	EAX
		MOV	$isgl,EAX
		PUSH 	foo__funadda
		PUSH 	foo__funaddc
		POP 	EDX
		POP 	EBX
		ADD	EBX,EDX
		PUSH 	EBX
		PUSH 	foo__funadddiv
		POP 	EBX
		POP 	EAX
		MOV	EDX,0
		DIV	EBX
		MOV	EBX,EAX
		PUSH 	EBX
		POP 	EAX
		ret
	foo__funadd ENDP
	foo__retfl PROC foo__retfla : REAL4, foo__retflc : REAL4 
		FLD	foo__retfla
		FLD	foo__retflc
		FADD
		FSTP	[foo__retflb]
		FLD	foo__retflb
		FSTP	[foo__retflb]
		MOV	EAX,OFFSET foo__retflb
		ret
	foo__retfl ENDP
	foo__state PROC foo__stateinta : DWORD 
		PUSH 	INTLIT2
		PUSH 	foo__stateinta
		POP 	EDX
		POP 	EBX
		SUB	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__stateb,EAX
		PUSH 	BLLIT0
		POP 	EAX
		MOV	foo__statecheckstate,EAX
		MOV	EAX,foo__stateb
		CMP	EAX,INTLIT3
		JA		if00
		JE		if00
		JB		endif00

if00:
		PUSH 	OFFSET STRLIT0
		CALL		outputstrfpi
		PUSH 	BLLIT1
		POP 	EAX
		MOV	foo__statecheckstate,EAX
		JMP		endalias0
endif00:
		PUSH 	OFFSET STRLIT1
		CALL		outputstrfpi
		PUSH 	BLLIT2
		POP 	EAX
		MOV	foo__statecheckstate,EAX
endalias0:
		PUSH 	foo__statecheckstate
		POP 	EAX
		ret
	foo__state ENDP
	main PROC 
		PUSH 	FLLIT0
		PUSH 	FLLIT1
		CALL		foo__retfl
		FLD	DWORD PTR [EAX]
		FSTP	[foo__programtestflone]
		MOV	ESI,OFFSET STRLIT2
		MOV	EDI , OFFSET  foo__programstrokaa + 0
		MOV	ECX,14
		REP MOVSB
		MOV	ESI,OFFSET STRLIT3
		MOV	EDI , OFFSET  foo__programsrokabb + 0
		MOV	ECX,14
		REP MOVSB
		PUSH 	OFFSET STRLIT4
		PUSH 	OFFSET foo__programsrokabb
		CALL		strfind
		PUSH 	EAX
		POP 	EAX
		MOV	foo__programkek,EAX
		PUSH 	INTLIT4
		CALL		foo__state
		PUSH 	EAX
		POP 	EAX
		MOV	foo__programchek,EAX
		MOV	ESI,OFFSET foo__programstrokaa
		MOV	EDI , OFFSET foo__programlolb + 0
		MOV	ECX,14
		REP MOVSB
		PUSH 	BLLIT3
		POP 	EAX
		MOV	foo__programandreymuha,EAX
		PUSH 	INTLIT5
		POP 	EAX
		MOV	foo__programcheckuntil,EAX
until0:
		PUSH 	foo__programcheckuntil
		PUSH 	INTLIT7
		POP 	EDX
		POP 	EBX
		ADD	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programcheckuntil,EAX
		MOV	EAX,foo__programcheckuntil
		CMP	EAX,INTLIT6
		JA		until0
		JB		enduntil0

enduntil0:
		PUSH 	INTLIT8
		PUSH 	INTLIT9
		POP 	EDX
		POP 	EBX
		SUB	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programtestabs,EAX
		PUSH 	FLLIT2
		CALL		msin
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT5
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	FLLIT3
		CALL		mcos
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT6
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	FLLIT4
		CALL		mtan
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT7
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	FLLIT5
		CALL		mctan
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT8
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	FLLIT6
		CALL		mln
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT9
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	INTLIT10
		CALL		msqr
		MOV	__temp__var__fpi,EAX
		FLD	DWORD PTR [__temp__var__fpi]
		FSTP	dword ptr [__temp__var__fpi]
		FSTP	[foo__programtestfun]
		PUSH 	OFFSET STRLIT10
		CALL		outputstrfpi
		PUSH 	foo__programtestfun
		CALL		outputflfpi
		PUSH 	foo__programtestabs
		CALL		mabs
		PUSH 	EAX
		POP 	EAX
		MOV	foo__programtestabs,EAX
		PUSH 	OFFSET STRLIT11
		CALL		outputstrfpi
		PUSH 	foo__programtestabs
		CALL		outputintfpi
		PUSH 	OFFSET STRLIT12
		CALL		outputstrfpi
		PUSH 	$isgl
		CALL		outputintfpi
		PUSH 	OFFSET foo__programsrokabb
		CALL		strlenfpi
		PUSH 	EAX
		POP 	EAX
		MOV	foo__programsizestrokaaa,EAX
		PUSH 	BLLIT4
		POP 	EAX
		MOV	foo__programflag,EAX
		MOV	EAX,foo__programflag
		CMP	EAX,BLLIT5
		JNE		unless1
		JE		endunless1

unless1:
		PUSH 	OFFSET STRLIT13
		CALL		outputstrfpi
		FLD	foo__programtestflone
		FLD	[FLLIT7]
		FADD
		FSTP	[foo__programtestflone]
endunless1:
		PUSH 	INTLIT11
		POP 	EAX
		MOV	foo__programcount,EAX
while2:
		PUSH 	foo__programcount
		PUSH 	INTLIT12
		POP 	EDX
		POP 	EBX
		ADD	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programcount,EAX
		MOV	EAX,foo__programcount
		CMP	EAX,INTLIT13
		JE		if03
		JNE		endif03

if03:
		PUSH 	OFFSET STRLIT14
		CALL		outputstrfpi
		PUSH 	BLLIT7
		POP 	EAX
		MOV	foo__programflag,EAX
endif03:
		MOV	EAX,foo__programflag
		CMP	EAX,BLLIT6
		JE		while2
		JNE		endwhile2

endwhile2:
		PUSH 	OFFSET STRLIT15
		CALL		outputstrfpi
		PUSH 	OFFSET foo__programnewstr
		CALL		inputfpi
		PUSH 	OFFSET STRLIT16
		CALL		outputstrfpi
		PUSH 	OFFSET foo__programnewstr
		CALL		outputstrfpi
		MOV	ESI,OFFSET foo__programstrokaa
		MOV	EDI , OFFSET foo__programlol + 0
		MOV	ECX,14
		REP MOVSB
		MOV	ESI,OFFSET foo__programsrokabb
		MOV	EDI , OFFSET foo__programlol + 13
		MOV	ECX,14
		REP MOVSB
		PUSH 	OFFSET foo__programlol
		CALL		outputstrfpi
		FLD	[FLLIT8]
		FLD	foo__programtestflone
		FSUB
		FSTP	[foo__programtestfltwo]
		PUSH 	INTLIT14
		PUSH 	INTLIT15
		CALL		foo__funadd
		PUSH 	EAX
		PUSH 	INTLIT16
		POP 	EBX
		POP 	EAX
		MOV	EDX,0
		MUL	EBX
		MOV	EBX,EAX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programb,EAX
		PUSH 	INTLIT17
		POP 	EAX
		MOV	foo__programi,EAX
		PUSH 	INTLIT18
		POP 	EAX
		MOV	foo__programj,EAX
		PUSH 	OFFSET STRLIT17
		CALL		outputstrfpi
		PUSH 	$isgl
		CALL		outputintfpi
		PUSH 	INTLIT19
		POP 	EAX
		MOV	foo__programb,EAX
		PUSH 	INTLIT20
		POP 	EAX
		MOV	foo__programi,EAX
for4:
		PUSH 	INTLIT23
		POP 	EAX
		MOV	foo__programj,EAX
for5:
		PUSH 	foo__programb
		PUSH 	INTLIT26
		POP 	EBX
		POP 	EAX
		MOV	EDX,0
		MUL	EBX
		MOV	EBX,EAX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programb,EAX
		PUSH 	foo__programj
		PUSH 	INTLIT25
		POP 	EDX
		POP 	EBX
		ADD	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programj,EAX
		MOV	EAX,foo__programj
		CMP	EAX,INTLIT24
		JB		for5
		JA		endfor5

endfor5:
		PUSH 	foo__programb
		PUSH 	INTLIT27
		POP 	EBX
		POP 	EAX
		MOV	EDX,0
		MUL	EBX
		MOV	EBX,EAX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programb,EAX
		PUSH 	foo__programi
		PUSH 	INTLIT22
		POP 	EDX
		POP 	EBX
		ADD	EBX,EDX
		PUSH 	EBX
		POP 	EAX
		MOV	foo__programi,EAX
		MOV	EAX,foo__programi
		CMP	EAX,INTLIT21
		JB		for4
		JA		endfor4

endfor4:
		PUSH 	foo__programb
		CALL		outputintfpi
	PUSH OFFSET system_pause_fpi
	call inputfpi
	PUSH 0
	CALL ExitProcess

	main ENDP
end main

