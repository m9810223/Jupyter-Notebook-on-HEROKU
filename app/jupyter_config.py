import os
from notebook.auth import passwd


c = get_config()


c.IPKernelApp.pylab = 'inline'


c.NotebookApp.notebook_dir = 'homepage'
c.NotebookApp.allow_origin = '*'
c.NotebookApp.ip = '*'
c.NotebookApp.allow_remote_access = True
c.NotebookApp.open_browser = False


# python -c "from notebook.auth import passwd; print(passwd())"
# 'argon2:$argon2id$v=19$m=10240,t=10,p=8$Hyq3DEuPEbJaWxPffUidbg$uurU+IcZqS/Bey79gk138Q'
c.NotebookApp.password = passwd(os.environ.get('JNPASSWD', '0000'))
# c.NotebookApp.password = '123'
c.NotebookApp.token = ''


c.NotebookApp.port = int(os.environ.get("PORT", 8888))
c.NotebookApp.allow_root = True
c.NotebookApp.allow_password_change = True
c.ConfigurableHTTPProxy.command = ['configurable-http-proxy', '--redirect-port', '80']

c.NotebookApp.terminado_settings = {'shell_command': ['/bin/bash']}
