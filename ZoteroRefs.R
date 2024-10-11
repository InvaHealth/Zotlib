## Access a specific subset of your local Zotero database
## (ensure Zotero desktop app is closed or code will not be able to access the database)

remotes::install_github("FRBCesab/zoteror")
library(zoteror)

zotlib <- get_zotero_data(path = "~/Zotero")
str(zotlib)
head(zotlib)

table(zotlib$group)

InvaHzot <- subset(zotlib, group == 'InvaHealth')
head(InvaHzot)
table(InvaHzot$collection)

InvaHDBzot <- subset(InvaHzot, collection == "Paper database WoS")
dim(InvaHDBzot)
str(InvaHDBzot)

## article DOIs
InvaHDBzot$doi

