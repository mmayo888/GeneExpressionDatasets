# Datasets
Source: https://www.ncbi.nlm.nih.gov/sites/GDSbrowser



## Classification
Class prediction datasets used in
Arnav Kapur, Kshitij Marwah and Gil Alterovitz. Gene expression prediction using low-rank matrix completion. BMC Bioinformatics 2016, 17:243.

Datasets | GEO Dataset ID | #Examples | #Features | #Classes | Citation
---------|----------------|-----------|-----------|----------|---------
lung     | GDS3257        | 107 | 22283| 2 (49,58)|Landi MT, Dracheva T, Rotunno M, Figueroa JD et al. Gene expression signature of cigarette smoking and its role in lung adenocarcinoma development and survival. PLoS One 2008 Feb 20;3(2):e1651. PMID: 18297132
myelo    | GDS3795        | 200 | 54675 | 2 (17,183) |Pellagatti A, Cazzola M, Giagounidis A, Perry J et al. Deregulated gene expression pathways in myelodysplastic syndrome hematopoietic stem cells. Leukemia 2010 Apr;24(4):756-64.
pulm     | GDS4549        | 116 | 33297 | 4 (45,22,17,32) |Mura M, Anraku M, Yun Z, McRae K et al. Gene expression profiling in the lungs of patients with pulmonary hypertension associated with pulmonary fibrosis. Chest 2012 Mar;141(3):661-73.
pulm2    | GDS4549        | 84  | 28869 | 3 (45,22,17)| note: same as above but with validation examples and 100% missing features removed
panc     | GDS4103        | 78 | 54675 | 2 (39,39) |Badea L, Herlea V, Dima SO, Dumitrascu T et al. Combined gene expression analysis of whole-tissue and microdissected pancreatic ductal adenocarcinoma identifies genes specifically overexpressed in tumor epithelia. Hepatogastroenterology 2008 Nov-Dec;55(88):2016-27. PMID: 19260470
psor     | GDS4600        | 170 | 54675 | 2 (85,85) |Suárez-Fariñas M, Li K, Fuentes-Duculan J, Hayden K et al. Expanding the psoriasis disease profile: interrogation of the skin and serum of patients with moderate-to-severe psoriasis. J Invest Dermatol 2012 Nov;132(11):2552-64. PMID: 22763790

## Classification Experiment Results

Classifier: Bayesian network with at most 5 parents per node, all other settings default in weka 3.8.0 monolithic version

Experiment: 10x10 Stratified Cross Validation

Dataset | AUC | StdDev
--------|-----|-------
lung subset 1|0.99|0.03
lung subset 2|1.00|0.00
myelo subset 1|0.77|0.20
myelo subset 2|0.74|0.22
pulm2 subset 1|0.97|0.05
pulm2 subset 2|0.96|0.08
panc subset 1|0.91|0.11
panc subset 2|0.86|0.14
psor subset 1|0.97|0.05
psor subset 2|0.98|0.04

