# Deuteros 2.0
Last edit: 10/05/2020

![uptake_tab](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/uptake_tab.png)

#### Changes and bug fixes

Build 2021_12_13
- Fixed bug where plots could not be exported for Advanced plots.
- Fixed bug where exported figures were being saved as .svg files but were not vector images. 

Build 2021_10_14
- Added additional checks to ensure that the same charge state is used for differential comparisons
- Fixed plot scaling for butterfly plots when the number of peptides is small
- Added file conversion tool that handles conversion of files from HDExaminer into the DynamX cluster format. Standalone version of the tool is also available as a [Colab notebook](https://github.com/andymlau/File-conversion-for-HDX)

Build 2020_05_10
- Fixed bug with back-exchange correction. Previous equation incorrectly uses centroid m/z values for m, m0 and m100. Equation has been fixed to instead use centroid mass.
- Fixed bug with kinetics plot where unique() was returning the wrong number of timepoints.
- Added barcode plots to the 'Coverage Plot' section.
- Fixed bug where exporting a coverage plot would save the plot in the wrong dimensions.

Build 2020_03_10
- Made some minor changes with the progress bar to improve user experience

Build 2020_03_08
Updated average residue redundancy calculation. Previously this was calculated over all residues regardless of whether there was coverage or not. The new calculation reports only the average residue redundancy for regions with coverage.
- Fixed bug where appending data to data table tab caused importing to crash
- Added progress bar to import function

#### Current versions:
- Windows 10 (Build: 2020_05_10)
- MacOS (Build: 2020_05_10)

### Reference
Please cite the following paper if Deuteros was helpful for your analysis:

Lau, A. M., Claesen, J., Hansen, K., Politis, A. 2021. Deuteros 2.0: Peptide-level significance testing of data from hydrogen deuterium exchange mass spectrometry. Bioinformatics, btaa677, https://doi.org/10.1093/bioinformatics/btaa677.

### FAQ
1. Is Deuteros 2.0 free to use?  
Both Deuteros and Deuteros 2.0 availabel under the Apache 2.0 license and are **completely free** to use and do not require MATLAB or a MATLAB license to run. Only the MATLAB Runtime library is necessary and this is automatically installed with the software.

2. I don't have MATLAB, can I still use Deuteros 2.0?  
Yes, Deuteros 2.0 **does not need MATLAB**, but only the MATLAB Runtime library which is automatically installed as long as you have an internet connection.

3. Can Deuteros 2.0 be installed on a machine that does not have an internet connection?   
Yes, the only difference is that you can download the MATLAB Runtime library (R2019b v9.7) manually and install this first before installing Deuteros 2.0. The Deuteros 2.0 installer should automaticaly identify the library on your system and skip the download.
The library can be downloaded from the MathWorks website at: https://uk.mathworks.com/products/compiler/matlab-runtime.html

4. The GUI of Deuteros 2.0 is blank when I open it (on both MacOS and Windows)
We have noticed that this can occur when Deuteros 2.0 is installed and opened for the first time. Closing and opening it again seems to fixes this issue. 

5. When I open Deuteros 2.0, I can't see the whole GUI. 
You may need to adjust the resolution of your display in order for Deuteros 2.0 to be displayed in its entirety. The GUI has a resolution of 1222x953. 

6. Is ion mobility functionality supported? (or only the retention time and m/z dimensions)?

As the DynamX cluster output does not include ion mobility metrics regardless of whether mobility is used or not during acquisition, Deuteros 2.0 does not make use of this data type. This is also to say that Deuteros 2.0 does not differentiate between data collected with or without ion mobility - both are processed identically.

### Installation

Deuteros 2.0 can be installed by using one of the installers found in ```builds```.
If the MATLAB Runtime library is not found on your machine, the installer will download and install it automatically.

### Data input and compatibility

The intended input to Deuteros 2.0 is the 'cluster' file that is output from Waters DynamX instrumentation, while the original Deuteros used 'state' and 'difference' files from DynamX. The cluster file contains peptide deuterium uptake data at the replicate level for all proteins and states held within a DynamX session file. 

Deuteros 2.0 is not compatible with output data types from other vendors such as instruments from Thermo Fisher Scientific, however as the cluster file is a readable comma separated values (csv) format, providing users can format their data into a suitable format, this file would be readable by Deuteros 2.0. The format of the cluster input file can seen in the provided example.

### Usage

1. Open Deuteros, click ```Browse``` in the 'Data Import' box and navigate to the cluster file. A list of proteins and states found in the cluster file will populate the ```Protein``` and ```State A``` dropdown menus.
2. If performing a differential comparison of two experimental states, select the desired states using the ```State A``` and ```State B``` dropdowns. Note: Differential comparisons are performed as State B-State A, e.g. Holo-Apo or Mutant-Wildtype
3. Enter the *percentage deuterium* during experimental labelling and the *start and end residues* to the relevant edit boxes. 
4. Press ```Import``` Note: depending on the cluster file size, import may take a while to complete. The 'Peptide Tree' and summary box in the top right of Deuteros 2.0 will populate when import is complete.

The summary box contains a basic summary of the peptide data within states A and B, including the number of timepoints, whether back-exchange controls have been applied and if so, their statistics, details of the peptide population, replicate quality, etc. This summary follows the guidelines listed in Masson et al. 2019. Nature Methods, 16, 595-602 and should be prepared and included with any HDX-MS results.

#### Back-exchange correction

Deuteros 2.0 can optionally implement back-exchange correction of HDX-MS data using equations 1.10 and 1.11 in Masson et al. 2019. Nature Methods, 16, 595-602. Back-exchange correction can be performed for single or differential analysis. To do this, users can supply the software with one or two control states (one for each of State A and B) via the dropdown menus adjacent to the state A and B menus during data import. Back-exchange control states need to be acquired by the users and included within the cluster file along with the data to analyse. In essence, the control data contains a list of maximally labelled peptides which are use to calculate the degree of back exchange experienced by each peptide. 

The degree of back-exchange is calculated using: 

<p align="center"><img src="https://latex.codecogs.com/svg.latex?Back-exchange=\(1-\frac{m_{100%}-m_{0%}}{N\times%20D_{frac}}\)" /></p>

Specifically, back-exchange control data supplies the mass of the maximally labelled peptide m_100%. The mass of the non-deuterated control peptide m_0% is taken as the mass of the reference peptide, the theoretical maximum number of backbone amides N, is directly available as the 'MaxUptake' column of the cluster file, and D_frac, the fraction of deuterium within the labelling buffer, is a user-supplied constant. 

The degree of back-exchange for each peptide is compiled into a table and used for comparison against each peptide in states A and B. The corrected deuterium uptake of each peptide D_corr is then adjusted from its observed mass m, as:

<p align="center"><img src="https://latex.codecogs.com/svg.latex?D_{corr}=\frac{(m-m_{0%})}{(m_{100%}-m_{0%})}" /></p>

Should peptides be found in States A or B which do not have an associated entry within the back-exchange control table, and are therefore not correctable. Should this occur, a warning dialog spawns to inform the user and non-corrected peptides are withheld from any downstream analysis since they cannot be corrected and inclusion would lead to misleading results. A table of the control data and corrected peptide are available under the 'data tables' tab of the software. 

The mean and interquartile range of back-exchange across each state is reported within the data summary box in the top right of the GUI.

#### Uptake Plots Tab
The 'Uptake Plots' tab provides users with the ability to generate and review kinetics plots for individual peptides for one or two states. Clicking on peptides listed in the 'Peptide Tree' will show the kinetics plot for the particular peptide. The controls in the bottom panel provide plotting options such as switching to a log(time) axis and toggling between various plot elements. 

Under the 'Statistics' subpanel, users can apply a statistical model to their data to determine whether the deuterium uptake curves of States A and B are statistically different at a particular alpha value.

Deuteros 2.0 offers two models: 'Global' and 'Peptide'.

##### Global filter:
The global filter was taken from Hageman & Weis, 2019. Anal Chem, 91, 13, 8008-8016. The global filter calculates confidence intervals around 0 (no difference) using the pooled standard deviation calculated individually for States A and B for all timepoints. Peptides with an absolute uptake difference (DU_B-DU_A) of less than the absolute confidence interval (in Daltons) are regarded as not significant. The polarity of the uptake difference (positive/negative) is used to classify the peptide as exhibiting deprotection or protection due to the pertubation introduced in State B. 

##### Peptide filter: 
The peptide filter is applied to each peptide individually (as opposed to globally across all peptides) and uses multiple regression to fit deuterium uptake kinetics to a linear model to determine statistical significance:

<p align="center"><img src="https://latex.codecogs.com/svg.latex?D_{ij}%20=%20\beta_{0}+\beta_{s}s_{i}+\beta_{t}t_{j}+\beta_{st}(s_{i}t_{j})+\epsilon_{ij}" /></p>

Where D_ij is the deuterium content of a peptide from state s_i, at labelling time t_j and residual ε_ij  ~ N(0,σ_ij^2). The linear model tests if changes in the deuterium content of the peptide are associated with changes in the protein state (β_s), the deuteration time point (β_t), or both (β_st). 

Selecting the peptide filter will spawn the 'Peptide Statistics' window which details various parameters of the linear model. The 'Peptide Statistics' window is divided into two tables, the top contains fitting parameters useful to determining whether uptake has taken place for State A. The bottom contains parameters to determine whether there is a difference between the uptake profiles of States A and B. The P-value of each comparison is shown along with its statistical significance shown in the 'Sig' column. Toggling between the alpha values of the kinetics plot when the peptide significance test is selected, will adjust the confidence intervals accordingly, however does not affect the values reported in the Peptide Statistics window:

![statistics_window](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/statistics_window.png)

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

![typesOfPlots](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/typesOfPlots.png)

Deuteros 2.0 offers two statistical models that can be applied to differential HDX-MS data:
1. Peptide significance test using our linear model
2. Hybrid significance test from Hageman & Weis, 2019 (Anal. Chem.).

**Peptide significance test**
Deuteros 2.0 calculates the p-values between each pair of peptides at each timepoint. The probability of detecting false positives are then controlled using for multiple testing using the Benjamini-Hochberg procedure. The False Discovery Rate controlling method adjusts the p-value of each test using the number of hypothesis tested, m, and the ordered rank of the p-value, i (in ascending order): 

<p align="center"><img src="https://latex.codecogs.com/svg.latex?p^*=p%20\times%20(m/i)" /></p>

The null hypothesis is rejected on the basis that the adjusted p-value is less than the significance level. 

**Hybrid significance test**
The hybrid method (Hageman & Weis, 2019, Anal Chem) combines both the global significance threshold (described in the kinetics plot section) with a Welch's t-test for significance testing. Additional information regarding this test can be found in the referenced article. 

**Tip: Clicking on a datapoint in the Woods, Butterfly or Volcano plot will open a data tip window that displays more information about the peptide.**

The following controls are included:

```Statistics:
Hybrid        Statistical filtering using global significance threshold + Welch's t-test method
Peptide       Per-peptide statistical filtering using linear model
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

![table_tab](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/table_tab.png)

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

**Cluster file:**
![cluster_format](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/cluster_format.png)

**State file:**
![state_format](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/state_format.png)

Deuteros 2.0 imports data in the cluster file, which contains replicate-level data and alternative charge states for each peptide timepoint (e.g. Raw Cluster data table tab. The cluster data is converted to a state-like format using a custom algorithm which also filters out alternative charge states. The output from this is a state-like representation of the original data which contains no contributions by alternative charge states and which retains the original replicate values (e.g. State A and State B data table tab). For differential comparisons, custom functions extract only the common peptides between State A and B, followed by calculation of the difference between the two states (in the direction B-A). 


### Output Figures

![toolbar](https://github.com/andymlau/Deuteros_2.0/blob/master/Screenshots/toolbar.png)

All figures generated and exported from Deuteros 2.0 are vector images and can be edited using software such as Adobe Illustrator or Inkscape. Hovering over a plot area will also show a figure toolbar which provides the following features:
- Save figure
- Copy as image
- Copy as vector - this can be pasted directly into your vector image software

### Examples
The following test files have been supplied in this repository in ```/builds/examples/```
```
backExchange.csv      Cluster file contains 1 protein with 3 states: Bound, Unbound and Control, residue start and end are 1 and 90 respectively.
cluster.csv           Cluster file contains 1 protein with 2 states: Mutant, Wildtype, residue start and end are 1 and 491 respectively.
```
