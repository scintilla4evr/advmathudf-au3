#include-once

;
Global Const $USE_ADVMATHUDF = 1

; Primality tests
Global Enum $M_PRIME_NAIVE1 = 0, _
			$M_PRIME_NAIVE2, _
			$M_PRIME_NAIVE3, _
			$M_PRIME_AKS, _
			$M_PRIME_LUCAS, _
			$M_PRIME_LUCASLEHMER

; Limit constants
Global Enum $M_LIMIT_PLUSINFINITY = 0, _
			$M_LIMIT_MINUSINFINITY

; GraphFindPathDijkstra()
Global Enum $M_GFP_LESS = 0, _
			$M_GFP_LESSOREQUAL

; AlphaMaxBetaMin()
Global Const $M_ALPHA_DEFAULT = (2 * Cos($Pi/8))/(1 + Cos($Pi/8))
Global Const $M_BETA_DEFAULT = (2 * Sin($Pi/8))/(1 + Cos($Pi/8))

; WarpFactor()
Global Enum $M_WARP_ORIGINALSERIES = 0, _
			$M_WARP_REFINED

; _MathCheckDiv()
Global Const $MATH_ISNOTDIVISIBLE = 1
Global Const $MATH_ISDIVISIBLE = 2

; _Degree(), _Radian()
Global Const $MATH_DEGREES = 57.2957795130823