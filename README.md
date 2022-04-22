# G4ALL_crosstalk

### Data Collection
./data/pdf_source/  -  
This folder in the repo contains source pdf files.

### Preprocessing  
./src/pdf_struct_v3.R - use this to scrape and structure each pdf file as a dataframe.
(The output csv's are located in ./data/csv_out1/ as doc*.csv)
./src/pdf_csvcombine_v2.R - use this to combine the dataframe contents of the pdfs into a data "store".
(The output csv is located in ./data/csv_out1/ as docall10.csv)

### Feature Extraction
./src/nlp4edge_autoplotsave_v4.R - use this to extract SDG, continent, sample country, and sentiment features for each document dataframe.  
(The output csvs's are located in ./data/csv_out1/)  

./src/create_edge_list_fulldoc_v4.ipynb - use this to extract relationships between SDGs from each document  
(The output csvs's are located in ./data/csv_out1/my_edge*.csv)  

./src/lists_csvcombine_v2.R - use this to combine the extracted features into single csvs for use in the graph.  
(The output csvs's are located in ./data/csv_out2/)  

### Tigergraph Studio  
./tgstudio/export_exp5_908070754.tar - use this from a demonstratable working graph based on the above with some installed queries.  

Tigergraph Studio was used to design the schema, import and associate the data to the vertices and edges     
Python notebook ./src/query_exp5_v2.ipynb was used to explore the graph, and develop and install queries  

(export_exp1* and export_exp3* are visual examples of alternate schema designs)  

Step-by-step instructions to be provided shortly here
