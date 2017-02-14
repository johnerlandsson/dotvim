" Vim syntax file

" Language:     Heidenhain Klartext
" Last Change:  December 08, 2011
" Version:      1

if exists("b:current_syntax")
    finish
endif

syn case ignore

syn match heidenhainToolDef                     /TOOL\s\+DEF.*/         contains=heidenhainFMAX
syn match heidenhainToolCall                    /TOOL\s\+CALL.*/        contains=heidenhainFMAX,heidenhainFHIGH
syn match heidenhainCycleDef                    /CYCL\s\+DEF.*/
syn match heidenhainCycleCall                   /CYCL\s\+CALL.*/        contains=heidenhainMCommand
syn match heidenhainBlockForm                   /BLK\s\+FORM.*/
syn match heidenhainLineNumber                  /^\d\+/
syn match heidenhainProgramm                    /BEGIN\s\+PGM.*/
syn match heidenhainProgramm                    /END\s\+PGM.*/
syn match heidenhainFMAX                        /F\s\+MAX/
syn match heidenhainFHIGH                       /F\s*\d\{4,\}/
syn match heidenhainComment                     /;.*/
syn match heidenhainMCommand                    /M\d\+/
syn match heidenhainCC                          /CC.*/
syn match heidenhainFPOL                        /FPOL.*/
syn match heidenhainRND                         /RND\s*R.*/
syn match heidenhainSpline                      /SPL.*/                 contains=heidenhainComment
syn match heidenhainLabelSet                    /LBL.*/
syn match heidenhainLabelCall                   /CALL\s\+LBL.*/
syn match heidenhainPGMCall                     /CALL\s\+PGM.*/
syn match heidenhainQParameter                  /Q\d\+\s*=.*/           contains=heidenhainComment,heidenhainFMAX,heidenhainFHIGH
syn match heidenhainQParameter                  /FN\s*\d\+:/
syn match heidenhainRotationDirection           /DR[\+\-]/
syn match heidenhainRadiusCompensation          /R[LR]/
syn match heidenhainRadiusCompensation          /R0\s\+/
syn match heidenhainRadiusCompensation          /R0$/
syn match heidenhainTouchProbe                  /TCH\s\+PROBE.*/
syn match heidenhainOutline                     /\*\s*\-.*/


syn keyword heidenhainStop                      STOP
syn keyword heidenhainFMAX                      FMAX
syn keyword heidenhainWMAT                      WMAT
syn keyword heidenhainTMAT                      TMAT

hi link heidenhainToolDef                       Type
hi link heidenhainToolCall                      Identifier
hi link heidenhainCycleDef                      Type
hi link heidenhainCycleCall                     Identifier
hi link heidenhainBlockForm                     Type
hi link heidenhainCC                            Type
hi link heidenhainFPOL                          Type
hi link heidenhainRND                           Type
hi link heidenhainSpline                        Type
hi link heidenhainStop                          String
hi link heidenhainLabelSet                      Type
hi link heidenhainLabelCall                     Identifier
hi link heidenhainPGMCall                       Identifier
hi link heidenhainLineNumber                    Special
hi link heidenhainProgramm                      Ignore
hi link heidenhainComment                       Comment
hi link heidenhainFMAX                          Error
hi link heidenhainFHIGH                         Constant
hi link heidenhainMCommand                      Statement
hi link heidenhainQParameter                    Type
hi link heidenhainRadiusCompensation            Todo
hi link heidenhainRotationDirection             Todo
hi link heidenhainWMAT                          Type
hi link heidenhainTMAT                          Type
hi link heidenhainTouchProbe                    Identifier
hi link heidenhainOutline                       Comment

let b:current_syntax = "heidenhain"
