### Running the container
Put all the scan images in a directory in your local computer *~/data* (for instance) and run the image in background with the correct [version tag](https://hub.docker.com/r/thubtenrigzin/docker-namsel-ocr/tags):
```
docker run -itd --name namsel -v ~/data:/home/namsel-ocr/data thubtenrigzin/docker-namsel-ocr:[tag] bash
```
### Running the scripts within the container:
#### Preprocessing
Scantaillor will prepare all the images stored in your local directory *~/data*.

It is possible to add optionaly the threshold value.
```
docker exec namsel ./preprocess [threshold value]
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

#### Automatising the recognition with the preprocess included
An all in one button for the book and pecha recognition.

The threshold preprocess value can be optionaly add as a parameter.

For the book recognition:
```
docker exec namsel ./1book [threshold value]
```

And for the Pecha recognition:
```
docker exec namsel ./1pecha [threshold value]
```

#### Sources of docker-namsel-ocr
Please refer to [namsel-ocr](https://github.com/thubtenrigzin/namsel-ocr) repository on Github for the source of the base built Docker image.

All the Docker source will take place on [Docker-namsel-ocr](https://github.com/thubtenrigzin/docker-namsel-ocr) repository on Github.

### Realease notes:
#### 02 tag
- add an "all in one button" for the book and pecha recognition, including the preprocessing stage
- add the threshold parameter as an option for the preprocess
- correcting an issue in book script file letting the book recognition work properly

#### 01 tag
First release of the project
