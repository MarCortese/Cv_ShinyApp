# Web app to display pet records and keep track of visits, test results, vaccines, etc.
library(shinycssloaders)
library(shinythemes)
library(shiny)
library(httr)
library(httr)


ui<-fluidPage(
  theme = shinytheme("spacelab"),
  tags$head(
    #tags$link(href = "style.css", rel = "stylesheet")
  ),
  
  titlePanel("Marco Cortese",
             windowTitle = "Marco Cortese"),
  
  sidebarLayout(
    sidebarPanel(width = 2,
                 tags$img(src="Profilo.jpg", width=150),
                 HTML(paste0(
                   "<br>",
                   "<table align='center'; style='margin-left:auto; margin-right:auto;'>",
                   "<tr>",
                   "<td style='padding: 5px;'><a href='https://www.facebook.com/marcobrad.patagarrocortese' target='_blank'><i class='fab fa-facebook-square fa-lg'></i></a></td>",
                   "<td style='padding: 5px;'><a href='https://www.twitter.com/cortese_mar' target='_blank'><i class='fab fa-twitter fa-lg'></i></a></td>",
                   "<td style='padding: 5px;'><a href='https://www.linkedin.com/in/marco-cortese-kr23-mi08' target='_blank'><i class='fab fa-linkedin fa-lg'></i></a></td>",
                   "<td style='padding: 5px;'><a href='https://github.com/MarCortese' target='_blank'><i class='fab fa-github fa-lg'></i></a></td>",
                   "</tr>",
                   "</table>",
                   "<br>"),
                   HTML(paste0(
                     "<p style = 'text-align: center;'><small>&copy; - Marco Cortese - &copy;<script>document.write(yyyy);</script></small></p>",
                     "<br>"
                   )
                   )),
                 hr(), 
                 h5("Built with",
                    img(src = "https://www.rstudio.com/wp-content/uploads/2014/04/shiny.png", height = "30px"),
                    "by",
                    img(src = "https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gray.png", height = "30px"),
                    ".")
    ),
    
    mainPanel(width = 10, 
              tabsetPanel(tabPanel(div("Informazioni Generali"),
                                   wellPanel(h1(),
                                             h4("Nome:"),
                                             h4("Marco Cortese"),
                                             hr(),
                                             hr(),
                                             h4("Luogo e Data di nascita:"),
                                             h4("Crotone 23 Ottobre 1990"),
                                             hr(),
                                             h4("Residente:"),
                                             h4("Viale Caterina da Forlì 58 - Milano 20146"),
                                             hr(),
                                             h4("Email:"),
                                             h4("marcocortese.stat@gmail.com"),
                                             hr(),
                                             h4("Numero:"),
                                             h4("3282674828"),
                                             HTML(paste0(
                                               "<br>",
                                               "<table align='center'; style='margin-left:auto; margin-right:auto;'>",
                                               "<tr>",
                                               "<td style='padding: 5px;'><a href='https://www.facebook.com/marcobrad.patagarrocortese' target='_blank'><i class='fab fa-facebook-square fa-lg'></i></a></td>",
                                               "<td style='padding: 5px;'><a href='https://www.twitter.com/cortese_mar' target='_blank'><i class='fab fa-twitter fa-lg'></i></a></td>",
                                               "<td style='padding: 5px;'><a href='https://www.linkedin.com/in/marco-cortese-kr23-mi08' target='_blank'><i class='fab fa-linkedin fa-lg'></i></a></td>",
                                               "<td style='padding: 5px;'><a href='https://github.com/MarCortese' target='_blank'><i class='fab fa-github fa-lg'></i></a></td>",
                                               "</tr>",
                                               "</table>",
                                               "<br>"),
                                               HTML(paste0(
                                                 "<p style = 'text-align: center;'><small>&copy; - Marco Cortese - &copy;<script>document.write(yyyy);</script></small></p>",
                                                 "<br>"
                                               )
                                               ))
                                   )
              ),
              tabPanel(div("Formazione"),
                       wellPanel(
                         HTML('<center><img src="logo_unical.png" width="200"></center>'),
                         h2(),
                         HTML('<center><img src="unical.jpg" width="200"></center>'),
                         hr(),
                         h4("Laurea Magistrale",align="center"),
                         h4("Statistica ed Informatica per le Decisioni e le Analisi di Mercato Votazione 110/110"),
                         h2(),
                         h4("Tesi di Laurea", align="center"),
                         h4("Un'analisi statistica per la valutazione dell'efficacia farmacologica nella gestione del dolore muscolo scheletrico in pazienti anziani."),
                         h3(),
                         h4("È stato effettuato uno studio per la valutazione dell'efficacia del farmaco Tapentadolo nella riduzione del dolore nei pazienti ospiti della struttura analizzata. Sono stati utilizzati test non parametrici a contorno della tecnica di regressioni per dati longitudinali G.E.E.", align="justify"),
                         helpText( a("Consultabile al seguente link",     href="https://www.europeanreview.org/article/19374")),
                         hr(),
                         h4("Laurea Triennale",align="center"),
                         h4("Statistica per le Aziende e le Assicurazioni, Gestione ed Analisi dei dati Votazione 97/110"),
                         h2(),
                         h4("Tesi di Laurea",align="center"),
                         h4("Indice di borsa Comit. Creazione, caratteristiche ed evoluzione del Comit Globale.", align="center"),
                         h2(),
                         h4("Serie Storica sull'indice di borsa Comit Globale creato e gestito dalla banca Intesa San Paolo. L'analisi si è concentrata nella creazione di una serie storica mediante l'approccio Box-Jenkins sui valori registrati quotidianamente dall'anno di generazione di tale indice di borsa.", align="justify"),
                         h2()
                       )
              )
              ,
              tabPanel(div("Esperienze lavorative"),
                       wellPanel(
                         hr(),
                         h4("DATA SCIENTIST IT CONSULTANT– Healthy Reply"),
                         h5("09/2019-Presente"),
                         h1(),
                         img(src="https://www.technologyhub.it/public/uploads/sites/7/Healthy-Reply-LOGO-RGB.png",height = "40px"),
                         h4(),
                         h4("Analisi ed elaborazione dati orientati alla creazione di report per la gestione delle risorse del cliente.",align="justify"),
                         h4("Speaker eventi:"),
                         h4("•	Meetup PORTARE IL ML IN PRODUZIONE CON SHINY presso TAG Cosenza"),
                         h4("•	ML: INTRODUCTION AND FIELDS OF APPLICATION presso CSI Piemonte "),
                         hr(),
                         h4("DATA SCIENTIST - Integris S.P.A"),
                         h5("01/2018-08/2019"),
                         h1(),
                         tags$img(src="logo-integris.png", width=100),
                         h4(),
                         h4("Data Scientist, programmatore in ambiente R. Compito: Analisi dei requisiti iniziali del cliente e lo studio delle metodologie e tecniche per analizzare e ottenere l’output richiesto. Sviluppo ed esecuzione di algoritmi per l’analisi statistica in campo predittivo in ambiente R. Completamento della progettazione e analisi della reportistica con creazione di dashboard interattive e di interfacce grafiche per l’utente evolute attraverso i tools Qlik Sense e Power Bi, o in alternativa creazione di web app utilizzando package Shiny. Il tutto rispettando i requisiti di funzionalità, di tempo e di costi imposti dal cliente. Analisi del mercato e dei competitors, creazione e sviluppo algoritmi in ambiente R per analisi eventi sportivi.",align="justify"),
                       )
              ),
              tabPanel(div("Attestati"),
                       wellPanel(h1(),
                                 h4("Inglese"),
                                 h2(),
                                 h5("•	B1 Cambridge"),
                                 h2(),
                                 h4("Corsi online seguiti"),
                                 h2(),
                                 h5("•	Guida completa al Machine Learning con R"),
                                 h5("•	Manipolazione dati avanzata con R"),
                                 h5("•	Corso completo di Data Science con R"),
                                 h5("•	Training Sets, Test Sets, R and GGplot"),
                                 h5("•	Polynomial Regression"),
                                 h5("•	R shiny Interactive web Apps Netx level Data visualization"),
                                 h5("•	Python for Beginners"),
                                 h5("•	The top 5 Machine Learning libraries in Python")
                       )
              ),
              tabPanel("Skills",
                       wellPanel(
                         h5(),
                         h3("Competenze Tecniche"),
                         h2(),
                         fluidRow(
                           column(4,
                                  h5("R"),
                                  h1(),
                                  h5("Shiny App"),
                                  h1(),
                                  h5("Knime"),
                                  h1(),
                                  h5("Qlik Sense"),
                                  h1(),
                                  h5("PowerBi")
                           ),
                           column(4,
                                  h1(),
                                  tags$img(src="RStudio-Logo-Blue-Gradient.png",width=80),
                                  tags$img(src="shinyLogo.png",width=50),
                                  tags$img(src="knime.png",width=50),
                                  tags$img(src="qlik-sense-logo.png",width=80),
                                  tags$img(src="Power BI logo.jpg",width=100)
                           )
                         ),
                         h3("Competenze Personali"),
                         h2(),
                         h5("Team Work"),
                         h1(),
                         h5("Versatilità"),
                         h1(),
                         h5("Puntualità"),
                         h1(),
                         h5("Precisione"),
                         h1(),
                         h5("Cura dei dettagli"),
                         h1(),
                         h5("Motivazione")
                       )
              ),
              tabPanel("Ulteriori informazioni",
                       wellPanel(
                         h2(),
                         HTML('<center><img src="Marco.jpg" width="250"></center>'),
                         h2(),  
                         h4("Sono una persona semplice e sincera. Ho buone capacità di lavoro in gruppo e buona esperienza nella gestione di progetti. Versatile e con ottima capacità di sintesi. Sono una persona estremamente puntuale, rispettoso di ogni scadenza e con elevata attenzione ai dettagli, non lascio nulla al caso e non mi fermo mai al minimo indispensabile. Sono socievole e disponibile. Amo mettermi in gioco e dimostrare le mie capacità. Cerco sempre di migliorarmi e di apprendere sempre cose nuove per una crescita personale e professionale. Il mio obiettivo è diventare un Data Scientist completo in grado di seguire il dato in tutte le sue forme ed estrapolare le informazioni e i significati più nascosti.", align="justify"),
                         hr(),
                         h4("Seguo gli sport, con particolare attenzione verso il calcio, ho praticato vela per 4 anni, sono appassionato di film e musica, mi diletto con le percussioni acustiche.",align="justify")
                         
                       )
              )
              )#tabset
    )#main
  )#side
)#ui

server <- function(input, output) {}
shinyApp(ui = ui, server = server)


