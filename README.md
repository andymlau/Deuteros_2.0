# Deuteros 2.0
Last edit: 17/02/2020 

Comments: 
- Screenshots to follow


#### Requirements for installation:
A computer capable of connecting to the internet

#### Currently supported operating systems:
- Windows 10
- MacOS
- Linux (to be added)

### FAQ
1. Is Deuteros 2.0 free to use?
Both Deuteros and Deuteros 2.0 are completely free to use and do not require MATLAB or a MATLAB license to run. Only the MATLAB Runtime library is necessary and this is automatically installed with the software.

2. I don't have MATLAB, can I still use Deuteros 2.0? 
Yes, Deuteros 2.0 does not need MATLAB, but only the MATLAB Runtime library which is automatically installed as long as you have an internet connection.

3. Can Deuteros 2.0 be installed on a machine that does not have an internet connection?
Yes, the only difference is that you can download the MATLAB Runtime library (R2019b v9.7) manually and install this first before installing Deuteros 2.0. The Deuteros 2.0 installer should automaticaly identify the library on your system and skip the download.
The library can be downloaded from the MathWorks website at: https://uk.mathworks.com/products/compiler/matlab-runtime.html

### Installation

Deuteros 2.0 can be installed by using one of the installers found in ```builds/Deuteros2_Win/for_redistribution``` for Windows or ```builds/Deuteros2_Mac/for_redistribution``` for Mac OS. 
If the MATLAB Runtime library is not found on your machine, the installer will download and install it automatically.


### Usage

Input: Deuteros 2.0 takes as input the 'cluster'-style output of DynamX HDX-MS software (Waters Corporation). The cluster file contains peptide deuterium uptake data at the replicate level for all proteins and states held within a DynamX session file. 

1. Open Deuteros, click ```Browse``` in the 'Data Import' box and navigate to the cluster file. A list of proteins and states found in the cluster file will populate the ```Protein``` and ```State A``` dropdown menus.
2. If performing a differential comparison of two experimental states, select the desired states using the ```State A``` and ```State B``` dropdowns. Note: Differential comparisons are performed as State B-State A, e.g. Holo-Apo or Mutant-Wildtype
3. Enter the *percentage deuterium* during experimental labelling and the *start and end residues* to the relevant edit boxes. 
4. Press ```Import``` Note: depending on the cluster file size, import may take a while to complete. The 'Peptide Tree' and summary box in the top right of Deuteros 2.0 will populate when import is complete.

The summary box contains a basic summary of the peptide data within states A and B, including the number of timepoints, whether back-exchange controls have been applied and if so, their statistics, details of the peptide population, replicate quality, etc. This summary follows the guidelines listed in Masson et al. 2019. Nature Methods, 16, 595-602 and should be prepared and included with any HDX-MS results.


#### Uptake Plots Tab
The 'Uptake Plots' tab provides users with the ability to generate and review kinetics plots for individual peptides for one or two states. Clicking on peptides listed in the 'Peptide Tree' will show the kinetics plot for the particular peptide. The controls in the bottom panel provide plotting options such as switching to a log(time) axis and toggling between various plot elements. 

Under the 'Statistics' subpanel, users can apply a statistical model to their data to determine whether the deuterium uptake curves of States A and B are statistically different at a particular alpha value.
Deuteros 2.0 offers two models: 'Global' and 'Peptide'.


##### Global filter:
The global filter was taken from Hageman & Weis, 2019. Anal Chem, 91, 13, 8008-8016. The global filter calculates confidence intervals around 0 (no difference) using the pooled standard deviation calculated individually for States A and B for all timepoints. Peptides with an absolute uptake difference (DU_B-DU_A) of less than the absolute confidence interval (in Daltons) are regarded as not significant. The polarity of the uptake difference (positive/negative) is used to classify the peptide as exhibiting deprotection or protection due to the pertubation introduced in State B. 


##### Peptide filter: 
The peptide filter is a novel hypothesis testing method developed in collaboration with Dr Jurgen Claesen. The peptide filter is applied to each peptide individually (as opposed to globally across all peptides) and uses a linear model to determine statistical significance:

y_pi = X\beta_p+\epsilon_pi

Where y_p is a vector of n deuteration values, \beta_p is a vector of m unknown coefficients, X is a n-by-p matrix reflecting the experimental design and \epsilon_pi ~ N(0,\sigma^2_p) where \sigma^2_p is the population residual variance. The deuteration values of y_p can be derived from subtracting the average mass of the non-deuterated peptides from the deuterated peptide masses.

Selecting the peptide filter will spawn the 'Peptide Statistics' window which details various parameters of the linear model. The 'Peptide Statistics' window is divided into two tables, the top contains fitting parameters useful to determining whether uptake has taken place for State A. The bottom contains parameters to determine whether there is a difference between the uptake profiles of States A and B. The P-value of each comparison is shown along with its statistical significance shown in the 'Sig' column.
Toggling between the alpha values of the kinetics plot controls will adjust the confidence intervals accordingly however does not affect the values reported in the Peptide Statistics window. 


#### Global Plots Tab

The global plots tab contains three main visualisation facilities:
1. Coverage plot
2. Advanced plots (plots with statistics)
3. Export to molecular graphics


##### Coverage Plot
The coverage plot can generate linear graphical representations of the peptide ensemble for States A and B. The following controls are included:

```Plot type:
States A/B    The coverage of both states are shown simultaneously along with the percentage coverage and peptide redundancy
State A       The coverage of only State A is shown
State B       The coverage of only State B is shown
Common        The coverage of peptides common between States A and B are shown
Comparative   The coverage of all peptides between States A and B are shown, as well as state-specific peptides    

Data type:
Coverage      Display coverage only
Redundancy    Display position specific redundancy using a colourmap

Peptides:
On/Off        Display individual cascading peptides below global coverage
       
Border:
Black         If Peptides are turned on, render a black border around each peptide
White         If Peptides are turned on, render a white border around each peptide (useful if sequence is long)
Off           If Peptides are turned on, dont render a border

Packing controls:
Spacing       Controls gap between each subsequent peptide row, default 0.5
Thickness     Controls thickness of each peptide bar, default 0.2

Output controls:
Plot          Generate plot
Export        Spawn window for saving plot as figure
```


##### Advanced Plot
The Advanced Plot section generates one of three major plot types: 
1. Woods plot
2. Butterfly plot
3. Volcano plot

Deuteros 2.0 offers three statistical models that can be applied to differential HDX-MS data:
1. Hybrid
2. Peptide
3. Global (legacy)

The **hybrid** method (Hageman & Weis, 2019, Anal Chem) combines both the global significance threshold (described in the kinetics plot section) with a Welch's t-test for significance testing.

The **peptide** method is identical to the linear model described earlier in the kinetics plot section. 

The **global** method is the original test detailed in Houde et al. 2011, J Pharma Sci. which calculates per-timepoint confidence intervals in the form of CI=0+/-X Da and applied to all peptides. It is the same as the significance test used in the original Deuteros (Lau et al., 2019, Bioinformatics). This statistical test is included for testing purposes and comparison purposes. Users are advised to use the improved hybrid or peptide significance tests.

**Tip: Clicking on a datapoint in the Woods, Butterfly or Volcano plot will open a data tip window that displays more information about the peptide.**

The following controls are included:

```Statistics:
Hybrid        Statistical filtering using global significance threshold + Welch's t-test method
Peptide       Per-peptide statistical filtering
Global        Statistical filtering using old Houde et al. method
None          No statistical filtering applied

Plot type:
Woods Differential      For statistical tests: Hybrid/Peptide/Global/None
Woods Double            For statistical tests: None
Woods Single            For statistical tests: None
Butterfly Differential  For statistical tests: Hybrid/Peptide/Global/None
Butterfly Double        For statistical tests: None
Butterfly Single        For statistical tests: None
Volcano                 For statistical tests: Hybrid

Units:
Absolute                Absolute uptake axis
Relative                (To add)

Confidence:
alpha                   Alpha values of 0.001, 0.01, 0.02 and 0.05

Highlight:
Custom ranges           Highlights residues in Woods plots, e.g. '100-120,200-220', useful for domain highlighting

Output controls:
Plot          Generate plot
Export        Spawn window for saving plot as figure
```


##### Export to Molecular Graphics

Data shown in the coverage and advanced plot sections can be exported to molecular graphics to visualise results on 3D structures or models of proteins of interest. Currently PyMOL and Chimera are supported. 

The following options are available: 
```
Export to:
PyMOL         Produces PyMOL-compatible .pml formatting scripts
Chimera       Produces Chimera-compatible .py formatting scripts

Chain:
<string>      Designate the PDB chains that the data will be projected onto. Can specify more than one chain, e.g. 'A,B,C'

Export coverage data:
On/Off        Tick to include coverage plot in script output

Coverage/No-coverage/Redundancy:
Coverage      Choose solid colour to represent residues with experimental coverage
No coverage   Choose solid colour to represent residues without experimental coverage
Redundancy    Choose colour gradient to represent position-specific redundancy

Export advanced data:
On/Off        Tick to include advanced plot data including any statistical categories. Default colours are red/white/blue/grey for deprotected/non-significant/protected/no-coverage residues

Output controls:
Export        Generate formatting scripts (default printed to same directory as cluster file)
```

#### Data Table Tab

The Data Tables tab contains tables for accessing the peptide uptake data along various stages of calculation in the Deuteros 2.0 pipeline. Each table tab features a ```Save``` button which can be used to write the contents of the table to disk (.csv). 

##### Raw cluster
(Cluster-style) Contains the raw input data from the cluster csv file. Only rows belonging to the selected protein and states are shown. 

##### Removed peptides
(State-style) Contains a list of peptides that have been removed from the input data during data import. There are two way that peptides can end up on this table: 1) the peptide is only found in one state, 2) the peptide has a missing timepoint (cannot be used to calculate the sum uptake).

##### BX: Control
(State-style) Contains a list of peptides found in the control state used for back-exchange correction. The displayed data are converted from the replicate-level cluster data to an aggregated 'state'-style data (1 peptide timepoint per row)

##### BX: Non-corrected
(State-style) Contains a list of peptides which were not back-exchange corrected as correction data was not available in the given control state.

##### State A (State)
(State-style) Contains a list of State A peptides in the state format. This table includes peptides unique to State A (i.e. those listed in 'Removed Peptides').

##### State B (State)
(State-style) Same as above

##### States AB (Common)
(State-style) Contains a list of peptides common between States A and B. This excludes peptides list in 'Removed Peptides'.

##### \Delta(State B-State A)
(State-style) Contains a differential list of peptides calculated by subtracting State A data from State B. 

##### Filtered Peptides
(State-style) If an Advanced Plot has been generated with statistical filtering applied, the resulting table is shown here along with any statistical metrics.

### DynamX Table Formats: Cluster vs State
Data can be exported from Waters DynamX software in two formats - cluster and state. The cluster format is a replicate-level data table where each row represents one experimental replicate, with the associated centroid mass (Center), retention time (RT) and intensity (Inten) of its isotopic distribution. The state format is an aggregated version of the cluster file in which each row represents a single timepoint measurement of a peptide of a particular state. Variation across repeated measurements are summarised by a standard deviation value in the state format. A cluster file can also contain entries for alternative charge states that have not been unassigned and may be of low quality. The state file generated by DynamX takes into account alternative charge states and if of low quality, can contribute error to the aggregated uptake values presented in the file.

Deuteros 2.0 imports data in the cluster file, which contains replicate-level data and alternative charge states for each peptide timepoint (e.g. Raw Cluster data table tab. The cluster data is converted to a state-like format using a custom algorithm which also filters out alternative charge states. The output from this is a state-like representation of the original data which contains no contributions by alternative charge states and which retains the original replicate values (e.g. State A and State B data table tab). For differential comparisons, custom functions extract only the common peptides between State A and B, followed by calculation of the difference between the two states (in the direction B-A). 


### Output Figures
All figures generated and exported from Deuteros 2.0 are vector images and can be edited using software such as Adobe Illustrator or Inkscape. Hovering over a plot area will also show a figure toolbar which provides the following features:
- Save figure
- Copy as image
- Copy as vector - this can be pasted directly into your vector image software


### Examples
The following test files have been supplied in this repository in ```/builds/examples/```
```
backExchange.csv      Cluster file contains 1 protein with 3 states: Bound, Unbound and Control, residue start and end are 1 and 90 respectively.
cluster.csv           Cluster file contains 1 protein with 2 states: Mutant, Wildtype, residue start and end are 1 and 420 respectively.
```
