# batchConfig
Prepare job files in HPC.
The script `batchConfig` use the information in `json` and `tsv` file. Then those information replaces the placeholder in the template file to generate the scripts for HPC.

# Install
`batchConfig` is a Perl 6 script, in order to run it, the Perl 6 intepreter should be installed first.
[Install Perl 6 interpreter](https://rakudo.org/files/star/source).


# Usage
## Prepare the template
Write the template, then use `{{variable_name}}` to define the variable in template.

## Prepare the `config.json`
```
{
    variable1_name: "variable1_value",
    variable1_name: "variable1_value",
}
```
Also, the command, `batchConfig -c bar.template` will produce a json file `config.temp.json` with all the variables need to be replace in template and empty value.

## Prepare the `config.tsv`
```
variable1_name  variable2_name
variable1_value1    variable2_value1
variable1_value2    variable2_value2
```

## Generate Scripts
```
batchConfig -j="config.json" -t="config.tsv" -o="output_dir" template.txt
```
The script will create a fold names `output_dir` and the generated scripts will be there.
