#include-once

Func BesselY0($x)
	Return BesselYn($x, 0)
EndFunc

Func BesselY1($x)
	Return BesselYn($x, 1)
EndFunc

Func BesselYn($x, $n)
	Local $aParams = [$n, $x]

	Local $intValue1 = Integral(_BesselYnIntegral1, 0, $Pi, 0.001, $aParams)
	Local $intValue2 = Integral(_BesselYnIntegral2, 0, $Pi, 0.001, $aParams)

	Return (1/$Pi)*$intValue1 - (1/$Pi)*$intValue2
EndFunc

Func _BesselYnIntegral1($t, $aParams)
	Local $n = $aParams[0]
	Local $x = $aParams[1]

	Return Sin($x*Sin($t) - $n*$t)
EndFunc

Func _BesselYnIntegral2($t, $aParams)
	Local $n = $aParams[0]
	Local $x = $aParams[1]

	Return (Exp($n*$t) + Exp(-$n*$t)*Cos($n*$Pi))*Exp(-$x * Sinh($t))
EndFunc