#Requires AutoHotkey v2.0

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

;LCtrl to Esc when press alone, with hjkl to arrow keys
LCtrl::Esc
<^h::Left
<^j::Down
<^k::Up
<^l::Right
<^u::PgUp
<^p::PgDn
<^i::Home
<^o::End

;Capslock to RCtrl to not collide with above LCtrl
SetCapsLockState "AlwaysOff"
CapsLock::RCtrl

;RAlt to Backspace and RCtrl to Enter (using thumbs and right palm)
SC138::Backspace
SC11D::Enter

;All symbols within homerow
Tab & q::+SC029 ;~
Tab & w::^ ;^
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
Tab::Tab

;~ to numpad
SC029 & n::0
SC029 & m::1
SC029 & ,::2
SC029 & .::3
SC029 & j::4
SC029 & k::5
SC029 & l::6
SC029 & u::7
SC029 & i::8
SC029 & o::9
SC029 & 1::F1
SC029 & 2::F2
SC029 & 3::F3
SC029 & 4::F4
SC029 & 5::F5
SC029 & 6::F6
SC029 & 7::F7
SC029 & 8::F8
SC029 & 9::F9
SC029 & 0::F10
