Code for developing Offspring GAN is given in Offspring_GAN.ipynb file.
Instructions are provided on how to change first Mendelian Hybridizer to turn it into a Privacy Preserving version of offspring GAN.
Code for camparing output of Offspring GAN, PPO GAN, PG-cGAN with real data is given in Offspring_GAN_results_comparison.ipynb file.
One would need to change the file path strings accordingly for both of the codes. 
One can use the X_train.npy and Y_train.npy from Data.zip directly without the need of preprocessing the raw data. Note that X_train.npy and Y_train.npy is not used directly in training, rather it is used for preprocessing as directed in Offspring GAN.ipnyb file.
Raw data was downloaded from : git@github.com:shilab/PG-cGAN.git url : https://github.com/shilab/PG-cGAN

Code for requestig GPU for interactive jobs is given in HPC_GPU.sh file. 

For using it on HPC:
1. ssh log in to your HPC account
2. check available conda modules using `module spider conda`
3. load relevant module from relevant path using `module load <name/path>`, the path will differ in different HPC.
4. create an environment `conda create --name <name>`
5. make sure jupyter is installed, if not do `conda activate <name>` then `conda install jupyterlab`
6. run the HPC_GPU.sh file (you will need to replace the <name> for environment name and make sure you are not requesting more time than allowed.)
7. check submitted job using 'squeue'
8. once running, use cat <log_file_name>. check the the url for opening jupyter notebook in your browser and ip of allocated gpu
9. log in to alloated GPU node using ssh
10. paste the url for jupyter lab notebook in browser, it should open the jupyter environment, upload the ipynb file and install the libraries as sugested in Getting started section. Now you can run same code in HPC server. 
