#!/usr/bin/env bash

echo -n "Please enter your AWS Account number: "
read AWS_ACCOUNT

echo "AWS Account number is: $AWS_ACCOUNT"

cp ./tpl/TerraformBuilderInlinePolicy.json .
cp ./tpl/TerraformBuilderPolicy.json .

sed "s/AWS_ACCOUNT/$AWS_ACCOUNT/g" tpl/TerraformBuilderInlinePolicy.json > TerraformBuilderInlinePolicy.json
cp tpl/TerraformBuilderPolicy.json  TerraformBuilderPolicy.json
