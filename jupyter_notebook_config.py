
# C:\Users\dev\.jupyter\jupyter_notebook_config.py

# To create a jupyter_notebook_config.py file, with all the defaults commented out,
# you can use the following command line:
# $ jupyter notebook --generate-config

# Configuration file for jupyter-notebook.
c.ContentsManager.root_dir = r'C:\Users\dev\Documents\repositories'
c.ContentsManager.untitled_directory = '_Untitled_Folder_'
c.ContentsManager.untitled_file = '_untitled_'
c.ContentsManager.untitled_notebook = '_Untitled_'
c.EnvironmentKernelSpecManager.conda_env_dirs=[r'C:\Users\dev\Anaconda3\envs']
c.FileContentsManager.root_dir = r'C:\Users\dev\Documents\repositories'
c.LabBuildApp.dev_build = False
c.LabBuildApp.minimize = False
c.MappingKernelManager.root_dir = r'C:\Users\dev\Documents\repositories'
c.NotebookApp.ip = 'localhost'
c.NotebookApp.open_browser = False
c.NotebookApp.password = u''
c.NotebookApp.password_required = False
c.NotebookApp.port = 8888

# [LabApp] The 'kernel_spec_manager_class' trait of <jupyterlab.labapp.LabApp object> instance must be a type,
# but 'environment_kernels.EnvironmentKernelSpecManager' could not be imported
#c.NotebookApp.kernel_spec_manager_class = 'environment_kernels.EnvironmentKernelSpecManager'
c.NotebookApp.nbserver_extensions = {'jupyterlab': True}
