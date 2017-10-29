docker build -t yyqian/ubuntu .
docker rmi $(docker images -f "dangling=true" -q)
docker run -it --rm -v d:/:/mnt/d yyqian/ubuntu bash
