# Code to compare the protein complexes PAR1-westernCagA and AMPK-PKI

# Retrieve the PAR1-westernCagA structure
fetch 3IEC
# Hide everything
hide everything
# Show the cartoon representation
show cartoon
# Selecting chains A and E and renaming them
select PAR1, 3IEC and chain A
select westernCagA, 3IEC and chain E
hide everything
show cartoon, PAR1
show cartoon, westernCagA

# Changing colors
color gray60, PAR1
color yellow, westernCagA

# Opening 4WB5
fetch 4WB5
hide everything, 4WB5
select AMPK, 4WB5 and chain A
select PKI, 4WB5 and chain I
show cartoon, AMPK
show cartoon, PKI
color gray80, AMPK
color green, PKI

# Aligning 4WB5 to PAR1
align 4WB5, PAR1
hide everything, AMPK

# Re-orienting the structure
orient

# Saving the structure of PAR1
save PAR1_only.pdb, PAR1

# Reopening PAR1, alone
load PAR1_only.pdb
align PAR1_only, PAR1
color gray60, PAR1_only
hide everything, PAR1_only

# Hiding PAR1
hide everything, PAR1

# Showing surface of PAR1_only
show surface, PAR1_only

# Changing the background color
bg_color white

# Saving the PNG file
png surface_PKI_CagA.png



