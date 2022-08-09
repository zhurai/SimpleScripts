import subprocess
import os
from datetime import datetime

dateformat="%Y-%m-%d"
today=datetime.today().strftime(dateformat)

gitexe="C:\\Program Files\\Git\\cmd\\git.exe"
gitmsg="automated git updates for " + today
gitadd="add ."
gitcommit="commit -m \""+gitmsg+"\""
gitpush="push"
cwd=os.path.dirname(os.path.realpath(__file__))

subprocess.call(gitexe+" "+gitadd,cwd=cwd)
subprocess.call(gitexe+" "+gitcommit,cwd=cwd)
subprocess.call(gitexe+" "+gitpush,cwd=cwd)
