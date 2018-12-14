#include "BigNum.hh"

BigNum operator + (const BigNum& left, const BigNum& right) {
	BigNum ans;
		ans.d = left.d + right.d;
                ans.c = left.c + right.c;
                ans.b = left.b + right.b;
                ans.a = left.a + right.a;
		return ans;
}

