# Nuclei-scanner-for-subdomains
Runs nuclei vulnerability scanner on the subdomains of a domain and saves individual results in separate text files.

Usage Instructions :

1. Clone the repository to your local computer - $git clone URL
2. Give the script execute conditions - $chmod 744 nuclei.sh  or $chmod +x nuclei.sh
3. Run the script - $./nuclei.sh
  3.1. Enter the complete path of the target URL file which has the list of subdomains you want to run the nuclei scanner againt.
  3.2 Enter the complete path of the destination folder where you want to save the individual results from the nuclei scanner.
