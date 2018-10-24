#include "stdafx.h"
#include "GRB.h"
#define GRB_ERROR_SERIES 600

typedef short GRBALPHABET;
namespace GRB
{
	#define NS(n) GRB::Rule::Chain::N(n)
	#define TS(n) GRB::Rule::Chain::T(n)
	

	Greibach greibach(NS('S'), TS('$'), 6,
		//		S->m{ NrE; }; | tfi(F) { NrE; }; S | m{ NrE; }; S
		Rule(NS('S'), GRB_ERROR_SERIES + 0, 3
			, Rule::Chain(8, TS('m'), TS('{'), NS('N'), TS('r'), NS('E'), TS(';'), TS('}'), TS(';'))
			, Rule::Chain(14, TS('t'), TS('f'), TS('i'), TS('('), NS('F'), TS(')'), TS('{'), NS('N'), TS('r'), NS('E'), TS(';'), TS('}'), TS(';'), NS('S'))
			, Rule::Chain(9, TS('m'), TS('{'), NS('N'), TS('r'), NS('E'), TS(';'), TS('}'), TS(';'), NS('S')))
		//		N -> ti; | ti=E; | ti=E;N | rE; | i=E; | ti;N | re;N | i=E;N | oE;| oE;N| pE;| pE;N|  x(X){N}| x(X){N}N| c(L){N}| b(L){N}| b(L){N}a{N}| c(L){N}N| b(L){N}N| b(L){N}a{N}N|
		//
		, Rule(NS('N'), GRB_ERROR_SERIES + 1, 20
			, Rule::Chain(3, TS('t'), TS('i'), TS(';'))
			, Rule::Chain(5, TS('t'), TS('i'), TS('='), NS('E'), TS(';'))
			, Rule::Chain(6, TS('t'), TS('i'), TS('='), NS('E'), TS(';'), NS('N'))
			, Rule::Chain(3, TS('r'), NS('E'), TS(';'))
			, Rule::Chain(4, TS('i'), TS('='), NS('E'), TS(';'))
			, Rule::Chain(4, TS('i'), TS('='), NS('L'), TS(';'))
			, Rule::Chain(5, TS('i'), TS('='), NS('L'), TS(';'), NS('N'))
			, Rule::Chain(4, TS('t'), TS('i'), TS(';'), NS('N'))
			, Rule::Chain(4, TS('r'), TS('E'), TS(';'), NS('N'))
			, Rule::Chain(5, TS('i'), TS('='), NS('E'), TS(';'), NS('N'))
			, Rule::Chain(3, TS('o'), NS('E'), TS(';'))
			, Rule::Chain(4, TS('o'), NS('E'), TS(';'), NS('N'))
			, Rule::Chain(3, TS('p'), NS('E'), TS(';'))
			, Rule::Chain(4, TS('p'), NS('E'), TS(';'), NS('N'))
			, Rule::Chain(8, TS('x'), TS('('), NS('X'), TS(')'), TS('{'), NS('N'), TS('}'), NS('N'))
			, Rule::Chain(7, TS('x'), TS('('), NS('X'), TS(')'), TS('{'), NS('N'), TS('}'))
			, Rule::Chain(12, TS('b'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}'), NS('a'), TS('{'), NS('N'), TS('}'), NS('N'))
			, Rule::Chain(8, TS('b'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}'), NS('N'))
			, Rule::Chain(11, TS('b'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}'), NS('a'), TS('{'), NS('N'), TS('}'))
			, Rule::Chain(7, TS('b'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}'))
			, Rule::Chain(8, TS('c'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}'), NS('N'))
			, Rule::Chain(7, TS('c'), TS('('), NS('L'), TS(')'), TS('{'), NS('N'), TS('}')))
//		E -> i | l | (E) | i(W) | iM | lM | (E)M | i(W)M
		, Rule(NS('E'), GRB_ERROR_SERIES + 2, 12
			, Rule::Chain(1, TS('i'))
			, Rule::Chain(1, TS('l'))
			, Rule::Chain(3, TS('('), NS('E'), TS(')'))
			, Rule::Chain(4, TS('i'), TS('('), NS('W'), TS(')'))
			, Rule::Chain(2, TS('i'), NS('M'))
			, Rule::Chain(2, TS('l'), NS('M'))
			, Rule::Chain(2, TS('i'), NS('L'))
			, Rule::Chain(2, TS('l'), NS('L'))
			, Rule::Chain(4, TS('('), NS('E'), TS(')'), NS('L'))
			, Rule::Chain(5, TS('i'), TS('('), NS('W'), TS(')'), NS('L'))
			, Rule::Chain(4, TS('('), NS('E'), TS(')'), NS('M'))
			, Rule::Chain(5, TS('i'), TS('('), NS('W'), TS(')'), NS('M')))
//			M -> vE | vEM
		, Rule(NS('M'), GRB_ERROR_SERIES + 3, 2
			, Rule::Chain(2, TS('v'), NS('E'))
			, Rule::Chain(3, TS('v'), NS('E'), NS('M')))
		, Rule(NS('L'), GRB_ERROR_SERIES + 4, 3
			, Rule::Chain(2, TS('s'), NS('E'))
			, Rule::Chain(1, TS('l'))
			, Rule::Chain(3, NS('E'), TS('s'), NS('E')))
//			F -> ti | ti,F
		, Rule(NS('F'), GRB_ERROR_SERIES + 5, 2
			, Rule::Chain(2, TS('t'), TS('i'))
			, Rule::Chain(4, TS('t'), TS('i'), TS(','), NS('F')))
//			W -> i | l | i,W | l,W
		, Rule(NS('W'), GRB_ERROR_SERIES + 6, 4
			, Rule::Chain(1, TS('i'))
			, Rule::Chain(1, TS('l'))
			, Rule::Chain(3, TS('i'), TS(','), NS('W'))
			, Rule::Chain(3, TS('l'), TS(','), NS('W')))
		, Rule(NS('X'), GRB_ERROR_SERIES + 7, 4
			, Rule::Chain(5, NS('D'), TS(';'), NS('L'), TS(';'), NS('U'))
			, Rule::Chain(3, TS(';'), NS('L'), TS(';'))
			, Rule::Chain(4, NS('D'), TS(';'), NS('L'), TS(';'))
			, Rule::Chain(4, TS(';'), NS('L'), TS(';'), NS('U')))
		, Rule(NS('D'), GRB_ERROR_SERIES + 8, 3
			, Rule::Chain(2, TS('t'), TS('i'))
			, Rule::Chain(4, TS('t'), TS('i'), TS('='), NS('E'))
			, Rule::Chain(3, TS('i'), TS('='), NS('E')))
		, Rule(NS('U'), GRB_ERROR_SERIES + 9, 1
			, Rule::Chain(4, TS('i'), TS('='), NS('E'), TS(';')))
	);

	Rule::Chain::Chain(short psize, GRBALPHABET s, ...)
	{
		nt = new GRBALPHABET[size = psize];
		int* p = (int*)&s;
		for (short i = 0; i < psize; ++i)
			nt[i] = (GRBALPHABET)p[i];
	};

	Rule::Rule(GRBALPHABET pnn, int piderror, short psize, Chain c, ...)
	{
		nn = pnn;
		iderror = piderror;
		chains = new Chain[size = psize];
		Chain* p = &c;
		for (int i = 0; i < size; ++i)
			chains[i] = p[i];
	};


	Greibach::Greibach(GRBALPHABET pstartN, GRBALPHABET pstbottom, short psize, Rule r, ...)
	{
		startN = pstartN;
		stbottomT = pstbottom;
		rules = new Rule[size = psize];
		Rule* p = &r;
		for (int i = 0; i < size; ++i)
			rules[i] = p[i];
	}

	Greibach getGreibach()
	{
		return greibach;
	}

	short Greibach::getRule(GRBALPHABET pnn, Rule& prule)
	{
		short rc = -1;
		short k = 0;
		while (k < size && rules[k].nn != pnn)
			++k;
		if (k < size)
			prule = rules[rc = k];
		return rc;
	}

	Rule Greibach::getRule(short n)
	{
		Rule rc;
		if (n < size)
			rc = rules[n];
		return rc;
	};

	char* Rule::getCRule(char* b, short nchain)
	{
		char bchain[200];
		b[0] = Chain::alphabet_to_char(nn);
		b[1] = '-';
		b[2] = '>';
		b[3] = 0x00;
		chains[nchain].getCChain(bchain);
		strcat_s(b, sizeof(bchain) + 5, bchain);
		return b;
	};

	short Rule::getNextChain(GRBALPHABET t, Rule::Chain& pchain, short j)
	{
		short rc = -1;
		while (j < size && chains[j].nt[0] != t)
			++j;
		rc = (j < size ? j : -1);
		if (rc >= 0)
			pchain = chains[rc];
		return rc;
	}

	char* Rule::Chain::getCChain(char* b)
	{
		for (int i = 0; i < size; ++i)
			b[i] = alphabet_to_char(nt[i]);
		b[size] = 0x00;
		return b;
	}

}
