' file: CaesarCipher.bas
' author: John Eletto 
' website: johneletto.com
' github: git.johneletto.com

Sub encrypt(word As String, shiftAmount as Integer)
    Dim currentCharAscii As Integer
    For i As Integer = 0 To Len(word)
        currentCharAscii = word[i]
        Select Case As Const word[i]
            Case 65 To 90
                word[i] = currentCharAscii + shiftAmount
                If word[i] > 90 Then word[i] -= 26
            Case 32
                word[i] = word[i]
        End Select
        
    Next
    Print "Encrypted: "; word
End Sub

Sub decrypt(word As String, shiftAmount as Integer)
    Dim CurrentCharAscii As Integer
    'For i As Integer = 0 to shiftAmount
        For j As Integer = 0 to Len(word)
            currentCharAscii = word[j]
            Select Case As Const word[j]
                Case 65 To 90
                    word[j] = currentCharAscii - shiftAmount
                    If word[j] < 65 Then word[j] += 26
                Case 32
                    word[j] = word[j]
            End Select
        Next
        Print "Decrypted: "; ": "; word
        'If shiftAmount = 1 Then return
        'decrypt word, shiftAmount - 1
    'Next
End Sub

Sub solve(word As String, shiftAmount as Integer)
    Dim CurrentCharAscii As Integer
    'For i As Integer = 0 to shiftAmount
        For j As Integer = 0 to Len(word)
            currentCharAscii = word[j]
            Select Case As Const word[j]
                Case 65 To 90
                    word[j] = currentCharAscii - shiftAmount
                    If word[j] < 65 Then word[j] += 26
                Case 32
                    word[j] = word[j]
            End Select
        Next
        Print "Caesar "; shiftAmount; ": "; word
        If shiftAmount = 1 Then return
        solve word, shiftAmount - 1
    'Next
End Sub



Dim As Integer shiftAmount = 25
Dim As String word = "THIS IS A TEST STRING FROM JOHN ELETTO" 

encrypt word, shiftAmount

decrypt word, shiftAmount

Print "Solving:"

solve word, 26
