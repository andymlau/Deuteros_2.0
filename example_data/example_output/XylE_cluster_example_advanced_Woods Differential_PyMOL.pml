# --------------------------------------------------------------------------------------------------------------------------------
# Please reference the following paper if you show or use data from Deuteros:
#   Lau, A. M. C., Ahdash, Z., Martens, C., Politis, A. (2019). Deuteros: software for rapid analysis and visualization of data
#   from differential hydrogen deuterium exchange-mass spectrometry. Bioinformatics, btz022.
# --------------------------------------------------------------------------------------------------------------------------------
 
# Data generated on 12-Oct-2022 from cluster file XylE_cluster_example.csv
# For protein: XYLE_ECOLI
# Selected State A: XylE WT
# Selected State B: XylE E397Q
# Selected Control A: None
# Selected Control B: None
# Deuterium %: 100%
# Protein length: 1-491
 
# Plot type: Woods Differential
# Data type: Absolute
# Filter using: Peptide
# Confidence level: 1.000000e-02%
 
# --------------------------------------------------------------------------------------------------------------------------------
# PyMOL Formatting
# --------------------------------------------------------------------------------------------------------------------------------
as cartoon;
set opaque_background, off;
util.performance(0);
set specular, off;
space cmyk;
bg_color black;
set ray_shadow, off;
﻿set cartoon_oval_length, 0.9;
 
# --------------------------------------------------------------------------------------------------------------------------------
# Woods Differential plot data for 0.5 min timepoint
# --------------------------------------------------------------------------------------------------------------------------------
# Number of non-significant peptides: 144
# Number of deprotected peptides: 33
# Number of protected peptides: 12
 
hide everything, not (Chain A);
 
color gray50, (Chain A); # no coverage
 
color white, (Chain A) & resi 1-5; # coverage, non-significant
color white, (Chain A) & resi 1-8; # coverage, non-significant
color white, (Chain A) & resi 1-9; # coverage, non-significant
color white, (Chain A) & resi 11-15; # coverage, non-significant
color white, (Chain A) & resi 15-19; # coverage, non-significant
color white, (Chain A) & resi 15-23; # coverage, non-significant
color white, (Chain A) & resi 16-24; # coverage, non-significant
color white, (Chain A) & resi 17-23; # coverage, non-significant
color white, (Chain A) & resi 18-23; # coverage, non-significant
color white, (Chain A) & resi 24-29; # coverage, non-significant
color white, (Chain A) & resi 24-30; # coverage, non-significant
color white, (Chain A) & resi 31-40; # coverage, non-significant
color white, (Chain A) & resi 32-38; # coverage, non-significant
color white, (Chain A) & resi 34-40; # coverage, non-significant
color white, (Chain A) & resi 37-42; # coverage, non-significant
color white, (Chain A) & resi 41-48; # coverage, non-significant
color white, (Chain A) & resi 42-48; # coverage, non-significant
color white, (Chain A) & resi 43-48; # coverage, non-significant
color white, (Chain A) & resi 43-59; # coverage, non-significant
color white, (Chain A) & resi 49-56; # coverage, non-significant
color white, (Chain A) & resi 49-58; # coverage, non-significant
color white, (Chain A) & resi 49-59; # coverage, non-significant
color white, (Chain A) & resi 51-58; # coverage, non-significant
color white, (Chain A) & resi 51-59; # coverage, non-significant
color white, (Chain A) & resi 54-59; # coverage, non-significant
color white, (Chain A) & resi 56-61; # coverage, non-significant
color white, (Chain A) & resi 57-62; # coverage, non-significant
color white, (Chain A) & resi 59-65; # coverage, non-significant
color white, (Chain A) & resi 60-65; # coverage, non-significant
color white, (Chain A) & resi 66-74; # coverage, non-significant
color white, (Chain A) & resi 66-76; # coverage, non-significant
color white, (Chain A) & resi 67-75; # coverage, non-significant
color white, (Chain A) & resi 68-74; # coverage, non-significant
color white, (Chain A) & resi 68-77; # coverage, non-significant
color white, (Chain A) & resi 69-76; # coverage, non-significant
color white, (Chain A) & resi 69-77; # coverage, non-significant
color white, (Chain A) & resi 73-77; # coverage, non-significant
color white, (Chain A) & resi 89-94; # coverage, non-significant
color white, (Chain A) & resi 89-95; # coverage, non-significant
color white, (Chain A) & resi 95-101; # coverage, non-significant
color white, (Chain A) & resi 95-104; # coverage, non-significant
color white, (Chain A) & resi 96-101; # coverage, non-significant
color white, (Chain A) & resi 96-104; # coverage, non-significant
color white, (Chain A) & resi 96-109; # coverage, non-significant
color white, (Chain A) & resi 97-104; # coverage, non-significant
color white, (Chain A) & resi 97-108; # coverage, non-significant
color white, (Chain A) & resi 97-109; # coverage, non-significant
color white, (Chain A) & resi 98-104; # coverage, non-significant
color white, (Chain A) & resi 102-107; # coverage, non-significant
color white, (Chain A) & resi 102-108; # coverage, non-significant
color white, (Chain A) & resi 102-109; # coverage, non-significant
color white, (Chain A) & resi 104-109; # coverage, non-significant
color white, (Chain A) & resi 105-109; # coverage, non-significant
color white, (Chain A) & resi 108-122; # coverage, non-significant
color white, (Chain A) & resi 109-121; # coverage, non-significant
color white, (Chain A) & resi 109-122; # coverage, non-significant
color white, (Chain A) & resi 109-124; # coverage, non-significant
color white, (Chain A) & resi 110-122; # coverage, non-significant
color white, (Chain A) & resi 110-124; # coverage, non-significant
color white, (Chain A) & resi 122-129; # coverage, non-significant
color white, (Chain A) & resi 123-129; # coverage, non-significant
color white, (Chain A) & resi 125-129; # coverage, non-significant
color white, (Chain A) & resi 130-139; # coverage, non-significant
color white, (Chain A) & resi 130-142; # coverage, non-significant
color white, (Chain A) & resi 132-142; # coverage, non-significant
color white, (Chain A) & resi 133-142; # coverage, non-significant
color white, (Chain A) & resi 133-145; # coverage, non-significant
color white, (Chain A) & resi 133-146; # coverage, non-significant
color white, (Chain A) & resi 140-145; # coverage, non-significant
color white, (Chain A) & resi 143-150; # coverage, non-significant
color white, (Chain A) & resi 145-150; # coverage, non-significant
color white, (Chain A) & resi 146-150; # coverage, non-significant
color white, (Chain A) & resi 164-168; # coverage, non-significant
color white, (Chain A) & resi 164-169; # coverage, non-significant
color white, (Chain A) & resi 169-173; # coverage, non-significant
color white, (Chain A) & resi 172-176; # coverage, non-significant
color white, (Chain A) & resi 177-183; # coverage, non-significant
color white, (Chain A) & resi 179-183; # coverage, non-significant
color white, (Chain A) & resi 179-184; # coverage, non-significant
color white, (Chain A) & resi 184-194; # coverage, non-significant
color white, (Chain A) & resi 185-193; # coverage, non-significant
color white, (Chain A) & resi 193-198; # coverage, non-significant
color white, (Chain A) & resi 194-199; # coverage, non-significant
color white, (Chain A) & resi 194-203; # coverage, non-significant
color white, (Chain A) & resi 199-203; # coverage, non-significant
color white, (Chain A) & resi 199-204; # coverage, non-significant
color white, (Chain A) & resi 204-211; # coverage, non-significant
color white, (Chain A) & resi 204-212; # coverage, non-significant
color white, (Chain A) & resi 205-212; # coverage, non-significant
color white, (Chain A) & resi 207-211; # coverage, non-significant
color white, (Chain A) & resi 213-217; # coverage, non-significant
color white, (Chain A) & resi 217-226; # coverage, non-significant
color white, (Chain A) & resi 277-281; # coverage, non-significant
color white, (Chain A) & resi 277-283; # coverage, non-significant
color white, (Chain A) & resi 278-283; # coverage, non-significant
color white, (Chain A) & resi 278-284; # coverage, non-significant
color white, (Chain A) & resi 284-289; # coverage, non-significant
color white, (Chain A) & resi 284-290; # coverage, non-significant
color white, (Chain A) & resi 285-290; # coverage, non-significant
color white, (Chain A) & resi 292-296; # coverage, non-significant
color white, (Chain A) & resi 298-303; # coverage, non-significant
color white, (Chain A) & resi 298-304; # coverage, non-significant
color white, (Chain A) & resi 299-304; # coverage, non-significant
color white, (Chain A) & resi 317-322; # coverage, non-significant
color white, (Chain A) & resi 319-326; # coverage, non-significant
color white, (Chain A) & resi 323-328; # coverage, non-significant
color white, (Chain A) & resi 324-328; # coverage, non-significant
color white, (Chain A) & resi 327-331; # coverage, non-significant
color white, (Chain A) & resi 340-351; # coverage, non-significant
color white, (Chain A) & resi 344-348; # coverage, non-significant
color white, (Chain A) & resi 346-351; # coverage, non-significant
color white, (Chain A) & resi 346-352; # coverage, non-significant
color white, (Chain A) & resi 350-356; # coverage, non-significant
color white, (Chain A) & resi 351-356; # coverage, non-significant
color white, (Chain A) & resi 352-357; # coverage, non-significant
color white, (Chain A) & resi 357-363; # coverage, non-significant
color white, (Chain A) & resi 358-363; # coverage, non-significant
color white, (Chain A) & resi 377-382; # coverage, non-significant
color white, (Chain A) & resi 383-391; # coverage, non-significant
color white, (Chain A) & resi 385-391; # coverage, non-significant
color white, (Chain A) & resi 388-392; # coverage, non-significant
color white, (Chain A) & resi 407-412; # coverage, non-significant
color white, (Chain A) & resi 408-415; # coverage, non-significant
color white, (Chain A) & resi 410-415; # coverage, non-significant
color white, (Chain A) & resi 410-416; # coverage, non-significant
color white, (Chain A) & resi 412-416; # coverage, non-significant
color white, (Chain A) & resi 414-420; # coverage, non-significant
color white, (Chain A) & resi 416-420; # coverage, non-significant
color white, (Chain A) & resi 416-421; # coverage, non-significant
color white, (Chain A) & resi 420-426; # coverage, non-significant
color white, (Chain A) & resi 421-426; # coverage, non-significant
color white, (Chain A) & resi 422-426; # coverage, non-significant
color white, (Chain A) & resi 427-434; # coverage, non-significant
color white, (Chain A) & resi 430-435; # coverage, non-significant
color white, (Chain A) & resi 435-443; # coverage, non-significant
color white, (Chain A) & resi 435-445; # coverage, non-significant
color white, (Chain A) & resi 435-446; # coverage, non-significant
color white, (Chain A) & resi 436-445; # coverage, non-significant
color white, (Chain A) & resi 436-446; # coverage, non-significant
color white, (Chain A) & resi 444-448; # coverage, non-significant
color white, (Chain A) & resi 447-451; # coverage, non-significant
color white, (Chain A) & resi 449-454; # coverage, non-significant
color white, (Chain A) & resi 455-459; # coverage, non-significant
color white, (Chain A) & resi 458-471; # coverage, non-significant
 
color tv_blue, (Chain A) & resi 28-33; # coverage, protected
color tv_blue, (Chain A) & resi 28-36; # coverage, protected
color tv_blue, (Chain A) & resi 28-38; # coverage, protected
color tv_blue, (Chain A) & resi 29-36; # coverage, protected
color tv_blue, (Chain A) & resi 29-38; # coverage, protected
color tv_blue, (Chain A) & resi 30-36; # coverage, protected
color tv_blue, (Chain A) & resi 30-38; # coverage, protected
color tv_blue, (Chain A) & resi 31-36; # coverage, protected
color tv_blue, (Chain A) & resi 31-38; # coverage, protected
color tv_blue, (Chain A) & resi 293-297; # coverage, protected
color tv_blue, (Chain A) & resi 304-312; # coverage, protected
color tv_blue, (Chain A) & resi 319-325; # coverage, protected
 
color tv_red, (Chain A) & resi 10-15; # coverage, deprotected
color tv_red, (Chain A) & resi 16-23; # coverage, deprotected
color tv_red, (Chain A) & resi 43-50; # coverage, deprotected
color tv_red, (Chain A) & resi 68-82; # coverage, deprotected
color tv_red, (Chain A) & resi 71-88; # coverage, deprotected
color tv_red, (Chain A) & resi 154-163; # coverage, deprotected
color tv_red, (Chain A) & resi 156-163; # coverage, deprotected
color tv_red, (Chain A) & resi 180-184; # coverage, deprotected
color tv_red, (Chain A) & resi 217-227; # coverage, deprotected
color tv_red, (Chain A) & resi 218-226; # coverage, deprotected
color tv_red, (Chain A) & resi 218-227; # coverage, deprotected
color tv_red, (Chain A) & resi 239-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-250; # coverage, deprotected
color tv_red, (Chain A) & resi 241-251; # coverage, deprotected
color tv_red, (Chain A) & resi 241-252; # coverage, deprotected
color tv_red, (Chain A) & resi 271-276; # coverage, deprotected
color tv_red, (Chain A) & resi 273-277; # coverage, deprotected
color tv_red, (Chain A) & resi 334-345; # coverage, deprotected
color tv_red, (Chain A) & resi 335-351; # coverage, deprotected
color tv_red, (Chain A) & resi 335-352; # coverage, deprotected
color tv_red, (Chain A) & resi 364-373; # coverage, deprotected
color tv_red, (Chain A) & resi 395-402; # coverage, deprotected
color tv_red, (Chain A) & resi 395-407; # coverage, deprotected
color tv_red, (Chain A) & resi 395-411; # coverage, deprotected
color tv_red, (Chain A) & resi 445-451; # coverage, deprotected
color tv_red, (Chain A) & resi 458-472; # coverage, deprotected
color tv_red, (Chain A) & resi 459-474; # coverage, deprotected
color tv_red, (Chain A) & resi 460-474; # coverage, deprotected
color tv_red, (Chain A) & resi 477-487; # coverage, deprotected
color tv_red, (Chain A) & resi 477-491; # coverage, deprotected
color tv_red, (Chain A) & resi 478-491; # coverage, deprotected
color tv_red, (Chain A) & resi 479-491; # coverage, deprotected
 
 
scene Woods Differential_timepoint_0.5, store, view=0;
 
# --------------------------------------------------------------------------------------------------------------------------------
# Woods Differential plot data for 30 min timepoint
# --------------------------------------------------------------------------------------------------------------------------------
# Number of non-significant peptides: 116
# Number of deprotected peptides: 43
# Number of protected peptides: 30
 
hide everything, not (Chain A);
 
color gray50, (Chain A); # no coverage
 
color white, (Chain A) & resi 1-5; # coverage, non-significant
color white, (Chain A) & resi 1-8; # coverage, non-significant
color white, (Chain A) & resi 1-9; # coverage, non-significant
color white, (Chain A) & resi 15-19; # coverage, non-significant
color white, (Chain A) & resi 15-23; # coverage, non-significant
color white, (Chain A) & resi 16-24; # coverage, non-significant
color white, (Chain A) & resi 17-23; # coverage, non-significant
color white, (Chain A) & resi 18-23; # coverage, non-significant
color white, (Chain A) & resi 24-30; # coverage, non-significant
color white, (Chain A) & resi 34-40; # coverage, non-significant
color white, (Chain A) & resi 56-61; # coverage, non-significant
color white, (Chain A) & resi 57-62; # coverage, non-significant
color white, (Chain A) & resi 68-74; # coverage, non-significant
color white, (Chain A) & resi 69-77; # coverage, non-significant
color white, (Chain A) & resi 73-77; # coverage, non-significant
color white, (Chain A) & resi 89-94; # coverage, non-significant
color white, (Chain A) & resi 89-95; # coverage, non-significant
color white, (Chain A) & resi 95-101; # coverage, non-significant
color white, (Chain A) & resi 95-104; # coverage, non-significant
color white, (Chain A) & resi 96-101; # coverage, non-significant
color white, (Chain A) & resi 96-104; # coverage, non-significant
color white, (Chain A) & resi 96-109; # coverage, non-significant
color white, (Chain A) & resi 97-104; # coverage, non-significant
color white, (Chain A) & resi 97-108; # coverage, non-significant
color white, (Chain A) & resi 97-109; # coverage, non-significant
color white, (Chain A) & resi 98-104; # coverage, non-significant
color white, (Chain A) & resi 102-107; # coverage, non-significant
color white, (Chain A) & resi 102-108; # coverage, non-significant
color white, (Chain A) & resi 102-109; # coverage, non-significant
color white, (Chain A) & resi 104-109; # coverage, non-significant
color white, (Chain A) & resi 105-109; # coverage, non-significant
color white, (Chain A) & resi 108-122; # coverage, non-significant
color white, (Chain A) & resi 109-122; # coverage, non-significant
color white, (Chain A) & resi 109-124; # coverage, non-significant
color white, (Chain A) & resi 110-122; # coverage, non-significant
color white, (Chain A) & resi 110-124; # coverage, non-significant
color white, (Chain A) & resi 122-129; # coverage, non-significant
color white, (Chain A) & resi 123-129; # coverage, non-significant
color white, (Chain A) & resi 125-129; # coverage, non-significant
color white, (Chain A) & resi 130-139; # coverage, non-significant
color white, (Chain A) & resi 130-142; # coverage, non-significant
color white, (Chain A) & resi 132-142; # coverage, non-significant
color white, (Chain A) & resi 133-142; # coverage, non-significant
color white, (Chain A) & resi 133-145; # coverage, non-significant
color white, (Chain A) & resi 140-145; # coverage, non-significant
color white, (Chain A) & resi 164-168; # coverage, non-significant
color white, (Chain A) & resi 164-169; # coverage, non-significant
color white, (Chain A) & resi 169-173; # coverage, non-significant
color white, (Chain A) & resi 172-176; # coverage, non-significant
color white, (Chain A) & resi 177-183; # coverage, non-significant
color white, (Chain A) & resi 179-183; # coverage, non-significant
color white, (Chain A) & resi 179-184; # coverage, non-significant
color white, (Chain A) & resi 180-184; # coverage, non-significant
color white, (Chain A) & resi 184-194; # coverage, non-significant
color white, (Chain A) & resi 185-193; # coverage, non-significant
color white, (Chain A) & resi 193-198; # coverage, non-significant
color white, (Chain A) & resi 194-199; # coverage, non-significant
color white, (Chain A) & resi 194-203; # coverage, non-significant
color white, (Chain A) & resi 199-203; # coverage, non-significant
color white, (Chain A) & resi 199-204; # coverage, non-significant
color white, (Chain A) & resi 204-212; # coverage, non-significant
color white, (Chain A) & resi 205-212; # coverage, non-significant
color white, (Chain A) & resi 207-211; # coverage, non-significant
color white, (Chain A) & resi 217-226; # coverage, non-significant
color white, (Chain A) & resi 271-276; # coverage, non-significant
color white, (Chain A) & resi 277-281; # coverage, non-significant
color white, (Chain A) & resi 277-283; # coverage, non-significant
color white, (Chain A) & resi 278-283; # coverage, non-significant
color white, (Chain A) & resi 278-284; # coverage, non-significant
color white, (Chain A) & resi 284-289; # coverage, non-significant
color white, (Chain A) & resi 284-290; # coverage, non-significant
color white, (Chain A) & resi 285-290; # coverage, non-significant
color white, (Chain A) & resi 292-296; # coverage, non-significant
color white, (Chain A) & resi 317-322; # coverage, non-significant
color white, (Chain A) & resi 319-325; # coverage, non-significant
color white, (Chain A) & resi 319-326; # coverage, non-significant
color white, (Chain A) & resi 323-328; # coverage, non-significant
color white, (Chain A) & resi 324-328; # coverage, non-significant
color white, (Chain A) & resi 327-331; # coverage, non-significant
color white, (Chain A) & resi 344-348; # coverage, non-significant
color white, (Chain A) & resi 346-351; # coverage, non-significant
color white, (Chain A) & resi 346-352; # coverage, non-significant
color white, (Chain A) & resi 350-356; # coverage, non-significant
color white, (Chain A) & resi 351-356; # coverage, non-significant
color white, (Chain A) & resi 352-357; # coverage, non-significant
color white, (Chain A) & resi 357-363; # coverage, non-significant
color white, (Chain A) & resi 358-363; # coverage, non-significant
color white, (Chain A) & resi 364-373; # coverage, non-significant
color white, (Chain A) & resi 377-382; # coverage, non-significant
color white, (Chain A) & resi 383-391; # coverage, non-significant
color white, (Chain A) & resi 385-391; # coverage, non-significant
color white, (Chain A) & resi 388-392; # coverage, non-significant
color white, (Chain A) & resi 408-415; # coverage, non-significant
color white, (Chain A) & resi 410-415; # coverage, non-significant
color white, (Chain A) & resi 410-416; # coverage, non-significant
color white, (Chain A) & resi 412-416; # coverage, non-significant
color white, (Chain A) & resi 414-420; # coverage, non-significant
color white, (Chain A) & resi 416-420; # coverage, non-significant
color white, (Chain A) & resi 416-421; # coverage, non-significant
color white, (Chain A) & resi 420-426; # coverage, non-significant
color white, (Chain A) & resi 421-426; # coverage, non-significant
color white, (Chain A) & resi 422-426; # coverage, non-significant
color white, (Chain A) & resi 427-434; # coverage, non-significant
color white, (Chain A) & resi 430-435; # coverage, non-significant
color white, (Chain A) & resi 435-443; # coverage, non-significant
color white, (Chain A) & resi 435-445; # coverage, non-significant
color white, (Chain A) & resi 435-446; # coverage, non-significant
color white, (Chain A) & resi 436-445; # coverage, non-significant
color white, (Chain A) & resi 436-446; # coverage, non-significant
color white, (Chain A) & resi 444-448; # coverage, non-significant
color white, (Chain A) & resi 445-451; # coverage, non-significant
color white, (Chain A) & resi 447-451; # coverage, non-significant
color white, (Chain A) & resi 449-454; # coverage, non-significant
color white, (Chain A) & resi 455-459; # coverage, non-significant
color white, (Chain A) & resi 458-471; # coverage, non-significant
color white, (Chain A) & resi 460-474; # coverage, non-significant
 
color tv_blue, (Chain A) & resi 28-33; # coverage, protected
color tv_blue, (Chain A) & resi 28-36; # coverage, protected
color tv_blue, (Chain A) & resi 28-38; # coverage, protected
color tv_blue, (Chain A) & resi 29-36; # coverage, protected
color tv_blue, (Chain A) & resi 29-38; # coverage, protected
color tv_blue, (Chain A) & resi 30-36; # coverage, protected
color tv_blue, (Chain A) & resi 30-38; # coverage, protected
color tv_blue, (Chain A) & resi 31-36; # coverage, protected
color tv_blue, (Chain A) & resi 31-38; # coverage, protected
color tv_blue, (Chain A) & resi 31-40; # coverage, protected
color tv_blue, (Chain A) & resi 32-38; # coverage, protected
color tv_blue, (Chain A) & resi 37-42; # coverage, protected
color tv_blue, (Chain A) & resi 41-48; # coverage, protected
color tv_blue, (Chain A) & resi 42-48; # coverage, protected
color tv_blue, (Chain A) & resi 43-48; # coverage, protected
color tv_blue, (Chain A) & resi 43-50; # coverage, protected
color tv_blue, (Chain A) & resi 43-59; # coverage, protected
color tv_blue, (Chain A) & resi 49-56; # coverage, protected
color tv_blue, (Chain A) & resi 49-58; # coverage, protected
color tv_blue, (Chain A) & resi 49-59; # coverage, protected
color tv_blue, (Chain A) & resi 51-58; # coverage, protected
color tv_blue, (Chain A) & resi 51-59; # coverage, protected
color tv_blue, (Chain A) & resi 54-59; # coverage, protected
color tv_blue, (Chain A) & resi 59-65; # coverage, protected
color tv_blue, (Chain A) & resi 60-65; # coverage, protected
color tv_blue, (Chain A) & resi 293-297; # coverage, protected
color tv_blue, (Chain A) & resi 298-303; # coverage, protected
color tv_blue, (Chain A) & resi 298-304; # coverage, protected
color tv_blue, (Chain A) & resi 299-304; # coverage, protected
color tv_blue, (Chain A) & resi 304-312; # coverage, protected
 
color tv_red, (Chain A) & resi 10-15; # coverage, deprotected
color tv_red, (Chain A) & resi 11-15; # coverage, deprotected
color tv_red, (Chain A) & resi 16-23; # coverage, deprotected
color tv_red, (Chain A) & resi 24-29; # coverage, deprotected
color tv_red, (Chain A) & resi 66-74; # coverage, deprotected
color tv_red, (Chain A) & resi 66-76; # coverage, deprotected
color tv_red, (Chain A) & resi 67-75; # coverage, deprotected
color tv_red, (Chain A) & resi 68-77; # coverage, deprotected
color tv_red, (Chain A) & resi 68-82; # coverage, deprotected
color tv_red, (Chain A) & resi 69-76; # coverage, deprotected
color tv_red, (Chain A) & resi 71-88; # coverage, deprotected
color tv_red, (Chain A) & resi 109-121; # coverage, deprotected
color tv_red, (Chain A) & resi 133-146; # coverage, deprotected
color tv_red, (Chain A) & resi 143-150; # coverage, deprotected
color tv_red, (Chain A) & resi 145-150; # coverage, deprotected
color tv_red, (Chain A) & resi 146-150; # coverage, deprotected
color tv_red, (Chain A) & resi 154-163; # coverage, deprotected
color tv_red, (Chain A) & resi 156-163; # coverage, deprotected
color tv_red, (Chain A) & resi 204-211; # coverage, deprotected
color tv_red, (Chain A) & resi 213-217; # coverage, deprotected
color tv_red, (Chain A) & resi 217-227; # coverage, deprotected
color tv_red, (Chain A) & resi 218-226; # coverage, deprotected
color tv_red, (Chain A) & resi 218-227; # coverage, deprotected
color tv_red, (Chain A) & resi 239-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-250; # coverage, deprotected
color tv_red, (Chain A) & resi 241-251; # coverage, deprotected
color tv_red, (Chain A) & resi 241-252; # coverage, deprotected
color tv_red, (Chain A) & resi 273-277; # coverage, deprotected
color tv_red, (Chain A) & resi 334-345; # coverage, deprotected
color tv_red, (Chain A) & resi 335-351; # coverage, deprotected
color tv_red, (Chain A) & resi 335-352; # coverage, deprotected
color tv_red, (Chain A) & resi 340-351; # coverage, deprotected
color tv_red, (Chain A) & resi 395-402; # coverage, deprotected
color tv_red, (Chain A) & resi 395-407; # coverage, deprotected
color tv_red, (Chain A) & resi 395-411; # coverage, deprotected
color tv_red, (Chain A) & resi 407-412; # coverage, deprotected
color tv_red, (Chain A) & resi 458-472; # coverage, deprotected
color tv_red, (Chain A) & resi 459-474; # coverage, deprotected
color tv_red, (Chain A) & resi 477-487; # coverage, deprotected
color tv_red, (Chain A) & resi 477-491; # coverage, deprotected
color tv_red, (Chain A) & resi 478-491; # coverage, deprotected
color tv_red, (Chain A) & resi 479-491; # coverage, deprotected
 
 
scene Woods Differential_timepoint_30, store, view=0;
 
# --------------------------------------------------------------------------------------------------------------------------------
# Woods Differential plot data for 5 min timepoint
# --------------------------------------------------------------------------------------------------------------------------------
# Number of non-significant peptides: 123
# Number of deprotected peptides: 38
# Number of protected peptides: 28
 
hide everything, not (Chain A);
 
color gray50, (Chain A); # no coverage
 
color white, (Chain A) & resi 1-5; # coverage, non-significant
color white, (Chain A) & resi 1-8; # coverage, non-significant
color white, (Chain A) & resi 1-9; # coverage, non-significant
color white, (Chain A) & resi 15-19; # coverage, non-significant
color white, (Chain A) & resi 15-23; # coverage, non-significant
color white, (Chain A) & resi 16-24; # coverage, non-significant
color white, (Chain A) & resi 17-23; # coverage, non-significant
color white, (Chain A) & resi 24-29; # coverage, non-significant
color white, (Chain A) & resi 24-30; # coverage, non-significant
color white, (Chain A) & resi 37-42; # coverage, non-significant
color white, (Chain A) & resi 43-59; # coverage, non-significant
color white, (Chain A) & resi 54-59; # coverage, non-significant
color white, (Chain A) & resi 56-61; # coverage, non-significant
color white, (Chain A) & resi 57-62; # coverage, non-significant
color white, (Chain A) & resi 68-74; # coverage, non-significant
color white, (Chain A) & resi 68-77; # coverage, non-significant
color white, (Chain A) & resi 68-82; # coverage, non-significant
color white, (Chain A) & resi 69-76; # coverage, non-significant
color white, (Chain A) & resi 69-77; # coverage, non-significant
color white, (Chain A) & resi 73-77; # coverage, non-significant
color white, (Chain A) & resi 89-94; # coverage, non-significant
color white, (Chain A) & resi 89-95; # coverage, non-significant
color white, (Chain A) & resi 95-104; # coverage, non-significant
color white, (Chain A) & resi 96-101; # coverage, non-significant
color white, (Chain A) & resi 96-104; # coverage, non-significant
color white, (Chain A) & resi 96-109; # coverage, non-significant
color white, (Chain A) & resi 97-104; # coverage, non-significant
color white, (Chain A) & resi 97-108; # coverage, non-significant
color white, (Chain A) & resi 97-109; # coverage, non-significant
color white, (Chain A) & resi 98-104; # coverage, non-significant
color white, (Chain A) & resi 102-107; # coverage, non-significant
color white, (Chain A) & resi 102-108; # coverage, non-significant
color white, (Chain A) & resi 102-109; # coverage, non-significant
color white, (Chain A) & resi 104-109; # coverage, non-significant
color white, (Chain A) & resi 105-109; # coverage, non-significant
color white, (Chain A) & resi 108-122; # coverage, non-significant
color white, (Chain A) & resi 109-121; # coverage, non-significant
color white, (Chain A) & resi 109-122; # coverage, non-significant
color white, (Chain A) & resi 109-124; # coverage, non-significant
color white, (Chain A) & resi 110-122; # coverage, non-significant
color white, (Chain A) & resi 110-124; # coverage, non-significant
color white, (Chain A) & resi 122-129; # coverage, non-significant
color white, (Chain A) & resi 123-129; # coverage, non-significant
color white, (Chain A) & resi 125-129; # coverage, non-significant
color white, (Chain A) & resi 130-139; # coverage, non-significant
color white, (Chain A) & resi 130-142; # coverage, non-significant
color white, (Chain A) & resi 132-142; # coverage, non-significant
color white, (Chain A) & resi 133-142; # coverage, non-significant
color white, (Chain A) & resi 133-145; # coverage, non-significant
color white, (Chain A) & resi 133-146; # coverage, non-significant
color white, (Chain A) & resi 140-145; # coverage, non-significant
color white, (Chain A) & resi 143-150; # coverage, non-significant
color white, (Chain A) & resi 146-150; # coverage, non-significant
color white, (Chain A) & resi 164-169; # coverage, non-significant
color white, (Chain A) & resi 169-173; # coverage, non-significant
color white, (Chain A) & resi 172-176; # coverage, non-significant
color white, (Chain A) & resi 177-183; # coverage, non-significant
color white, (Chain A) & resi 179-183; # coverage, non-significant
color white, (Chain A) & resi 179-184; # coverage, non-significant
color white, (Chain A) & resi 184-194; # coverage, non-significant
color white, (Chain A) & resi 185-193; # coverage, non-significant
color white, (Chain A) & resi 193-198; # coverage, non-significant
color white, (Chain A) & resi 194-199; # coverage, non-significant
color white, (Chain A) & resi 194-203; # coverage, non-significant
color white, (Chain A) & resi 199-203; # coverage, non-significant
color white, (Chain A) & resi 199-204; # coverage, non-significant
color white, (Chain A) & resi 204-211; # coverage, non-significant
color white, (Chain A) & resi 204-212; # coverage, non-significant
color white, (Chain A) & resi 205-212; # coverage, non-significant
color white, (Chain A) & resi 207-211; # coverage, non-significant
color white, (Chain A) & resi 217-226; # coverage, non-significant
color white, (Chain A) & resi 271-276; # coverage, non-significant
color white, (Chain A) & resi 277-281; # coverage, non-significant
color white, (Chain A) & resi 277-283; # coverage, non-significant
color white, (Chain A) & resi 278-283; # coverage, non-significant
color white, (Chain A) & resi 278-284; # coverage, non-significant
color white, (Chain A) & resi 284-289; # coverage, non-significant
color white, (Chain A) & resi 284-290; # coverage, non-significant
color white, (Chain A) & resi 285-290; # coverage, non-significant
color white, (Chain A) & resi 292-296; # coverage, non-significant
color white, (Chain A) & resi 317-322; # coverage, non-significant
color white, (Chain A) & resi 319-325; # coverage, non-significant
color white, (Chain A) & resi 319-326; # coverage, non-significant
color white, (Chain A) & resi 323-328; # coverage, non-significant
color white, (Chain A) & resi 324-328; # coverage, non-significant
color white, (Chain A) & resi 327-331; # coverage, non-significant
color white, (Chain A) & resi 344-348; # coverage, non-significant
color white, (Chain A) & resi 346-351; # coverage, non-significant
color white, (Chain A) & resi 346-352; # coverage, non-significant
color white, (Chain A) & resi 350-356; # coverage, non-significant
color white, (Chain A) & resi 351-356; # coverage, non-significant
color white, (Chain A) & resi 352-357; # coverage, non-significant
color white, (Chain A) & resi 357-363; # coverage, non-significant
color white, (Chain A) & resi 358-363; # coverage, non-significant
color white, (Chain A) & resi 364-373; # coverage, non-significant
color white, (Chain A) & resi 377-382; # coverage, non-significant
color white, (Chain A) & resi 383-391; # coverage, non-significant
color white, (Chain A) & resi 385-391; # coverage, non-significant
color white, (Chain A) & resi 388-392; # coverage, non-significant
color white, (Chain A) & resi 407-412; # coverage, non-significant
color white, (Chain A) & resi 408-415; # coverage, non-significant
color white, (Chain A) & resi 410-415; # coverage, non-significant
color white, (Chain A) & resi 410-416; # coverage, non-significant
color white, (Chain A) & resi 412-416; # coverage, non-significant
color white, (Chain A) & resi 414-420; # coverage, non-significant
color white, (Chain A) & resi 416-420; # coverage, non-significant
color white, (Chain A) & resi 416-421; # coverage, non-significant
color white, (Chain A) & resi 421-426; # coverage, non-significant
color white, (Chain A) & resi 422-426; # coverage, non-significant
color white, (Chain A) & resi 427-434; # coverage, non-significant
color white, (Chain A) & resi 430-435; # coverage, non-significant
color white, (Chain A) & resi 435-443; # coverage, non-significant
color white, (Chain A) & resi 435-445; # coverage, non-significant
color white, (Chain A) & resi 436-445; # coverage, non-significant
color white, (Chain A) & resi 436-446; # coverage, non-significant
color white, (Chain A) & resi 444-448; # coverage, non-significant
color white, (Chain A) & resi 445-451; # coverage, non-significant
color white, (Chain A) & resi 447-451; # coverage, non-significant
color white, (Chain A) & resi 449-454; # coverage, non-significant
color white, (Chain A) & resi 455-459; # coverage, non-significant
color white, (Chain A) & resi 458-471; # coverage, non-significant
color white, (Chain A) & resi 458-472; # coverage, non-significant
color white, (Chain A) & resi 477-487; # coverage, non-significant
 
color tv_blue, (Chain A) & resi 28-33; # coverage, protected
color tv_blue, (Chain A) & resi 28-36; # coverage, protected
color tv_blue, (Chain A) & resi 28-38; # coverage, protected
color tv_blue, (Chain A) & resi 29-36; # coverage, protected
color tv_blue, (Chain A) & resi 29-38; # coverage, protected
color tv_blue, (Chain A) & resi 30-36; # coverage, protected
color tv_blue, (Chain A) & resi 30-38; # coverage, protected
color tv_blue, (Chain A) & resi 31-36; # coverage, protected
color tv_blue, (Chain A) & resi 31-38; # coverage, protected
color tv_blue, (Chain A) & resi 31-40; # coverage, protected
color tv_blue, (Chain A) & resi 32-38; # coverage, protected
color tv_blue, (Chain A) & resi 34-40; # coverage, protected
color tv_blue, (Chain A) & resi 41-48; # coverage, protected
color tv_blue, (Chain A) & resi 42-48; # coverage, protected
color tv_blue, (Chain A) & resi 43-48; # coverage, protected
color tv_blue, (Chain A) & resi 43-50; # coverage, protected
color tv_blue, (Chain A) & resi 49-56; # coverage, protected
color tv_blue, (Chain A) & resi 49-58; # coverage, protected
color tv_blue, (Chain A) & resi 49-59; # coverage, protected
color tv_blue, (Chain A) & resi 51-58; # coverage, protected
color tv_blue, (Chain A) & resi 51-59; # coverage, protected
color tv_blue, (Chain A) & resi 59-65; # coverage, protected
color tv_blue, (Chain A) & resi 60-65; # coverage, protected
color tv_blue, (Chain A) & resi 293-297; # coverage, protected
color tv_blue, (Chain A) & resi 298-303; # coverage, protected
color tv_blue, (Chain A) & resi 298-304; # coverage, protected
color tv_blue, (Chain A) & resi 299-304; # coverage, protected
color tv_blue, (Chain A) & resi 304-312; # coverage, protected
 
color tv_red, (Chain A) & resi 10-15; # coverage, deprotected
color tv_red, (Chain A) & resi 11-15; # coverage, deprotected
color tv_red, (Chain A) & resi 16-23; # coverage, deprotected
color tv_red, (Chain A) & resi 18-23; # coverage, deprotected
color tv_red, (Chain A) & resi 66-74; # coverage, deprotected
color tv_red, (Chain A) & resi 66-76; # coverage, deprotected
color tv_red, (Chain A) & resi 67-75; # coverage, deprotected
color tv_red, (Chain A) & resi 71-88; # coverage, deprotected
color tv_red, (Chain A) & resi 95-101; # coverage, deprotected
color tv_red, (Chain A) & resi 145-150; # coverage, deprotected
color tv_red, (Chain A) & resi 154-163; # coverage, deprotected
color tv_red, (Chain A) & resi 156-163; # coverage, deprotected
color tv_red, (Chain A) & resi 164-168; # coverage, deprotected
color tv_red, (Chain A) & resi 180-184; # coverage, deprotected
color tv_red, (Chain A) & resi 213-217; # coverage, deprotected
color tv_red, (Chain A) & resi 217-227; # coverage, deprotected
color tv_red, (Chain A) & resi 218-226; # coverage, deprotected
color tv_red, (Chain A) & resi 218-227; # coverage, deprotected
color tv_red, (Chain A) & resi 239-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-248; # coverage, deprotected
color tv_red, (Chain A) & resi 241-250; # coverage, deprotected
color tv_red, (Chain A) & resi 241-251; # coverage, deprotected
color tv_red, (Chain A) & resi 241-252; # coverage, deprotected
color tv_red, (Chain A) & resi 273-277; # coverage, deprotected
color tv_red, (Chain A) & resi 334-345; # coverage, deprotected
color tv_red, (Chain A) & resi 335-351; # coverage, deprotected
color tv_red, (Chain A) & resi 335-352; # coverage, deprotected
color tv_red, (Chain A) & resi 340-351; # coverage, deprotected
color tv_red, (Chain A) & resi 395-402; # coverage, deprotected
color tv_red, (Chain A) & resi 395-407; # coverage, deprotected
color tv_red, (Chain A) & resi 395-411; # coverage, deprotected
color tv_red, (Chain A) & resi 420-426; # coverage, deprotected
color tv_red, (Chain A) & resi 435-446; # coverage, deprotected
color tv_red, (Chain A) & resi 459-474; # coverage, deprotected
color tv_red, (Chain A) & resi 460-474; # coverage, deprotected
color tv_red, (Chain A) & resi 477-491; # coverage, deprotected
color tv_red, (Chain A) & resi 478-491; # coverage, deprotected
color tv_red, (Chain A) & resi 479-491; # coverage, deprotected
 
 
scene Woods Differential_timepoint_5, store, view=0;
 
