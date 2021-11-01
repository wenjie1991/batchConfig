# batchConfig
Prepare batch of bash scripts.

`batchConfig` generate scripts by useing the information in `json` and `tsv` files to replace the placeholder in the template file.

# Install
`batchConfig` is a Raku script, in order to run it, the Raku intepreter should be installed first.
[Install Raku interpreter](https://rakudo.org/).

Install the dependances:
```bash
zef install Template::Mustache JSON::Hjson CSV::Parser
```

# Usage
## Prepare the template
Create the template, then use `{{variable_name}}` to write the variable need to replace in a [Mustache template manner](https://mustache.github.io/).

## Example
Prepare the `config.json`
```
{
    variable1_name: "variable1_value",
    variable1_name: "variable1_value",
}
```
`batchConfig -c bar.template` will create a `json` file `config.temp.json` as a template with all the variables need to be replace in `bar.template`.

Prepare the `config.tsv`
```
job_name  variable2_name
variable1_value1    variable2_value1
variable1_value2    variable2_value2
```
Each row correspond to one script. The colnames `job_name` is special, since it will be the name of the new file.

Generate Scripts
```
batchConfig -j="config.json" -t="config.tsv" -o="output_dir" template.txt
```
The script will create a fold named `output_dir` contained the output files.
