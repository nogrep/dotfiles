#Requires AutoHotkey v2.0

;To change from us layout to japanese and dev layout
;Physical keyboard layout: us qwerty layout
;OS keyboard layout: Japanese keyboard 107 key layout
;Sharpkey: LCtrl -> RCtrl (to preserve ctrl position for gaming)
;          Caps -> LCtrl (to completely remove the kanji switching)
;          Tilde `~ (SC029) -> Enter (to completely remove the kanji switching)
;          RCtrl -> F13 (to remap in ahk to Enter, not mess up with above ctrl remap)
;Tested on Keychron K2 us layout


;RAlt to Backspace and F13 to Enter (using thumbs and right palm)
SC138::Backspace
SC11D::Esc ;RCtrl when press alone is Esc
F13::Enter
Enter::Enter

; Movement
;RCtrl to Esc when press alone, with hjkl to arrow keys
>^h::Left
>^j::Down
>^k::Up
>^l::Right
>^u::PgUp
>^p::PgDn
>^i::Home
>^o::End

>^a::Left
>^s::Down
>^w::Up
>^d::Right
>^e::PgUp
>^q::PgDn
>^r::Home
>^f::End

; Symbol layer
Tab::Tab

Tab & q::~ ;~
Tab & w::^ ;^
Tab & e::+; ;+
Tab & r::- ;-
Tab & y::+6 ;&
Tab & u::+8 ;(
Tab & i::+9 ;)
Tab & o::+[ ;{
Tab & p::+] ;}
Tab & @::+4 ;$

Tab & f::+- ;=
Tab & h::+3 ;#
Tab & j::+7 ;'
Tab & k::+2 ;"
Tab & l::? ;?
Tab & `;::+5 ;%
Tab & SC028::| ;colon : to |

Tab & n::+1 ;!
Tab & m::[ ;[
Tab & ,::] ;]
Tab & .::` ;`
Tab & /::@ ;@
SC0136::_
+SC136::\

;Enter (Tilde position) to numpad
Enter & @::+4 ;$ for vim
Enter & p::0
Enter & m::1
Enter & ,::2
Enter & .::3
Enter & j::4
Enter & k::5
Enter & l::6
Enter & u::7
Enter & i::8
Enter & o::9
Tab & 1::F1
Tab & 2::F2
Tab & 3::F3
Tab & 4::F4
Tab & 5::F5
Tab & 6::F6
Tab & 7::F7
Tab & 8::F8
Tab & 9::F9
Tab & 0::F10

;For unikey
PrintScreen::!z
;https://qiita.com/snytng/items/ec72d5dd892d3a520d6e
