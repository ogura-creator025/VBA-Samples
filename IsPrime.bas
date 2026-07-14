Option Explicit

'==========================================================
' 関数名：IsPrime
' 概要　：引数で指定した数値が素数かどうかを判定します。
'
' 引数
'   n：判定対象の数値
'
' 戻り値
'   True  ：素数
'   False ：素数ではない
'==========================================================
Public Function IsPrime(ByVal n As Long) As Boolean

    Dim i As Long

    ' 1以下は素数ではない
    If n <= 1 Then Exit Function

    ' 2と3は素数
    If n <= 3 Then
        IsPrime = True
        Exit Function
    End If

    ' 偶数は2以外すべて素数ではない
    If n Mod 2 = 0 Then Exit Function

    ' 3から平方根まで奇数のみを調べる
    i = 3
    Do While i <= Sqr(n)

        ' 割り切れた場合は素数ではない
        If n Mod i = 0 Then Exit Function

        ' 偶数は判定不要のため2ずつ増やす
        i = i + 2

    Loop

    ' 最後まで割り切れなかった場合は素数
    IsPrime = True

End Function
