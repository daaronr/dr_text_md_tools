import os
import subprocess
import argparse

# Function to find and convert files
def find_and_convert_files(directory):
    print(f"Searching in directory: {directory}")
    for root, _, files in os.walk(directory):
        for file in files:
            print(f"Checking file: {file}")
            if file.endswith(('.docx', '.tex', '.ppt', '.pptx')):
                input_file_path = os.path.join(root, file)
                output_file_path = os.path.splitext(input_file_path)[0] + '.md'
                command = f'pandoc -s "{input_file_path}" -t markdown -o "{output_file_path}"'
                try:
                    subprocess.run(command, shell=True, check=True)
                    print(f"Converted: {input_file_path} -> {output_file_path}")
                except subprocess.CalledProcessError as error:
                    print(f"Error during conversion: {input_file_path}")
                    print(f"Error message: {error}")

# Main function
def main():
    parser = argparse.ArgumentParser(description='Convert files to Markdown format.')
    parser.add_argument('directory', type=str, help='The directory to search for files')
    args = parser.parse_args()

    find_and_convert_files(args.directory)

if __name__ == '__main__':
    main()

