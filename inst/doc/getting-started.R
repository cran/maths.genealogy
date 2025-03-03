## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library("maths.genealogy")

## ----eval=FALSE---------------------------------------------------------------
# search_id("aslett")
# #>       id             name                        university year
# #> 1 171971    Aslett, Louis           Trinity College, Dublin 2012
# #> 2 164179    Haslett, John
# #> 3 164818 Haslett, Stephen Victoria University of Wellington 1986
# #> 4  57304 Laslett, Geofrey    Australian National University 1975

## ----eval=FALSE---------------------------------------------------------------
# search_id("^aslett$", "^l")
# #>       id          name              university year
# #> 1 171971 Aslett, Louis Trinity College, Dublin 2012

## ----eval=FALSE---------------------------------------------------------------
# g <- get_genealogy(171971)
# #> ✔ Connecting to geneagrapher-core WebSocket server [541ms]
# #> ✔ Sending query [20ms]
# #> ✔ 🎓 Full genealogy retrieved [1.5s]

## ----echo=FALSE---------------------------------------------------------------
g <- readRDS("171971.rds")

## -----------------------------------------------------------------------------
plot_grviz(g)

## ----eval=FALSE---------------------------------------------------------------
# plot_grviz(g, "aslett-tree.pdf")

## ----out.width="100%",fig.width=5,fig.dpi=250---------------------------------
plot_gg(g)

## ----out.width="100%",fig.width=7,fig.height=4,fig.dpi=250--------------------
plot_gg(g, max_anc = 11)

## ----eval=FALSE---------------------------------------------------------------
# g <- get_genealogy(c(171971, 108465, 175763, 191788, 169213))
# #> ✔ Connecting to geneagrapher-core WebSocket server [558ms]
# #> ✔ Sending query [33ms]
# #> ✔ 🎓 Full genealogy retrieved [8.5s]

## ----echo=FALSE---------------------------------------------------------------
g <- readRDS("171971-108465-175763-191788-169213.rds")

## -----------------------------------------------------------------------------
plot_grviz(g)

## ----out.width="100%",fig.width=6,fig.height=3,fig.dpi=250--------------------
plot_gg_path(g)

## ----out.width="100%",fig.width=6,fig.height=3,fig.dpi=250--------------------
plot_gg_path(g, id1 = 175763, id2 = 191788)

## ----out.width="100%",fig.width=6,fig.height=3,fig.dpi=250--------------------
plot_gg_path(g, id1 = 169213)

## ----out.width="100%",fig.width=6,fig.height=3,fig.dpi=250--------------------
plot_gg_path(g, id1 = 169213, expand = 0.25)

