#include-once

Func Determinant($aMx)
	Local $c = UBound($aMx)-1
	Local $det1 = 0, $det2 = 0, $mul1 = 1, $mul2
	Local $x, $y
	Local $ex

	Switch $c
		Case 1
			Return $aMx[0][0]*$aMx[1][1] - $aMx[1][0]*$aMx[0][1]
		Case Else
			For $x = 0 To $c
				$mul1 = 1
				$mul2 = 1
				For $y = 0 To $c
					$ex = Mod($x+$y, $c+1)
					$mul1 *= $aMx[$ex][$y]
					$ex = $c-Mod($x+$y, $c+1)
					$mul2 *= $aMx[$ex][$y]
				Next
				$det1 += $mul1
				$det2 += $mul2
			Next
	EndSwitch

	Return $det1-$det2
EndFunc

Func MultiplyArrayByMatrix($Array, $Matrix)
	Local $aRet[UBound($Array)]
	Local $i, $j

	For $i = 0 To (UBound($Array)-1)
		For $j = 0 To (UBound($Matrix, 1)-1)
			$aRet[$i] += $Array[$i]*$Matrix[$j][$i]
		Next
	Next

	Return $aRet
EndFunc

Func IdentityMatrix($n)
	Local $aMx[$n][$n]
	Local $i, $j

	For $i = 0 To ($n-1)
		For $j = 0 To ($n-1)
			If $i = $j Then
				$aMx[$i][$j] = 1
			Else
				$aMx[$i][$j] = 0
			EndIf
		Next
	Next

	Return $aMx
EndFunc

Func TransposeMatrix($Matrix)
	Return _ArrayTranspose($Matrix)
EndFunc
