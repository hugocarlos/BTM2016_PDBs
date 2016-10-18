from modeller import *

env = environ()
aln = alignment(env)
mdl = model(env, file='3IEC', model_segment=('FIRST:E','LAST:E'))
aln.append_model(mdl, align_codes='3IECE', atom_files='3IEC.pdb')
aln.append(file='Western_EastAsian.ali', align_codes='EACagA')
aln.align2d()
aln.write(file='CagAs.ali', alignment_format='PIR')
aln.write(file='CagAs.pap', alignment_format='PAP')
