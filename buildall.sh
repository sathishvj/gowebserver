#!/bin/bash

echo "Building ..."
GOOS=darwin	GOARCH=386 go build -o gowebserver_darwin_386 	
GOOS=darwin	GOARCH=amd64 go build -o gowebserver_darwin_amd64 
GOOS=linux	GOARCH=386 go build -o gowebserver_linux_386 
GOOS=linux	GOARCH=amd64 go build -o gowebserver_linux_amd64 
GOOS=windows	GOARCH=386 go build -o gowebserver_windows_386.exe
GOOS=windows	GOARCH=amd64 go build -o gowebserver_windows_amd64.exe

#GOOS=darwin	GOARCH=arm go build -o gowebserver_darwin_arm 
#GOOS=darwin	GOARCH=arm64 go build -o gowebserver_darwin_arm64 
#GOOS=linux	GOARCH=arm go build -o gowebserver_linux_arm 
#GOOS=linux	GOARCH=arm64 go build -o gowebserver_linux_arm64 
#GOOS=freebsd	GOARCH=386 go build -o gowebserver_freebsd_386 
#GOOS=freebsd	GOARCH=amd64 go build -o gowebserver_freebsd_amd64 
#GOOS=netbsd	GOARCH=386 go build -o gowebserver_netbsd_386 
#GOOS=netbsd	GOARCH=amd64 go build -o gowebserver_netbsd_amd64 
#GOOS=openbsd	GOARCH=386 go build -o gowebserver_openbsd_386 
#GOOS=openbsd	GOARCH=amd64 go build -o gowebserver_openbsd_amd64 
#GOOS=freebsd	GOARCH=arm go build -o gowebserver_freebsd_arm 
#GOOS=netbsd	GOARCH=arm go build -o gowebserver_netbsd_arm 
#GOOS=openbsd	GOARCH=arm go build -o gowebserver_openbsd_arm 
#GOOS=plan9	GOARCH=386 go build -o gowebserver_plan9_386 
#GOOS=plan9	GOARCH=amd64 go build -o gowebserver_plan9_amd64 
#GOOS=dragonfly	GOARCH=amd64 go build -o gowebserver_dragonfly_amd64 
#GOOS=linux	GOARCH=ppc64 go build -o gowebserver_linux_ppc64 
#GOOS=linux	GOARCH=ppc64le go build -o gowebserver_linux_ppc64le 
#GOOS=linux	GOARCH=mips64 go build -o gowebserver_linux_mips64 
#GOOS=linux	GOARCH=mips64le go build -o gowebserver_linux_mips64le 
#GOOS=solaris	GOARCH=amd64 go build -o gowebserver_solaris_amd64 
echo "Done."
