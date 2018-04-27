### Running the container
Put all the scan images in a directory in your local computer *~/data* (for instance) and run the image in background with the correct [version tag](https://hub.docker.com/r/thubtenrigzin/docker-namsel-ocr/tags):
```
docker run -itd --name namsel -v ~/data:/home/namsel-ocr/data thubtenrigzin/docker-namsel-ocr:[tag] bash
```
### Running the scripts within the container:
#### Preprocessing
Scantaillor will prepare all the images stored in your local directory *~/data*
```
docker exec namsel ./preprocess
```
#### Recognition
##### Pecha format
Namsel will start the recognition based on a default configuration. It uses *~/data/out* directory (the *scantaillored* images). The result file "ocr_output.txt" will be move to your working directory *~/data*
```
docker exec namsel ./pecha
```
##### Book format
Namsel will start the recognition based on a default configuration. It uses *~/data/out* directory (the *scantaillored* images). The result file "ocr_output.txt" will be move to your working directory *~/data*
```
docker exec namsel ./book
```
##### Using your own configuration with parameters
Namsel will start the recognition based on a default configuration. It uses *~/data/out* directory (the *scantaillored* images). The result file "ocr_output.txt" will be move to your working directory *~/data*
```
docker exec namsel ./namsel-ocr [parameter1 parameter2 etc...]
```