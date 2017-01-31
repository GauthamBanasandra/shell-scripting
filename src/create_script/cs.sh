#!/usr/bin/env bash
# This script creates a new bash script by setting appropriate permissions.

# Check if the argument was specified.
if [[ ! $1 ]]; then
    echo "filename is required"
    exit 1
fi

script_name=$1
bin_dir="bin"
file_name="${bin_dir}/${script_name}"

# Check if the file exists by using -e option in the if statement.
if [[ -e ${file_name} ]]; then
    echo "${file_name} already exists"
    exit 1
fi

# Check if the bin directory exists by using -d option in the if statement.
if [[ ! -d ${bin_dir} ]]; then
	# Create the bin directory if it doesn't exist.
    if mkdir ${bin_dir}; then
        echo "${bin_dir} created"
	else
		echo "unable to create ${bin_dir}"
		exit 1
    fi
fi

# Add shebang line to the newly created script.
echo "#!/usr/bin/env bash" > "${file_name}"
# Set the executable permission for the user.
chmod u+x "${file_name}"
# Open the script in the nano editor.
nano "${file_name}"