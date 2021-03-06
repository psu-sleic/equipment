# Penn State
## SLEIC 3T Instructions for Accessing Hoth and HPC

### Create a Hammer or Anvil Individual Account 

1. Go to http://rcc.its.psu.edu/resources/accounts/individual 
2. Fill out the form
3. Indicate that which node you would like to access
	- a. Hammer: Interactive linux login cluster designed to run jobs through the command line or a graphical interface such as SPM via Matlab or FSL.
		- Hammer Website: http://rcc.its.psu.edu/user_guides/systems/hammer/
		- IP address: hammer.rcc.psu.edu
	- b.Anvil: Windows only, interactive node accessed only using Remote Desktop Connection
		- Anvil Website: http://rcc.its.psu.edu/user_guides/systems/anvil/

### Create a CyberSTAR Individual Account

CyberSTAR is a linux cluster that can be used for batch processing.

1. Go to https://www.ics.psu.edu/secure/account.html
2. Fill out the form
3. Check the box that you will be using the SLEIC
4. CyberSTAR Website: http://rcc.its.psu.edu/user_guides/systems/cyberstar/
5. IP address: cyberstar.psu.edu

### Create Group Space on Hammer, Anvil or Cyberstar
1. Create all individual accounts
2. Send a request to the SLEIC Help Listserv with the following information
	- a. SLEIC project ID (e.g., abc123_pilt)
	- b .A list of First Names, Last Names and PSU access IDs (abc123) that need access to group space
	- c. The folder that needs to be accessed
3. A SLEIC staff member will forward this request to rcc@rcc.its.psu.edu
4. Group space will be located in /gpfs/group/sleic/abc123/pilt

### Create Individual Account and Group Space on Hoth
1. Send a request to the SLEIC Help Listserv with the following information
	- a.SLEIC project ID (e.g., abc123_pilt)
	- b.A list of First Names, Last Names and PSU access IDs (abc123) that need access to group space
	- c.The folder that needs to be accessed
2. A SLEIC staff member will forward this request to helpdesk@imaging.psu.edu
3. IP address: linux.imaging.psu.edu
4. Group space location
	- a.3T studies: /nfs/imaging-data/3Tusers/abc123/pilt
	- b.HEF studies: /nfs/imaging-data/HEFusers/abc123/pilt
	
### Logging on to HPC machines

#### Mac

There are three ways of accessing Hammer or CyberSTAR.

1. Open Terminal.app.
	- From the prompt, enter 
		- ssh -Y YOURPSUACCESSID@hammer.rcc.psu.edu, for hammer
		- ssh -Y YOURPSUACCESSID@cyberstar.psu.edu, for CyberSTAR
	- Enter your password at the prompt.
	- From the prompt you may issue any appropriate Linux commands.
	- To launch FSL, enter
		- module load fsl
		- fsl &
	- To launch Matlab, enter
		- module load matlab
		- matlab &

