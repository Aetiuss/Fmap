#!/bin/sh

while getopts h: flag
do 
	case "${flag}" in 
		h) host=${OPTARG};; 
	esac done

nmap -sT -p- -T4 -Pn $host | tee pt_recon

grep -oP "[0-9]+?(?=\/)" pt_recon > pt_tmp
tr '\n' , <pt_tmp > pt

rm pt_recon 

cat pt
