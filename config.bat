@echo off

:: Variables
set "home=%userprofile%"
set "downloads=%userprofile%\downloads"
set "config=%home%\config.bat"
set "dt=%userprofile%\desktop"
set "vd=%home%\Appdata\Local\nvim"

echo +----------------------------------Variables-----------------------------------+
echo ^| %%home%%        = %home%                                              ^|
echo ^| %%config%%      = %config%                                   ^|
echo ^| %%ds%%          = %downloads%                                    ^|
echo ^| %%dt%%          = %dt%                                      ^|
echo ^| %%vd%% (vimdir) = %vd%                           ^|

:: Commands
doskey ls=dir /P $*
doskey lsd=dir /A:D-H $*
doskey rm=del $*
doskey cd=cd /D $*
doskey vd=cd /D %vd%
doskey clear=cls

doskey vnim=nvim $*
doskey nivm=nvim $*
doskey vim=nvim $*
doskey vi=nvim $*

doskey config=nvim %config%
doskey notes=nvim %home%\notes.txt

echo +----------------------------------Commands------------------------------------+
echo ^| ls       = dir /P                    ^|  lsd      = dir /A:D-H                ^|
echo ^| cd       = cd /D                     ^|  rm       = del                       ^|
echo ^| clear    = cls                       ^|  config   = nvim %%config%%             ^|
echo ^| notes    = nvim %%home%%/notes.txt     ^|  vd        = cd %%vd%%                  ^|


:: Directories
doskey ~=cd /D %home%

doskey workspace=cd /D %home%\workspace\
doskey wp=cd /D %home%\workspace\

doskey downloads=cd /D %home%\downloads\
doskey dd=cd /D %home%\downloads\

doskey desktop=cd /D %home%\desktop\
doskey dt=cd /D %home%\desktop\

doskey tasks=cd /D %home%\tasks\
doskey task=cd /D %home%\tasks\
doskey t=cd /D %home%\tasks\

echo +------------------------------Directory shortcuts-----------------------------+
echo ^| ~                   - Go to home directory                                   ^|
echo ^| wp / workspace      - Go to local workspace directory                        ^|
echo ^| dd / downloads      - Go to downloads                                        ^|
echo ^| dt / desktop        - Go to desktop                                          ^|
echo ^| t  / task / tasks   - Go to Tasks                                            ^|
echo +------------------------------------------------------------------------------+
