#Requires AutoHotkey v2.0

;To change from us layout to japanese and dev layout
;Physical keyboard layout: us qwerty layout
;OS keyboard: English keyboard 101/102 key
;Sharpkey: LCtrl -> RCtrl (to preserve ctrl position for gaming)
;          Caps -> LCtrl (to completely remove the kanji switching)
;          Tilde `~ (SC029) -> Enter (to completely remove the kanji switching)
;          RCtrl -> F13 (to remap in ahk to Enter, not mess up with above ctrl remap)
;Tested on Keychron K2 us layout

;Number row
+SC002::+1     ; Shift1: !
+SC003::+SC028 ;Shift2: "
+SC004::+3 ;Shift3: #
+SC005::+4 ;Shift4: $
+SC006::+5 ;Shift5: %
+SC007::+7 ;Shift6: &
+SC008::SC028 ;Shift7: '
+SC009::+9 ;Shift8: (
+SC00A::+0 ;Shift9: )
+SC00B::+\ ;Shift0: |
SC00C::-
+SC00C::=
SC00D::^
+SC00D::~

SC01A::@
+SC01A::`
SC01B::[
+SC01B::+[
SC02B::]
+SC02B::+]

SC027::;
+SC027::+
SC028:::
+SC028::*

;SC136::\
;+SC136::_

;----------------------------------------------------------------------
;My Preference for dev
;----------------------------------------------------------------------
SC0136::_
+SC136::\

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

;RAlt to Backspace and F13 to Enter (using thumbs and right palm)
SC138::Backspace
SC11D::Esc ;RCtrl when press alone is Esc
F13::Enter
Tab::Tab

; Symbol layer
Tab & q::+SC029 ;~
Tab & w::^ ;^
Tab & e::+ ;+
Tab & r::- ;-
Tab & y::+7 ;&
Tab & u::+9 ;(
Tab & i::+0 ;)
Tab & o::+SC01A ;{
Tab & p::+SC01B ;}
Tab & SC01A::+4 ;$

Tab & f::SC00D ;=
Tab & h::+3 ;#
Tab & j::SC028  ;'
Tab & k::+SC028 ;"
Tab & l::+SC035 ;?
Tab & SC027::+5 ;%
Tab & SC028::| ;colon : to |

Tab & n::+1 ;!
Tab & m::SC01A ;[
Tab & ,::SC01B ;]
Tab & .::SC029 ;`
Tab & /::+2 ;@

;Enter (Tilde position) to numpad
Enter & SC01A::+4 ;$ for vim
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
Tab & SC002::F1
Tab & SC003::F2
Tab & SC004::F3
Tab & SC005::F4
Tab & SC006::F5
Tab & SC007::F6
Tab & SC008::F7
Tab & SC009::F8
Tab & SC00A::F9
Tab & SC00B::F10

;For unikey
PrintScreen::!z
