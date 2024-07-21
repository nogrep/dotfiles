Esc::Esc
;*Escape::Send('{Escape}')
Enter::Enter

; Movement
Esc & h::Left
Esc & j::Down
Esc & k::Up
Esc & l::Right
Esc & i::Home
Esc & o::End
Esc & u::PgUp
Esc & p::PgDn

Esc & a::Left
Esc & s::Down
Esc & w::Up
Esc & d::Right
Esc & e::Home
Esc & q::End
Esc & r::PgUp
Esc & f::PgDn

; Symbol layer
Enter & q::~ ;~
Enter & w::| ;|
Enter & e::^ ;^
Enter & r::- ;-
Enter & t::SC073 ;\
Enter & y::+6 ;&
Enter & u::+8 ;(
Enter & i::+9 ;)
Enter & o::+[ ;{
Enter & p::+] ;}
Enter & @::+@ ;`

Enter & a::[ ;[
Enter & s::] ;]
Enter & d::+5 ;%
Enter & f::+- ;=
Enter & g::+4 ;$
Enter & h::+3 ;#
Enter & j::+7 ;'
Enter & k::+2 ;"
Enter & l::? ;?
Enter & `;::+; ;+
Enter & SC028::+SC028 ;*

Enter & n::+1 ;!
Enter & ,::+, ;<
Enter & .::+. ;>
Enter & /::+/ ;?
SC073::+SC073 ;_
Enter & SC073::SC073 ;\

;Right Ctrl to numpad
Enter & 1::F1
Enter & 2::F2
Enter & 3::F3
Enter & 4::F4
Enter & 5::F5
Enter & 6::F6
Enter & 7::F7
Enter & 8::F8
Enter & 9::F9
Enter & 0::F10
;https://qiita.com/snytng/items/ec72d5dd892d3a520d6e

;Make shift sticky
;Shift::
;    Send, {Shift down}
;    KeyWait, Shift
;    Send, {Shift up}
;    Input, SingleKey, L1
;    If (SingleKey != "")
;        Send, +%SingleKey%
;return
