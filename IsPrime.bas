Public Function IsPrime(ByVal n As Long) As Boolean

    Dim i As Long
    Dim limit As Long

    ' 1以下は素数ではない
    If n <= 1 Then Exit Function

    ' 2と3は素数
    If n <= 3 Then
        IsPrime = True
        Exit Function
    End If

    ' 偶数は2以外すべて素数ではない
    If n Mod 2 = 0 Then Exit Function

    ' 3から平方根まで奇数のみを調べる（上限をあらかじめ算出）
    limit = Fix(Sqr(n))
    
    For i = 3 To limit Step 2
        ' 割り切れた場合は素数ではない
        If n Mod i = 0 Then Exit Function
    Next i

    ' 最後まで割り切れなかった場合は素数
    IsPrime = True

End Function
